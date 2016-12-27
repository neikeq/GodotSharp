#include "bindings_generator.h"

#if defined(TOOLS_ENABLED) && defined(DEBUG_METHODS_ENABLED)

#include "globals.h"
#include "io/compression.h"
#include "os/dir_access.h"
#include "os/file_access.h"
#include "os/os.h"
#include "tools/doc/doc_data.h"
#include "tools/editor/editor_help.h"

#include "csharp_project.h"
#include "net_solution.h"
#include "path_utils.h"
#include "string_format.h"
#include "../bindings/cs_compressed.h"
#include "../godotsharp_defs.h"
#include "../mono_wrapper/gd_mono_marshal.h"

#define CS_INDENT "    "

#define INDENT1 CS_INDENT
#define INDENT2 CS_INDENT CS_INDENT
#define INDENT3 CS_INDENT CS_INDENT CS_INDENT
#define INDENT4 CS_INDENT CS_INDENT CS_INDENT CS_INDENT
#define INDENT5 CS_INDENT CS_INDENT CS_INDENT CS_INDENT CS_INDENT
#define INDENT6 CS_INDENT CS_INDENT CS_INDENT CS_INDENT CS_INDENT CS_INDENT

#define MEMBER_BEGIN "\n" INDENT2

#define OPEN_BLOCK "{\n"
#define CLOSE_BLOCK "}\n"

#define OPEN_BLOCK2 INDENT2 OPEN_BLOCK
#define OPEN_BLOCK3 INDENT3 OPEN_BLOCK
#define OPEN_BLOCK4 INDENT4 OPEN_BLOCK
#define OPEN_BLOCK5 INDENT5 OPEN_BLOCK
#define OPEN_BLOCK2I OPEN_BLOCK2 INDENT3
#define OPEN_BLOCK3I OPEN_BLOCK3 INDENT4
#define OPEN_BLOCK4I OPEN_BLOCK4 INDENT5
#define OPEN_BLOCK5I OPEN_BLOCK5 INDENT6
#define CLOSE_BLOCK2 INDENT2 CLOSE_BLOCK
#define CLOSE_BLOCK3 INDENT3 CLOSE_BLOCK
#define CLOSE_BLOCK4 INDENT4 CLOSE_BLOCK
#define CLOSE_BLOCK5 INDENT5 CLOSE_BLOCK

#define internal_methods_class "NativeCalls"
#define native_name_field "nativeName"
#define memory_own_field "memoryOwn"
#define method_bind_param "method"
#define instance_param "ptr"
#define static_ptr_getter "GetPtr"
#define singleton_field "instance"
#define singleton_property "Instance"

#define glue_header_file "glue_header.inc"
#define icall_prefix "godot_icall_"
#define singleton_icall_suffix "_get_singleton"
#define method_bind_provider icall_prefix "TypeDB_get_method"
#define ptrcall_args_var "call_args"
#define ret_var "ret"
#define object_ctor_macro "GODOTSHARP_INSTANCE_OBJECT"
#define ref_dtor_macro "GODOTSHARP_DISPOSE_REFERENCE"

#define utils_namespace "GDMonoUtils"
#define tie_lifetime_method utils_namespace "::tie_managed_to_unmanaged"
#define gdobject_to_managed_method utils_namespace "::unmanaged_get_managed"

#define marshalling_namespace "GDMonoMarshal"
#define variant_c_in marshalling_namespace "::mono_object_to_variant"
#define variant_c_out marshalling_namespace "::variant_to_mono_object"
#define string_c_in marshalling_namespace "::mono_string_to_godot"
#define string_c_out marshalling_namespace "::mono_string_from_godot"
#define array_c_in "mono_array_to_"
#define array_c_out "_to_mono_array"
#define dictionary_c_in "mono_object_to_Dictionary"
#define dictionary_c_out "Dictionary_to_mono_object"

static bool is_csharp_keyword(const String& p_name)
{
	return
		// Reserved keywords

		p_name == "abstract" || p_name == "as" || p_name == "base" || p_name == "bool" ||
		p_name == "break" || p_name == "byte" || p_name == "case" || p_name == "catch" ||
		p_name == "char" || p_name == "checked" || p_name == "class" || p_name == "const" ||
		p_name == "continue" || p_name == "decimal" || p_name == "default" || p_name == "delegate" ||
		p_name == "do" || p_name == "double" || p_name == "else" || p_name == "enum" ||
		p_name == "event" || p_name == "explicit" || p_name == "extern" || p_name == "false" ||
		p_name == "finally" || p_name == "fixed" || p_name == "float" || p_name == "for" ||
		p_name == "forech" || p_name == "goto" || p_name == "if" || p_name == "implicit" ||
		p_name == "in" || p_name == "int" || p_name == "interface" || p_name == "internal" ||
		p_name == "is" || p_name == "lock" || p_name == "long" || p_name == "namespace" ||
		p_name == "new" || p_name == "null" || p_name == "object" || p_name == "operator" ||
		p_name == "out" || p_name == "override" || p_name == "params" || p_name == "private" ||
		p_name == "protected" || p_name == "public" || p_name == "readonly" || p_name == "ref" ||
		p_name == "return" || p_name == "sbyte" || p_name == "sealed" || p_name == "short" ||
		p_name == "sizeof" || p_name == "stackalloc" || p_name == "static" || p_name == "string" ||
		p_name == "struct" || p_name == "switch" || p_name == "this" || p_name == "throw" ||
		p_name == "true" || p_name == "try" || p_name == "typeof" || p_name == "uint" ||p_name == "ulong" ||
		p_name == "unchecked" || p_name == "unsafe" || p_name == "ushort" || p_name == "using" ||
		p_name == "virtual" || p_name == "volatile" || p_name == "void" || p_name == "while"

		||

		// Let's include contextual keywords too, just in case..

		p_name == "add" || p_name == "ascending" || p_name == "by" || p_name == "descending" ||
		p_name == "dynamic" || p_name == "equals" || p_name == "from" || p_name == "get" ||
		p_name == "global" || p_name == "group" || p_name == "in" || p_name == "into" ||
		p_name == "join" || p_name == "let" || p_name == "on" || p_name == "orderby" ||
		p_name == "partial" || p_name == "remove" || p_name == "select" || p_name == "set" ||
		p_name == "value" || p_name == "var" || p_name == "where" || p_name == "yield";
}

static bool is_creatable_type(const String& p_type)
{
	return p_type == "StreamPeerSSL" || p_type == "StreamPeerTCP" || p_type == "TCP_Server" || p_type == "PacketPeerUDP";
}

static bool is_singleton_black_listed(const String &p_type)
{
	return p_type == "IP_Unix" || p_type == "InputDefault" || p_type == "AudioServerSW" || p_type == "PhysicsServerSW" ||
			p_type == "Physics2DServerSW" || p_type == "SpatialSoundServerSW" || p_type == "SpatialSound2DServerSW";
}

inline static String escape_csharp_keyword(const String& p_name)
{
	return is_csharp_keyword(p_name) ? "@" + p_name : p_name;
}

void BindingsGenerator::generate_header_icalls()
{
	custom_icalls.clear();

	custom_icalls.push_back(InternalCall(method_bind_provider, "IntPtr", "string type, string method"));

	custom_icalls.push_back(InternalCall(icall_prefix "Image_Ctor", "IntPtr"));
	custom_icalls.push_back(InternalCall(icall_prefix "Image_Ctor_2", "IntPtr", "int width, int height, bool mipmaps, int format"));
	custom_icalls.push_back(InternalCall(icall_prefix "Image_Dtor", "IntPtr", "IntPtr ptr"));

	custom_icalls.push_back(InternalCall(icall_prefix "NodePath_Ctor", "IntPtr", "string path"));
	custom_icalls.push_back(InternalCall(icall_prefix "NodePath_Dtor", "IntPtr", "IntPtr ptr"));
	custom_icalls.push_back(InternalCall(icall_prefix "NodePath_operator_String", "string", "IntPtr ptr"));

	custom_icalls.push_back(InternalCall(icall_prefix "RID_Ctor", "IntPtr", "IntPtr from"));
	custom_icalls.push_back(InternalCall(icall_prefix "RID_Dtor", "IntPtr", "IntPtr ptr"));

	custom_icalls.push_back(InternalCall(icall_prefix "String_md5_buffer", "byte[]", "string str"));
	custom_icalls.push_back(InternalCall(icall_prefix "String_md5_text", "string", "string str"));
	custom_icalls.push_back(InternalCall(icall_prefix "String_rfind", "int", "string str, string what, int from"));
	custom_icalls.push_back(InternalCall(icall_prefix "String_rfindn", "int", "string str, string what, int from"));
	custom_icalls.push_back(InternalCall(icall_prefix "String_sha256_buffer", "byte[]", "string str"));
	custom_icalls.push_back(InternalCall(icall_prefix "String_sha256_text", "string", "string str"));

	custom_icalls.push_back(InternalCall(icall_prefix "Godot_bytes2var", "object", "byte[] bytes"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_convert", "object", "object what, int type"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_hash", "int", "object var"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_instance_from_id", "Object", "int instance_id"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_print", "void", "object[] what"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_printerr", "void", "object[] what"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_printraw", "void", "object[] what"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_prints", "void", "object[] what"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_printt", "void", "object[] what"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_seed", "void", "int seed"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_str", "string", "object[] what"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_str2var", "object", "string str"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_type_exists", "bool", "string type"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_var2bytes", "byte[]", "object what"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_var2str", "string", "object var"));
	custom_icalls.push_back(InternalCall(icall_prefix "Godot_weakref", "WeakRef", "IntPtr obj"));
}

Error BindingsGenerator::generate_cs_project(String p_output_dir)
{
	DirAccessRef da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);
	ERR_FAIL_COND_V(!da, ERR_CANT_CREATE);

	if (!DirAccess::exists(p_output_dir)) {
		Error err = da->make_dir_recursive(p_output_dir);
		ERR_FAIL_COND_V(err != OK, ERR_CANT_CREATE);
	}

	da->change_dir(p_output_dir);
	da->make_dir("Core");
	da->make_dir("ObjectType");

	String core_dir = path_join(p_output_dir, "Core");
	String obj_type_dir = path_join(p_output_dir, "ObjectType");

	NETSolution solution(API_ASSEMBLY_NAME);
	solution.path = p_output_dir;
	CSharpProject& project = solution.add_new_project(API_ASSEMBLY_NAME);
	project.add_reference("System");

	EditorHelp::generate_doc();
	generate_header_icalls();

	for (Map<String, TypeInterface>::Element *E = obj_types.front(); E; E = E->next()) {
		String output_file = path_join(obj_type_dir, E->get().proxy_name + ".cs");
		Error err = generate_cs_type(E->get(), output_file);
		if (err == ERR_SKIP)
			continue;
		if (err != OK)
			return err;
		project.add_file(output_file);
	}

#define GENERATE_BUILTIN_TYPE(m_name) { \
	String output_file = path_join(core_dir, #m_name ".cs"); \
	Error err = generate_cs_type(builtin_types[#m_name], output_file); \
	if (err != OK) \
		return err; \
	project.add_file(output_file); \
}

	GENERATE_BUILTIN_TYPE(Image);
	GENERATE_BUILTIN_TYPE(NodePath);
	GENERATE_BUILTIN_TYPE(RID);

#undef GENERATE_BUILTIN_TYPE

	Map<String, CompressedFile> compressed_files;
	get_compressed_files(compressed_files);

	for (Map<String, CompressedFile>::Element *E = compressed_files.front(); E; E = E->next()) {
		String output_file = path_join(core_dir, E->key());

		Vector<uint8_t> data;
		data.resize(E->value().uncompressed_size);
		Compression::decompress(data.ptr(), E->value().uncompressed_size, E->value().data, E->value().compressed_size, Compression::MODE_DEFLATE);

		FileAccessRef file = FileAccess::open(output_file, FileAccess::WRITE);
		ERR_FAIL_COND_V(!file, ERR_FILE_CANT_WRITE);
		file->store_buffer(data.ptr(), data.size());
		file->close();

		project.add_file(output_file);
	}

	List<String> cs_icalls_content;

	cs_icalls_content.push_back("using System;\n"
								"using System.Runtime.CompilerServices;\n"
								"using System.Collections.Generic;\n"
								"\n");
	cs_icalls_content.push_back("namespace " BINDINGS_NAMESPACE "\n" OPEN_BLOCK);
	cs_icalls_content.push_back(INDENT1 "internal static class " internal_methods_class "\n" INDENT1 OPEN_BLOCK);

#define ADD_INTERNAL_CALL(m_icall) { \
		cs_icalls_content.push_back(INDENT2 "[MethodImpl(MethodImplOptions.InternalCall)]\n"); \
		cs_icalls_content.push_back(INDENT2 "internal extern static "); \
		cs_icalls_content.push_back(m_icall.return_type + " "); \
		cs_icalls_content.push_back(m_icall.name + "("); \
		cs_icalls_content.push_back(m_icall.im_sig + ");\n"); \
	}

	for (const List<InternalCall>::Element *E = custom_icalls.front(); E; E = E->next())
		ADD_INTERNAL_CALL(E->get());
	for (const List<InternalCall>::Element *E = method_icalls.front(); E; E = E->next())
		ADD_INTERNAL_CALL(E->get());

#undef ADD_INTERNAL_CALL

	cs_icalls_content.push_back(INDENT1 CLOSE_BLOCK CLOSE_BLOCK);

	String internal_methods_file = path_join(core_dir, internal_methods_class ".cs");

	Error err = save_file(internal_methods_file, cs_icalls_content);
	if (err != OK)
		return err;

	project.add_file(internal_methods_file);

	Error sln_error = solution.save();
	if (sln_error != OK) {
		ERR_PRINT("Could not to save .NET solution.");
		return sln_error;
	}

	return OK;
}

Error BindingsGenerator::generate_cs_type(const TypeInterface& itype, const String& p_output_file)
{
	DocData* doc_data = EditorHelp::get_doc_data();

	int method_bind_count = 0;

	bool is_derived_type = itype.base_name.length();

	if (is_derived_type && obj_types[itype.base_name].is_singleton && is_singleton_black_listed(itype.name))
		return ERR_SKIP;

	OS::get_singleton()->print(String("Generating " + itype.name + "...\n").utf8());

	String ctor_method(icall_prefix + itype.proxy_name + "_Ctor");
	String dtor_method(icall_prefix + itype.proxy_name + "_Dtor");

	List<String> cs_file;

	cs_file.push_back("using System;\n"); // IntPtr

	if (itype.requires_collections)
		cs_file.push_back("using System.Collections.Generic;\n"); // List and Dictionary

	cs_file.push_back("\nnamespace " BINDINGS_NAMESPACE "\n" OPEN_BLOCK);

	DocData::ClassDoc class_doc = doc_data->class_list[itype.proxy_name];

	if (class_doc.description.size()) {
		cs_file.push_back(INDENT1 "/// <summary>\n");

		Vector<String> description_lines = class_doc.description.split("\n");

		for (int i = 0; i < description_lines.size(); i++) {
			if (description_lines[i].size()) {
				cs_file.push_back(INDENT1 "/// ");
				cs_file.push_back(description_lines[i].strip_edges());
				cs_file.push_back("\n");
			}
		}

		cs_file.push_back(INDENT1 "/// </summary>\n");
	}

	cs_file.push_back(INDENT1 "public ");
	cs_file.push_back(itype.is_singleton ? "static class " : "class ");
	cs_file.push_back(itype.proxy_name);

	if (itype.is_singleton || !itype.is_object_type) {
		cs_file.push_back("\n");
	} else if (!is_derived_type) {
		cs_file.push_back(" : IDisposable\n");
	} else if (obj_types.has(itype.base_name)) {
		cs_file.push_back(" : ");
		cs_file.push_back(obj_types[itype.base_name].proxy_name);
		cs_file.push_back("\n");
	} else {
		ERR_PRINTS("Base type ' " + itype.base_name + "' does not exist");
		return ERR_INVALID_DATA;
	}

	cs_file.push_back(INDENT1 "{");

	// Add constants
	for (int i = 0; i < class_doc.constants.size(); i++) {
		DocData::ConstantDoc const_doc = class_doc.constants[i];

		if (const_doc.description.size()) {
			cs_file.push_back(MEMBER_BEGIN "/// <summary>\n");

			Vector<String> description_lines = const_doc.description.split("\n");

			for (int i = 0; i < description_lines.size(); i++) {
				if (description_lines[i].size()) {
					cs_file.push_back(INDENT2 "/// ");
					cs_file.push_back(description_lines[i].strip_edges());
					cs_file.push_back("\n");
				}
			}

			cs_file.push_back(INDENT2 "/// </summary>");
		}

		cs_file.push_back(MEMBER_BEGIN "public const int ");
		cs_file.push_back(const_doc.name);
		cs_file.push_back(" = ");
		cs_file.push_back(const_doc.value);
		cs_file.push_back(";");
	}

	if (class_doc.constants.size())
		cs_file.push_back("\n");

	if (!itype.is_object_type) {
		cs_file.push_back(MEMBER_BEGIN "private const string " native_name_field " = \"" + itype.name + "\";\n");
		cs_file.push_back(MEMBER_BEGIN "internal IntPtr " BINDINGS_PTR_FIELD ";\n"
						  MEMBER_BEGIN "internal static IntPtr " static_ptr_getter "(");
		cs_file.push_back(itype.proxy_name);
		cs_file.push_back(" instance)\n" OPEN_BLOCK2I "return instance == null ? IntPtr.Zero : instance." BINDINGS_PTR_FIELD ";\n"
						  CLOSE_BLOCK2 MEMBER_BEGIN "~");
		cs_file.push_back(itype.proxy_name);
		cs_file.push_back("()\n" OPEN_BLOCK2I "Dispose();\n" CLOSE_BLOCK2
						  MEMBER_BEGIN"public virtual void Dispose()\n"
						  OPEN_BLOCK2I "lock (this)\n" OPEN_BLOCK3
						  INDENT4 "if (" BINDINGS_PTR_FIELD " != IntPtr.Zero)\n"
						  OPEN_BLOCK4
						  INDENT5 "NativeCalls.godot_icall_");
		cs_file.push_back(itype.proxy_name);
		cs_file.push_back("_Dtor(" BINDINGS_PTR_FIELD ");\n" INDENT5 BINDINGS_PTR_FIELD" = IntPtr.Zero;\n" CLOSE_BLOCK4 "\n"
						  INDENT4 "GC.SuppressFinalize(this);\n" CLOSE_BLOCK3 CLOSE_BLOCK2 MEMBER_BEGIN "internal ");
		cs_file.push_back(itype.proxy_name);
		cs_file.push_back("(IntPtr " BINDINGS_PTR_FIELD ")\n" OPEN_BLOCK2I "this." BINDINGS_PTR_FIELD" = " BINDINGS_PTR_FIELD ";\n" CLOSE_BLOCK2);
		cs_file.push_back(MEMBER_BEGIN "public bool HasValidHandle()\n" OPEN_BLOCK2I
							"return " BINDINGS_PTR_FIELD " == IntPtr.Zero;\n" CLOSE_BLOCK2);
	} else if (itype.is_singleton) {
		// Add the type name and the singleton pointer as static fields

		cs_file.push_back(MEMBER_BEGIN "private const string " native_name_field " = \"");
		cs_file.push_back(itype.name);
		cs_file.push_back("\";\n");

		cs_file.push_back(INDENT2 "internal static IntPtr " BINDINGS_PTR_FIELD " = " internal_methods_class "." icall_prefix);
		cs_file.push_back(itype.name);
		cs_file.push_back(singleton_icall_suffix "();\n");
	} else {
		// Add member fields

		cs_file.push_back(MEMBER_BEGIN "private const string " native_name_field " = \"");
		cs_file.push_back(itype.name);
		cs_file.push_back("\";\n");

		// Only the base class stores the pointer to the native object
		// This pointer is expected to be and must be of type Object*
		if (!is_derived_type) {
			cs_file.push_back(INDENT2 "internal IntPtr " BINDINGS_PTR_FIELD ";\n");
			cs_file.push_back(INDENT2 "internal bool " memory_own_field ";\n");
		}

		// Add default constructor
		if (itype.is_instantiable) {
			cs_file.push_back(MEMBER_BEGIN "public ");
			cs_file.push_back(itype.proxy_name);
			cs_file.push_back("() : this(");
			cs_file.push_back(itype.memory_own ? "true" : "false");

			// The default constructor may also be called by the engine when instancing existing native objects
			// The engine will initialize the pointer field of the managed side before calling the constructor
			// This is why we only allocate a new native object from the constructor if the pointer field is not set
			cs_file.push_back(")\n" OPEN_BLOCK2 INDENT3 "if (" BINDINGS_PTR_FIELD" == IntPtr.Zero)\n"
								INDENT4 BINDINGS_PTR_FIELD " = " internal_methods_class ".");
			cs_file.push_back(ctor_method);
			cs_file.push_back("(this);\n" CLOSE_BLOCK2);
		} else {
			// Hide the constructor
			cs_file.push_back(MEMBER_BEGIN "internal ");
			cs_file.push_back(itype.proxy_name);
			cs_file.push_back("() {}\n");
		}

		// Add.. em.. trick constructor. Sort of.
		cs_file.push_back(MEMBER_BEGIN "internal ");
		cs_file.push_back(itype.proxy_name);
		if (is_derived_type) {
			cs_file.push_back("(bool " memory_own_field ") : base(" memory_own_field ") {}\n");
		} else {
			cs_file.push_back("(bool " memory_own_field ")\n" OPEN_BLOCK2I
								"this." memory_own_field " = " memory_own_field ";\n" CLOSE_BLOCK2);
		}

		// Add methods

		if (!is_derived_type) {
			cs_file.push_back(MEMBER_BEGIN "public bool HasValidHandle()\n" OPEN_BLOCK2I
								"return " BINDINGS_PTR_FIELD " == IntPtr.Zero;\n" CLOSE_BLOCK2);

			cs_file.push_back(MEMBER_BEGIN "internal static IntPtr " static_ptr_getter "(Object instance)\n" OPEN_BLOCK2I
								"return instance == null ? IntPtr.Zero : instance." BINDINGS_PTR_FIELD ";\n" CLOSE_BLOCK2);
		}

		{
			// Add destructor
			cs_file.push_back(MEMBER_BEGIN "~");
			cs_file.push_back(itype.proxy_name);
			cs_file.push_back("()\n" OPEN_BLOCK2I "Dispose();\n" CLOSE_BLOCK2);

			// Add the Dispose method
			cs_file.push_back(MEMBER_BEGIN "public ");
			cs_file.push_back(is_derived_type ? "override" : "virtual");
			cs_file.push_back(" void Dispose()\n" OPEN_BLOCK2I "lock (this)\n" OPEN_BLOCK3I
								"if (" BINDINGS_PTR_FIELD " != IntPtr.Zero)\n" OPEN_BLOCK4I
								"if (" memory_own_field ")\n" OPEN_BLOCK5I memory_own_field " = false;\n");

			if (itype.memory_own) {
				cs_file.push_back(INDENT5 internal_methods_class ".");
				cs_file.push_back(dtor_method);
				cs_file.push_back("(" BINDINGS_PTR_FIELD ");\n");
			}

			cs_file.push_back(INDENT6 BINDINGS_PTR_FIELD " = IntPtr.Zero;\n" CLOSE_BLOCK5 CLOSE_BLOCK4
								"\n" INDENT4 "GC.SuppressFinalize(this);\n" CLOSE_BLOCK3 CLOSE_BLOCK2);
		}
	}

	Map<String, String>::Element *extra_member = extra_members.find(itype.name);
	if (extra_member)
		cs_file.push_back(extra_member->get());

	for (const List<MethodInterface>::Element *E = itype.methods.front(); E; E = E->next()) {
		MethodInterface imethod = E->get();

		TypeInterface return_type = get_type_by_name(imethod.return_type);

		String method_bind_field = "method_bind_" + itos(method_bind_count);

		String icall_sig = "IntPtr " method_bind_param ", IntPtr " instance_param;
		String icall_unique_sig = imethod.return_type + ",IntPtr,IntPtr";
		String icall_params = method_bind_field + ", " + sformat(itype.cs_in, "this");
		String arguments_sig;
		String cs_in_statements;

		List<String> default_args_doc;

		// Retrieve information from the arguments
		int i = 0;
		for (List<ArgumentInterface>::Element *F = imethod.arguments.front(); F; F = F->next()) {
			ArgumentInterface iarg = F->get();
			TypeInterface arg_type = get_type_by_name(iarg.type);

			// Add the current arguments to the signature
			// If the argument has a default value which is not a constant, we will make it Nullable
			{
				if (i > 0)
					arguments_sig += ", ";

				if (iarg.def_param_mode == ArgumentInterface::NULLABLE_VAL)
					arguments_sig += "Nullable<";

				arguments_sig += arg_type.cs_type;

				if (iarg.def_param_mode == ArgumentInterface::NULLABLE_VAL)
					arguments_sig += "> ";
				else
					arguments_sig += " ";

				arguments_sig += iarg.name;

				if (iarg.default_argument.size()) {
					if (iarg.def_param_mode != ArgumentInterface::CONSTANT)
						arguments_sig += " = null";
					else
						arguments_sig += " = " + sformat(iarg.default_argument, arg_type.cs_type);
				}
			}

			icall_sig += ", " + arg_type.im_type_in + " arg" + itos(i + 1);
			icall_params += ", ";

			if (iarg.default_argument.size() && iarg.def_param_mode != ArgumentInterface::CONSTANT) {
				// The default value of an argument must be constant. Otherwise we make it Nullable and do the following:
				// Type arg_in = arg.HasValue ? arg.Value : <non-const default value>;
				String arg_in = iarg.name;
				arg_in += "_in";

				cs_in_statements += INDENT3;
				cs_in_statements += arg_type.cs_type;
				cs_in_statements += " ";
				cs_in_statements += arg_in;
				cs_in_statements += " = ";
				cs_in_statements += iarg.name;

				if (iarg.def_param_mode == ArgumentInterface::NULLABLE_VAL)
					cs_in_statements += ".HasValue ? ";
				else
					cs_in_statements += " != null ? ";

				cs_in_statements += iarg.name;

				if (iarg.def_param_mode == ArgumentInterface::NULLABLE_VAL)
					cs_in_statements += ".Value : ";
				else
					cs_in_statements += " : ";

				String def_arg = sformat(iarg.default_argument, arg_type.cs_type);

				cs_in_statements += def_arg;
				cs_in_statements += ";\n";

				icall_params += arg_type.cs_in.empty() ? arg_in : sformat(arg_type.cs_in, arg_in);

				default_args_doc.push_back(INDENT2 "/// <param name=\"" + iarg.name + "\">If the param is null, then the default value is " + def_arg + "</param>\n");
			} else {
				icall_params += arg_type.cs_in.empty() ? iarg.name : sformat(arg_type.cs_in, iarg.name);
			}

			icall_unique_sig += ",";
			icall_unique_sig += get_unique_sig(arg_type);

			i++;
		}

		// Create the internal call, if none that matches the unique signarute exist

		String icall_method = icall_prefix + itos(imethod.arguments.size()) + "_" + itos(method_icalls.size());
		InternalCall im_icall = InternalCall(icall_method, return_type.im_type_out, icall_sig, icall_unique_sig);

		List<InternalCall>::Element *match = method_icalls.find(im_icall);

		if (match) {
			icall_method = match->get().name;
		} else {
			method_icalls.push_back(im_icall);
		}

		// Generate method
		{
			cs_file.push_back(MEMBER_BEGIN "private ");
			cs_file.push_back(itype.is_singleton ? "static IntPtr " : "IntPtr ");
			cs_file.push_back(method_bind_field);
			cs_file.push_back(" = " internal_methods_class "." method_bind_provider "(" native_name_field ", \"");
			cs_file.push_back(imethod.name);
			cs_file.push_back("\");\n");

			DocData::MethodDoc const_doc;

			for (int i = 0; i < class_doc.methods.size(); i++) {
				if (class_doc.methods[i].name == imethod.name) {
					const_doc = class_doc.methods[i];
					break;
				}
			}

			if (const_doc.description.size()) {
				cs_file.push_back(MEMBER_BEGIN "/// <summary>\n");

				Vector<String> description_lines = const_doc.description.split("\n");

				for (int i = 0; i < description_lines.size(); i++) {
					if (description_lines[i].size()) {
						cs_file.push_back(INDENT2 "/// ");
						cs_file.push_back(description_lines[i].strip_edges());
						cs_file.push_back("\n");
					}
				}

				for (List<String>::Element *E = default_args_doc.front(); E; E = E->next()) {
					cs_file.push_back(E->get());
				}

				cs_file.push_back(INDENT2 "/// </summary>");
			}

			cs_file.push_back(MEMBER_BEGIN "public ");
			if (itype.is_singleton)
				cs_file.push_back("static ");
			cs_file.push_back(return_type.proxy_name + " ");
			cs_file.push_back(imethod.proxy_name + "(");
			cs_file.push_back(arguments_sig + ")\n" OPEN_BLOCK2);

			String im_call = internal_methods_class "." + icall_method + "(" + icall_params + ");\n";

			if (imethod.arguments.size())
				cs_file.push_back(cs_in_statements);

			cs_file.push_back(INDENT3);

			if (return_type.name == "void") {
				cs_file.push_back(im_call);
			} else if (return_type.cs_out.empty()) {
				cs_file.push_back("return " + im_call);
			} else {
				cs_file.push_back(return_type.im_type_out);
				cs_file.push_back(" " ret_var " = ");
				cs_file.push_back(im_call);
				cs_file.push_back(INDENT3);
				cs_file.push_back(sformat(return_type.cs_out, ret_var) + "\n");
			}

			cs_file.push_back(CLOSE_BLOCK2);
		}

		method_bind_count++;
	}

	if (itype.is_singleton)
		custom_icalls.push_back(InternalCall(icall_prefix + itype.name + singleton_icall_suffix, "IntPtr"));

	if (itype.memory_own)
		custom_icalls.push_back(InternalCall(dtor_method, "void", "IntPtr ptr"));

	if (itype.is_instantiable)
		custom_icalls.push_back(InternalCall(ctor_method, "IntPtr", itype.proxy_name + " obj"));

	cs_file.push_back(INDENT1 CLOSE_BLOCK CLOSE_BLOCK);

	return save_file(p_output_file, cs_file);
}

Error BindingsGenerator::generate_glue(String p_output_dir)
{
	bool dir_exists = DirAccess::exists(p_output_dir);
	ERR_EXPLAIN("The output directory does not exist.");
	ERR_FAIL_COND_V(!dir_exists, ERR_FILE_BAD_PATH);

	generate_header_icalls();

	List<String> cpp_file;

	cpp_file.push_back("#include \"" glue_header_file "\"\n"
						"\n");

	for (Map<String, TypeInterface>::Element *E = obj_types.front(); E; E = E->next()) {
		TypeInterface itype = E->get();

		if (itype.base_name.length() && obj_types[itype.base_name].is_singleton && is_singleton_black_listed(itype.name))
			continue;

		OS::get_singleton()->print(String("Generating " + itype.name + "...\n").utf8());

		String ctor_method(icall_prefix + itype.proxy_name + "_Ctor");
		String dtor_method(icall_prefix + itype.proxy_name + "_Dtor");

		for (List<MethodInterface>::Element *E = itype.methods.front(); E; E = E->next()) {
			MethodInterface imethod = E->get();

			TypeInterface return_type = get_type_by_name(imethod.return_type);

			String argc_str = itos(imethod.arguments.size());

			String icall_method = icall_prefix + argc_str + "_";
			String im_sig = "IntPtr " method_bind_param ", IntPtr " instance_param;
			String im_unique_sig = imethod.return_type + ",IntPtr,IntPtr";
			String c_func_sig = "MethodBind* " method_bind_param ", " + itype.type_in + " " instance_param;
			String c_in_statements;
			String c_args_var_content;

			// Get arguments information
			int i = 0;
			for (List<ArgumentInterface>::Element *F = imethod.arguments.front(); F; F = F->next()) {
				ArgumentInterface iarg = F->get();
				TypeInterface arg_type = get_type_by_name(iarg.type);

				String c_param_name = "arg" + itos(i + 1);

				if (imethod.has_vararg) {
					if (i < imethod.arguments.size() - 1) {
						c_in_statements += sformat(arg_type.in.size() ? arg_type.in : "\t%0 %1_in = %1;\n", "Variant", c_param_name);
						c_in_statements += "\t" ptrcall_args_var ".set(0, ";
						c_in_statements += sformat("&%s_in", c_param_name);
						c_in_statements += ");\n";
					}
				} else {
					if (i > 0)
						c_args_var_content += ", ";
					if (arg_type.in.size())
						c_in_statements += sformat(arg_type.in, arg_type.type, c_param_name);
					c_args_var_content += sformat(arg_type.call_arg_in, c_param_name);
				}

				im_sig += ", ";
				im_sig += arg_type.im_type_in;
				im_sig += " arg";
				im_sig += itos(i + 1);

				c_func_sig += ", ";
				c_func_sig += arg_type.type_in;
				c_func_sig += " ";
				c_func_sig += c_param_name;

				im_unique_sig += ",";
				im_unique_sig += get_unique_sig(arg_type);

				i++;
			}

			// Create the internal call, if none that matches the unique signarute exist

			icall_method += itos(method_icalls.size());

			InternalCall im_icall = InternalCall(icall_method, return_type.im_type_out, im_sig, im_unique_sig);

			List<InternalCall>::Element *match_icall = method_icalls.find(im_icall);

			if (match_icall) {
				icall_method = match_icall->get().name;
			} else {
				method_icalls.push_back(im_icall);

				// Generate wrapper function

				cpp_file.push_back(imethod.return_type == "void" ? "void " : return_type.type_out + " ");
				cpp_file.push_back(icall_method + "(" + c_func_sig + ") " OPEN_BLOCK);

				if (imethod.return_type != "void") {
					String ptrcall_return_type;
					String initialization;

					if (return_type.is_object_type) {
						if (return_type.is_reference) {
							ptrcall_return_type = "Ref<" + return_type.name + ">";
						} else {
							ptrcall_return_type = return_type.name + "*";
							initialization = " = NULL";
						}
					} else {
						ptrcall_return_type = return_type.type;
					}

					cpp_file.push_back("\t" + ptrcall_return_type);
					cpp_file.push_back(" " ret_var);
					cpp_file.push_back(initialization + ";\n");
				}

				if (imethod.arguments.size()) {
					if (imethod.has_vararg) {
						String fail_ret = return_type.type_out.ends_with("*") ? "NULL" : return_type.type_out + "()";
						String vararg_arg = "arg" + argc_str;
						String real_argc_str = itos(imethod.arguments.size() - 1); // Arguments count without vararg

						cpp_file.push_back("\tVector<Variant> varargs;\n"
										   "\tint vararg_length = mono_array_length(");
						cpp_file.push_back(vararg_arg);
						cpp_file.push_back(");\n\tint total_length = ");
						cpp_file.push_back(real_argc_str);
						cpp_file.push_back(" + vararg_length;\n"
										   "\tERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, ");
						cpp_file.push_back(fail_ret);
						cpp_file.push_back(");\n\tVector<Variant*> " ptrcall_args_var ";\n"
											"\tERR_FAIL_COND_V(call_args.resize(total_length) != OK, ");
						cpp_file.push_back(fail_ret);
						cpp_file.push_back(");\n");
						cpp_file.push_back(c_in_statements);
						cpp_file.push_back("\tfor (int i = 0; i < vararg_length; i++) " OPEN_BLOCK
										   "\t\tMonoObject* elem = mono_array_get(");
						cpp_file.push_back(vararg_arg);
						cpp_file.push_back(", MonoObject*, i);\n"
										   "\t\tvarargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));\n"
										   "\t\t" ptrcall_args_var ".set(");
						cpp_file.push_back(real_argc_str);
						cpp_file.push_back(" + i, &varargs[i]);\n\t" CLOSE_BLOCK);
					} else {
						cpp_file.push_back(c_in_statements);
						cpp_file.push_back("\tconst void* " ptrcall_args_var "[");
						cpp_file.push_back(argc_str + "] = { ");
						cpp_file.push_back(c_args_var_content + " };\n");
					}
				}

				if (imethod.has_vararg) {
					cpp_file.push_back("\tVariant::CallError vcall_error;\n\t");

					if (imethod.return_type != "void")
						cpp_file.push_back(ret_var " = ");

					cpp_file.push_back(method_bind_param "->call(" instance_param ", ");
					cpp_file.push_back(imethod.arguments.size() ? "(const Variant**)" ptrcall_args_var ".ptr()" : "NULL");
					cpp_file.push_back(", total_length, vcall_error);\n");
				} else {
					cpp_file.push_back("\t" method_bind_param "->ptrcall(" instance_param ", ");
					cpp_file.push_back(imethod.arguments.size() ? ptrcall_args_var ", " : "NULL, ");
					cpp_file.push_back(imethod.return_type != "void" ? "&" ret_var ");\n" : "NULL);\n");
				}

				if (imethod.return_type != "void") {
					if (return_type.out.empty())
						cpp_file.push_back("\treturn " ret_var ";\n");
					else
						cpp_file.push_back(sformat(return_type.out, return_type.name, ret_var));
				}

				cpp_file.push_back(CLOSE_BLOCK "\n");
			}
		}

		if (itype.is_singleton) {
			String singleton_icall = icall_prefix + itype.name + singleton_icall_suffix;

			custom_icalls.push_back(InternalCall(singleton_icall, "IntPtr"));

			cpp_file.push_back("Object* ");
			cpp_file.push_back(singleton_icall);
			cpp_file.push_back("() " OPEN_BLOCK "\treturn ");
			cpp_file.push_back(itype.name);
			cpp_file.push_back("::get_singleton();\n" CLOSE_BLOCK "\n");
		}

		if (itype.memory_own) {
			custom_icalls.push_back(InternalCall(dtor_method, "void", "IntPtr ptr"));

			cpp_file.push_back("void ");
			cpp_file.push_back(dtor_method + "(Object* ptr) " OPEN_BLOCK);

			if (itype.is_reference) {
				cpp_file.push_back("\t" ref_dtor_macro "(ptr);\n" CLOSE_BLOCK);
			} else {
				cpp_file.push_back("\tmemdelete(ptr);\n" CLOSE_BLOCK "\n");
			}
		}

		if (itype.is_instantiable) {
			custom_icalls.push_back(InternalCall(ctor_method, "IntPtr", itype.proxy_name + " obj"));

			cpp_file.push_back("Object* ");
			cpp_file.push_back(ctor_method);
			cpp_file.push_back("(MonoObject* obj) " OPEN_BLOCK
							   "\t" object_ctor_macro "(instance, \"");
			cpp_file.push_back(itype.name);
			cpp_file.push_back("\");\n"
							   "\t" tie_lifetime_method "(obj, instance);\n"
							   "\treturn instance;\n" CLOSE_BLOCK "\n");
		}
	}

	cpp_file.push_back("namespace GodotSharpBindings\n" OPEN_BLOCK
						"void register_generated_icalls() " OPEN_BLOCK);

#define ADD_INTERNAL_CALL_REGISTRATION(m_icall) { \
		cpp_file.push_back("\tmono_add_internal_call("); \
		cpp_file.push_back("\"" BINDINGS_NAMESPACE "." internal_methods_class "::"); \
		cpp_file.push_back(m_icall.name); \
		cpp_file.push_back("\", (void*)"); \
		cpp_file.push_back(m_icall.name); \
		cpp_file.push_back(");\n"); \
	}

	for (const List<InternalCall>::Element *E = custom_icalls.front(); E; E = E->next())
		ADD_INTERNAL_CALL_REGISTRATION(E->get());
	for (const List<InternalCall>::Element *E = method_icalls.front(); E; E = E->next())
		ADD_INTERNAL_CALL_REGISTRATION(E->get());

#undef ADD_INTERNAL_CALL_REGISTRATION

	cpp_file.push_back(CLOSE_BLOCK "}\n");

	return save_file(path_join(p_output_dir, "mono_glue.cpp"), cpp_file);
}

Error BindingsGenerator::save_file(const String &path, const List<String> &content)
{
	FileAccessRef file = FileAccess::open(path, FileAccess::WRITE);

	ERR_FAIL_COND_V(!file, ERR_FILE_CANT_WRITE);

	for (const List<String>::Element *E = content.front(); E; E = E->next()) {
		file->store_string(E->get());
	}

	file->close();

	return OK;
}

BindingsGenerator::TypeInterface BindingsGenerator::get_type_by_name(const String &name)
{
	const Map<String, TypeInterface>::Element *match = builtin_types.find(name);

	if (match)
		return match->get();

	match = obj_types.find(name);

	if (match)
		return match->get();

	ERR_PRINTS(String() + "Type not found. Creating placeholder: " + name);

	return TypeInterface::create_placeholder_type(name);
}

void BindingsGenerator::generate_obj_types()
{
	obj_types.clear();

	List<StringName> type_list;
	ObjectTypeDB::get_type_list(&type_list);
	type_list.sort_custom<StringName::AlphCompare>();

	while (type_list.size()) {
		StringName type_cname = type_list.front()->get();

		ObjectTypeDB::APIType api_type = ObjectTypeDB::get_api_type(type_cname);

		if (api_type == ObjectTypeDB::API_NONE || (!editor_api && api_type == ObjectTypeDB::API_EDITOR)) {
			type_list.pop_front();
			continue;
		}

		TypeInterface itype = TypeInterface::create_object_type(type_cname);

		itype.base_name = ObjectTypeDB::type_inherits_from(type_cname);
		itype.is_singleton = Globals::get_singleton()->has_singleton(itype.proxy_name);
		itype.is_instantiable = ObjectTypeDB::can_instance(type_cname) && !itype.is_singleton;
		itype.is_creatable = itype.is_instantiable && is_creatable_type(itype.name);
		itype.is_reference = ObjectTypeDB::is_type(type_cname, "Reference");
		itype.memory_own = itype.is_reference && !itype.is_singleton;

		itype.out = "\treturn " gdobject_to_managed_method "(%1";

		if (itype.is_reference) {
			itype.out += ".ptr()->cast_to<Object>());\n";
		} else if (itype.name != "Object") {
			itype.out += "->cast_to<Object>());\n";
		} else {
			itype.out += ");\n";
		}

		itype.cs_in = itype.is_singleton ? BINDINGS_PTR_FIELD : "Object." static_ptr_getter "(%0)";

		itype.type = "Object*";
		itype.type_in = itype.type;
		itype.type_out = "MonoObject*";
		itype.cs_type = itype.proxy_name;
		itype.im_type_in = "IntPtr";
		itype.im_type_out = itype.proxy_name;

		List<MethodInfo> method_list;
		ObjectTypeDB::get_method_list(type_cname, &method_list, true);
		method_list.sort();

		for(List<MethodInfo>::Element *E = method_list.front(); E; E = E->next()) {
			const MethodInfo& method_info = E->get();

			int argc = method_info.arguments.size();

			if (method_info.name.empty() || method_info.name[0] == '_' || (method_info.flags & METHOD_FLAG_VIRTUAL))
				continue;

			MethodBind *m = ObjectTypeDB::get_method(type_cname, method_info.name);

			MethodInterface imethod;
			imethod.name = method_info.name;
			imethod.has_vararg = m && m->is_vararg();

			PropertyInfo return_info = method_info.return_val;

			if (m && m->get_return_type() != StringName()) {
				imethod.return_type = m->get_return_type();
			} else if (imethod.name.find(":") != -1) {
				imethod.return_type = imethod.name.get_slice(":", 1);
				imethod.name = imethod.name.get_slice(":", 0);
			} else if (return_info.type != Variant::NIL) {
				imethod.return_type = return_info.hint == PROPERTY_HINT_RESOURCE_TYPE ?
						return_info.hint_string : Variant::get_type_name(return_info.type);
			}

			if (!itype.requires_collections && (imethod.return_type.ends_with("Array") || imethod.return_type == "Dictionary"))
				itype.requires_collections = true;

			for (int i = 0; i < argc; i++) {
				PropertyInfo arg_info = method_info.arguments[i];

				ArgumentInterface iarg;
				iarg.name = escape_csharp_keyword(arg_info.name);

				if (arg_info.name.find(":") != -1) {
					iarg.type = arg_info.name.get_slice(":", 1);
					iarg.name = escape_csharp_keyword(arg_info.name.get_slice(":", 0));
				} else if (arg_info.hint == PROPERTY_HINT_RESOURCE_TYPE) {
					iarg.type = arg_info.hint_string;
				} else if (arg_info.type == Variant::NIL) {
					iarg.type = "Variant";
				} else {
					iarg.type = Variant::get_type_name(arg_info.type);
				}

				if (!itype.requires_collections && (iarg.type.ends_with("Array") || iarg.type == "Dictionary"))
					itype.requires_collections = true;

				if (m && m->has_default_argument(i)) {
					default_argument_from_variant(m->get_default_argument(i), iarg);
				}

				imethod.add_argument(iarg);
			}

			if (imethod.has_vararg) {
				ArgumentInterface ivararg;
				ivararg.type = "VarArg";
				ivararg.name = "@args";
				imethod.add_argument(ivararg);
			}

			imethod.proxy_name = escape_csharp_keyword(imethod.name);
			itype.add_method(imethod);
		}

		obj_types.insert(itype.name, itype);
		type_list.pop_front();
	}
}

void BindingsGenerator::default_argument_from_variant(const Variant& p_val, ArgumentInterface& r_iarg)
{
	r_iarg.default_argument = p_val;

	switch(p_val.get_type()) {
		case Variant::NIL:
			if (ObjectTypeDB::type_exists(r_iarg.type)) {
				// Object type
				r_iarg.default_argument = "null";
			} else {
				// Variant
				r_iarg.default_argument = "null";
			}
			break;
		// Atomic types
		case Variant::BOOL:
			r_iarg.default_argument = bool(p_val) ? "true" : "false";
			break;
		case Variant::INT:
			break; // Keep it
		case Variant::REAL:
#ifndef REAL_T_IS_DOUBLE
			r_iarg.default_argument += "f";
#endif
			break;
		case Variant::STRING: // 15
		case Variant::NODE_PATH: // 15
			r_iarg.default_argument = "\""+r_iarg.default_argument+"\"";
			break;
		case Variant::TRANSFORM:
			if (p_val.operator Transform() == Transform())
				r_iarg.default_argument.clear();
			r_iarg.default_argument = "new %s(" + r_iarg.default_argument + ")";
			r_iarg.def_param_mode = ArgumentInterface::NULLABLE_VAL;
			break;
		case Variant::PLANE:
		case Variant::_AABB: // 10
		case Variant::COLOR:
			r_iarg.default_argument = "new Color(1, 1, 1, 1)";
			r_iarg.def_param_mode = ArgumentInterface::NULLABLE_VAL;
			break;
		case Variant::VECTOR2: // 5
		case Variant::RECT2:
		case Variant::VECTOR3:
				r_iarg.default_argument = "new %s" + r_iarg.default_argument;
				r_iarg.def_param_mode = ArgumentInterface::NULLABLE_VAL;
				break;
		case Variant::OBJECT:
			if (p_val.is_zero()) {
				r_iarg.default_argument = "null";
				break;
			}
		case Variant::INPUT_EVENT:
		case Variant::DICTIONARY: // 20
		case Variant::ARRAY:
		case Variant::_RID:
		case Variant::IMAGE:
		case Variant::RAW_ARRAY:
		case Variant::INT_ARRAY:
		case Variant::REAL_ARRAY:
		case Variant::STRING_ARRAY:	// 25
		case Variant::VECTOR2_ARRAY:
		case Variant::VECTOR3_ARRAY:
		case Variant::COLOR_ARRAY:
			r_iarg.default_argument = "new %s()";
			r_iarg.def_param_mode = ArgumentInterface::NULLABLE_REF;
			break;
		case Variant::MATRIX32:
		case Variant::MATRIX3:
		case Variant::QUAT:
			r_iarg.default_argument = Variant::get_type_name(p_val.get_type()) + ".Identity";
			r_iarg.def_param_mode = ArgumentInterface::NULLABLE_VAL;
			break;
		default: {}
	}

	if (r_iarg.def_param_mode == ArgumentInterface::CONSTANT && r_iarg.type[0] == 'V' && r_iarg.type == "Variant" && r_iarg.default_argument != "null")
		r_iarg.def_param_mode = ArgumentInterface::NULLABLE_REF;
}

void BindingsGenerator::generate_builtin_types()
{
	builtin_types.clear();

	TypeInterface itype;

	#define INSERT_STRUCT_TYPE(m_type, m_type_in) { \
		itype = TypeInterface::create_atomic_type(#m_type); \
		itype.in = "\tMARSHALLED_IN(" #m_type ", %1, %1_in);\n"; \
		itype.out = "\tMARSHALLED_OUT(" #m_type ", %1, ret_out)\n" \
					"\treturn mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(%0), ret_out);\n"; \
		itype.call_arg_in = "&%s_in"; \
		itype.type_in = m_type_in; \
		itype.cs_in = "ref %s"; \
		itype.cs_out = "return (" #m_type ")%0;"; \
		itype.im_type_out = "object"; \
		builtin_types.insert(#m_type, itype); \
	}

	INSERT_STRUCT_TYPE(Vector2, "real_t*")
	INSERT_STRUCT_TYPE(Rect2, "real_t*")
	INSERT_STRUCT_TYPE(Matrix32, "real_t*")
	INSERT_STRUCT_TYPE(Vector3, "real_t*")
	INSERT_STRUCT_TYPE(Matrix3, "real_t*")
	INSERT_STRUCT_TYPE(Quat, "real_t*")
	INSERT_STRUCT_TYPE(Transform, "real_t*")
	INSERT_STRUCT_TYPE(AABB, "real_t*")
	INSERT_STRUCT_TYPE(Color, "real_t*")
	INSERT_STRUCT_TYPE(Plane, "real_t*")
	INSERT_STRUCT_TYPE(InputEvent, "char*")

	#undef INSERT_STRUCT_TYPE

	#define INSERT_PRIMITIVE_TYPE(m_type) { \
		itype = TypeInterface::create_atomic_type(#m_type); \
		itype.call_arg_in = "&%s"; \
		itype.type_in = #m_type; \
		itype.type_out = #m_type; \
		itype.im_type_in = #m_type; \
		itype.im_type_out = #m_type; \
		builtin_types.insert(#m_type, itype); \
	}

	INSERT_PRIMITIVE_TYPE(bool)
	INSERT_PRIMITIVE_TYPE(int)

	#undef INSERT_PRIMITIVE_TYPE

	// real_t
	itype = TypeInterface();
	#ifdef REAL_T_IS_DOUBLE
	itype.name = "double";
	#else
	itype.name = "float";
	#endif
	itype.proxy_name = itype.name;
	itype.call_arg_in = "&%s";
	itype.type = "real_t";
	itype.type_in = "real_t";
	itype.type_out = "real_t";
	itype.cs_type = itype.proxy_name;
	itype.im_type_in = itype.proxy_name;
	itype.im_type_out = itype.proxy_name;
	builtin_types.insert(itype.name, itype);

	// String
	itype = TypeInterface();
	itype.name = "String";
	itype.proxy_name = "string";
	itype.in = "\t%0 %1_in = " string_c_in "(%1);\n";
	itype.out = "\treturn " string_c_out "(%1);\n";
	itype.call_arg_in = "&%s_in";
	itype.type = itype.name;
	itype.type_in = "MonoString*";
	itype.type_out = "MonoString*";
	itype.cs_type = itype.proxy_name;
	itype.im_type_in = itype.proxy_name;
	itype.im_type_out = itype.proxy_name;
	builtin_types.insert(itype.name, itype);

	// NodePath
	itype = TypeInterface();
	itype.name = "NodePath";
	itype.proxy_name = "NodePath";
	itype.out = "\treturn memnew(NodePath(%1));\n";
	itype.type = itype.name;
	itype.type_in = itype.type + "*";
	itype.type_out = itype.type + "*";
	itype.cs_type = itype.proxy_name;
	itype.cs_in = "NodePath." static_ptr_getter "(%0)";
	itype.cs_out = "return new NodePath(%0);";
	itype.im_type_in = "IntPtr";
	itype.im_type_out = "IntPtr";
	populate_builtin_type(itype, Variant::NODE_PATH);
	extra_members.insert(itype.name, MEMBER_BEGIN "public NodePath() : this(string.Empty) {}\n"
						 MEMBER_BEGIN "public NodePath(string path)\n" OPEN_BLOCK2I
						 "this." BINDINGS_PTR_FIELD " = NativeCalls.godot_icall_NodePath_Ctor(path);\n" CLOSE_BLOCK2
						 MEMBER_BEGIN "public static implicit operator NodePath(string from)\n"
						 OPEN_BLOCK2I "return new NodePath(from);\n" CLOSE_BLOCK2
						 MEMBER_BEGIN "public static implicit operator string(NodePath from)\n" OPEN_BLOCK2I
						 "return NativeCalls." icall_prefix "NodePath_operator_String(NodePath." static_ptr_getter "(from));\n" CLOSE_BLOCK2);
	builtin_types.insert(itype.name, itype);

	// Image
	itype = TypeInterface();
	itype.name = "Image";
	itype.proxy_name = "Image";
	itype.out = "\treturn memnew(Image(%1));\n";
	itype.type = itype.name;
	itype.type_in = itype.type + "*";
	itype.type_out = itype.type + "*";
	itype.cs_type = itype.proxy_name;
	itype.cs_in = "Image." static_ptr_getter "(%0)";
	itype.cs_out = "return new Image(%0);";
	itype.im_type_in = "IntPtr";
	itype.im_type_out = "IntPtr";
	populate_builtin_type(itype, Variant::IMAGE);
	extra_members.insert(itype.name, MEMBER_BEGIN "public Image()\n" OPEN_BLOCK2I
						 "this." BINDINGS_PTR_FIELD " = NativeCalls." icall_prefix "Image_Ctor();\n" CLOSE_BLOCK2
						 MEMBER_BEGIN "public Image(int width, int height, bool mipmaps, int format)" OPEN_BLOCK2I
						 "this." BINDINGS_PTR_FIELD " = NativeCalls." icall_prefix "Image_Ctor_2(width, height, mipmaps, format);\n" CLOSE_BLOCK2);
	builtin_types.insert(itype.name, itype);

	// RID
	itype = TypeInterface();
	itype.name = "RID";
	itype.proxy_name = "RID";
	itype.out = "\treturn memnew(RID(%1));\n";
	itype.type = itype.name;
	itype.type_in = itype.type + "*";
	itype.type_out = itype.type + "*";
	itype.cs_type = itype.proxy_name;
	itype.cs_in = "RID." static_ptr_getter "(%0)";
	itype.cs_out = "return new RID(%0);";
	itype.im_type_in = "IntPtr";
	itype.im_type_out = "IntPtr";
	populate_builtin_type(itype, Variant::_RID);
	extra_members.insert(itype.name, MEMBER_BEGIN "internal RID()\n" OPEN_BLOCK2I
							   "this." BINDINGS_PTR_FIELD " = IntPtr.Zero;\n" CLOSE_BLOCK2);
	builtin_types.insert(itype.name, itype);

	// Variant
	itype = TypeInterface();
	itype.name = "Variant";
	itype.proxy_name = "object";
	itype.in = "\t%0 %1_in = " variant_c_in "(%1);\n";
	itype.out = "\treturn " variant_c_out "(%1);\n";
	itype.call_arg_in = "&%s_in";
	itype.type = itype.name;
	itype.type_in = "MonoObject*";
	itype.type_out = "MonoObject*";
	itype.cs_type = itype.proxy_name;
	itype.cs_in = "%0";
	itype.im_type_in = "object";
	itype.im_type_out = itype.proxy_name;
	builtin_types.insert(itype.name, itype);

	// VarArg
	itype = TypeInterface();
	itype.name = "VarArg";
	itype.proxy_name = "object[]";
	itype.in = "\t%0 %1_in = " marshalling_namespace "::" array_c_in "Array(%1);\n";
	itype.call_arg_in = "&%s_in";
	itype.type = "Array";
	itype.type_in = "MonoArray*";
	itype.cs_type = "params object[]";
	itype.im_type_in = "object[]";
	builtin_types.insert(itype.name, itype);

	#define INSERT_ARRAY_FULL(m_name, m_type, m_proxy_t) { \
		itype = TypeInterface(); \
		itype.name = #m_name; \
		itype.proxy_name = "List<" #m_proxy_t ">"; \
		itype.in = "\t%0 %1_in = " marshalling_namespace "::" array_c_in #m_type "(%1);\n"; \
		itype.out = "\treturn " marshalling_namespace "::" #m_type array_c_out "(%1);\n"; \
		itype.call_arg_in = "&%s_in"; \
		itype.type = #m_type; \
		itype.type_in = "MonoArray*"; \
		itype.type_out = "MonoArray*"; \
		itype.cs_type = itype.proxy_name; \
		itype.cs_in = "%0.ToArray()"; \
		itype.cs_out = "return new " + itype.proxy_name + "(%s);"; \
		itype.im_type_in = #m_proxy_t "[]"; \
		itype.im_type_out = #m_proxy_t "[]"; \
		builtin_types.insert(itype.name, itype); \
	}

	#define INSERT_ARRAY(m_type, m_proxy_t) INSERT_ARRAY_FULL(m_type, m_type, m_proxy_t)

	INSERT_ARRAY(Array, object);
	INSERT_ARRAY(IntArray, int);
	INSERT_ARRAY_FULL(RawArray, ByteArray, byte);

	#ifdef REAL_T_IS_DOUBLE
	INSERT_ARRAY(RealArray, double);
	#else
	INSERT_ARRAY(RealArray, float);
	#endif

	INSERT_ARRAY(StringArray, string);

	INSERT_ARRAY(ColorArray, Color);
	INSERT_ARRAY(Vector2Array, Vector2);
	INSERT_ARRAY(Vector3Array, Vector3);

	#undef INSERT_ARRAY

	// Dictionary
	itype = TypeInterface();
	itype.name = "Dictionary";
	itype.proxy_name = "Dictionary<object, object>";
	itype.in = "\t%0 %1_in = " marshalling_namespace "::" dictionary_c_in "(%1);\n";
	itype.out = "\treturn " marshalling_namespace "::" dictionary_c_out "(%1);\n";
	itype.call_arg_in = "&%s_in";
	itype.type = itype.name;
	itype.type_in = "MonoObject*";
	itype.type_out = "MonoObject*";
	itype.cs_type = itype.proxy_name;
	itype.im_type_in = itype.proxy_name;
	itype.im_type_out = itype.proxy_name;
	builtin_types.insert(itype.name, itype);

	// void
	itype = TypeInterface();
	itype.name = "void";
	itype.proxy_name = itype.name;
	itype.type = itype.name;
	itype.type_in = itype.type;
	itype.type_out = itype.type;
	itype.cs_type = itype.proxy_name;
	itype.im_type_in = itype.proxy_name;
	itype.im_type_out = itype.proxy_name;
	builtin_types.insert(itype.name, itype);

	// Error
	itype = TypeInterface();
	itype.name = "Error";
	itype.proxy_name = "Error";
	itype.type = itype.name;
	itype.type_in = itype.type;
	itype.type_out = itype.type;
	itype.cs_type = itype.proxy_name;
	itype.cs_in = "(int)%0";
	itype.cs_out = "return (Error)%s;";
	itype.im_type_in = "int";
	itype.im_type_out = "int";
	builtin_types.insert(itype.name, itype);
}

void BindingsGenerator::populate_builtin_type(TypeInterface& r_itype, Variant::Type vtype)
{
	Variant::CallError cerror;
	Variant v = Variant::construct(vtype, NULL, 0, cerror);

	List<MethodInfo> method_list;
	v.get_method_list(&method_list);
	method_list.sort();

	for(List<MethodInfo>::Element *E = method_list.front(); E; E = E->next()) {
		MethodInfo &mi = E->get();
		MethodInterface imethod;

		imethod.name = mi.name;
		imethod.proxy_name = mi.name;

		for(int i = 0; i < mi.arguments.size(); i++) {
			ArgumentInterface iarg;
			PropertyInfo pi = mi.arguments[i];

			iarg.name = pi.name;

			if (pi.type == Variant::NIL)
				iarg.type = "Variant";
			else
				iarg.type = Variant::get_type_name(pi.type);

			if (!r_itype.requires_collections && (iarg.type.ends_with("Array") || iarg.type == "Dictionary"))
				r_itype.requires_collections = true;

			if ((mi.default_arguments.size() - mi.arguments.size() + i) >= 0)
				default_argument_from_variant(Variant::construct(pi.type, NULL, 0, cerror), iarg);

			imethod.add_argument(iarg);
		}

		if (mi.return_val.type == Variant::NIL) {
			if (mi.return_val.name != "")
				imethod.return_type = "Variant";
		} else {
			imethod.return_type = Variant::get_type_name(mi.return_val.type);
		}

		if (!r_itype.requires_collections && (imethod.return_type.ends_with("Array") || imethod.return_type == "Dictionary"))
			r_itype.requires_collections = true;

		r_itype.add_method(imethod);
	}
}

BindingsGenerator::BindingsGenerator(bool p_editor_api)
{
	editor_api = p_editor_api;

	generate_obj_types();
	generate_builtin_types();
}

#endif
