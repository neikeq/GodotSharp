#ifndef CS_BINDINGS_GENERATOR_H
#define CS_BINDINGS_GENERATOR_H

#if defined(TOOLS_ENABLED) && defined(DEBUG_METHODS_ENABLED)

#include "core/globals.h"
#include "core/reference.h"
#include "core/ustring.h"
#include "os/dir_access.h"
#include "os/file_access.h"

static void generate_cs_interfaces(const String& p_output_path)
{
	String output_path = p_output_path + (p_output_path.ends_with("/") ? "" : "/");

	bool dir_exists = DirAccess::exists(output_path);
	ERR_EXPLAIN("csintf: The output directory does not exist.\n");
	ERR_FAIL_COND(!dir_exists);

	Vector<String> cxx_reserved;
	cxx_reserved.push_back("alignas");
	cxx_reserved.push_back("alignof");
	cxx_reserved.push_back("and");
	cxx_reserved.push_back("and_eq");
	cxx_reserved.push_back("asm");
	cxx_reserved.push_back("auto");
	cxx_reserved.push_back("bitand");
	cxx_reserved.push_back("bitor");
	cxx_reserved.push_back("bool");
	cxx_reserved.push_back("break");
	cxx_reserved.push_back("case");
	cxx_reserved.push_back("catch");
	cxx_reserved.push_back("char");
	cxx_reserved.push_back("char16_t");
	cxx_reserved.push_back("char32_t");
	cxx_reserved.push_back("class");
	cxx_reserved.push_back("compl");
	cxx_reserved.push_back("const");
	cxx_reserved.push_back("constexpr");
	cxx_reserved.push_back("const_cast");
	cxx_reserved.push_back("continue");
	cxx_reserved.push_back("decltype");
	cxx_reserved.push_back("default");
	cxx_reserved.push_back("delete");
	cxx_reserved.push_back("do");
	cxx_reserved.push_back("double");
	cxx_reserved.push_back("dynamic_cast");
	cxx_reserved.push_back("else");
	cxx_reserved.push_back("enum");
	cxx_reserved.push_back("explicit");
	cxx_reserved.push_back("export");
	cxx_reserved.push_back("extern");
	cxx_reserved.push_back("false");
	cxx_reserved.push_back("float");
	cxx_reserved.push_back("for");
	cxx_reserved.push_back("friend");
	cxx_reserved.push_back("goto");
	cxx_reserved.push_back("if");
	cxx_reserved.push_back("inline");
	cxx_reserved.push_back("int");
	cxx_reserved.push_back("long");
	cxx_reserved.push_back("mutable");
	cxx_reserved.push_back("namespace");
	cxx_reserved.push_back("new");
	cxx_reserved.push_back("noexcept");
	cxx_reserved.push_back("not");
	cxx_reserved.push_back("not_eq");
	cxx_reserved.push_back("nullptr");
	cxx_reserved.push_back("operator");
	cxx_reserved.push_back("or");
	cxx_reserved.push_back("or_eq");
	cxx_reserved.push_back("private");
	cxx_reserved.push_back("protected");
	cxx_reserved.push_back("public");
	cxx_reserved.push_back("register");
	cxx_reserved.push_back("reinterpret_cast");
	cxx_reserved.push_back("return");
	cxx_reserved.push_back("short");
	cxx_reserved.push_back("signed");
	cxx_reserved.push_back("sizeof");
	cxx_reserved.push_back("static");
	cxx_reserved.push_back("static_assert");
	cxx_reserved.push_back("static_cast");
	cxx_reserved.push_back("struct");
	cxx_reserved.push_back("switch");
	cxx_reserved.push_back("template");
	cxx_reserved.push_back("this");
	cxx_reserved.push_back("thread_local");
	cxx_reserved.push_back("throw");
	cxx_reserved.push_back("true");
	cxx_reserved.push_back("try");
	cxx_reserved.push_back("typedef");
	cxx_reserved.push_back("typeid");
	cxx_reserved.push_back("typename");
	cxx_reserved.push_back("union");
	cxx_reserved.push_back("unsigned");
	cxx_reserved.push_back("using");
	cxx_reserved.push_back("virtual");
	cxx_reserved.push_back("void");
	cxx_reserved.push_back("volatile");
	cxx_reserved.push_back("wchar_t");
	cxx_reserved.push_back("while");
	cxx_reserved.push_back("xor");
	cxx_reserved.push_back("xor_eq");

	String base_template = "/* m%%TypeName%%.i */\n"
		"%module m%%TypeName%%\n"
		"\n"
		"%%Definitions%%\n"
		"%typemap(csbody) %%TypeName%% %{\n"
		"%%CSMembers%%\n"
		"  private global::System.Runtime.InteropServices.HandleRef swigCPtr;\n"
		"  protected bool swigCMemOwn;\n"
		"  \n"
		"  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) {\n"
		"    swigCMemOwn = cMemoryOwn;\n"
		"    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);\n"
		"  }\n"
		"  \n"
		"  protected $csclassname(bool cMemoryOwn) {\n"
		"    swigCMemOwn = cMemoryOwn;  \t\n"
		"  }\n"
		"  \n"
		"  internal void internal_init(global::System.IntPtr cPtr) {\n"
		"    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);\n"
		"  }\n"
		"  \n"
		"  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {\n"
		"    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;\n"
		"  }\n"
		"%}\n"
		"\n"
		"%typemap(cscode) %%TypeName%% %{\n"
		"%%CSCode%%\n"
		"%}\n"
		"\n"
		"%typemap(csconstruct, excode=SWIGEXCODE) %%TypeName%% %{: this(%%MemOwn%%) {\n"
		"    if (swigCPtr.Handle == global::System.IntPtr.Zero) {\n"
		"      internal_init($imcall);\n"
		"      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);\n"
		"    }$excode\n"
		"  }\n"
		"%}\n"
		"\n"
		"%nodefaultdtor %%TypeName%%;\n"
		"\n"
		"class %%TypeName%% {\n"
		"public:\n"
		"%%ClassPublicMembers%%\n"
		"};\n";

	String derived_template = "/* m%%TypeName%%.i */\n"
		"%module m%%TypeName%%\n"
		"\n"
		"%%Definitions%%\n"
		"%typemap(csbody_derived) %%TypeName%% %{\n"
		"%%CSMembers%%\n"
		"  private global::System.Runtime.InteropServices.HandleRef swigCPtr;\n"
		"  \n"
		"  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) : base($imclassname.$csclazznameSWIGUpcast(cPtr), cMemoryOwn) {\n"
		"    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);\n"
		"  }  \n"
		"  \n"
		"  protected $csclassname(bool cMemoryOwn) : base(cMemoryOwn) {}\n"
		"  \n"
		"  new internal void internal_init(global::System.IntPtr cPtr) {\n"
		"    base.internal_init($imclassname.$csclazznameSWIGUpcast(cPtr));\n"
		"    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);\n"
		"  }\n"
		"  \n"
		"  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {\n"
		"    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;\n"
		"  }\n"
		"%}\n"
		"\n"
		"%typemap(cscode) %%TypeName%% %{\n"
		"%%CSCode%%\n"
		"%}\n"
		"\n"
		"%typemap(csconstruct, excode=SWIGEXCODE) %%TypeName%% %{: this(%%MemOwn%%) {\n"
		"    if (swigCPtr.Handle == global::System.IntPtr.Zero) {\n"
		"      internal_init($imcall);\n"
		"      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);\n"
		"    }$excode\n"
		"  }\n"
		"%}\n"
		"\n"
		"%nodefaultdtor %%TypeName%%;\n"
		"\n"
		"class %%TypeName%% : public %%TypeBaseName%% {\n"
		"public:\n"
		"%%ClassPublicMembers%%\n"
		"};\n";

	List<StringName> classes;
	ObjectTypeDB::get_type_list(&classes);
	classes.sort_custom<StringName::AlphCompare>();

	Map<String, String> modules;
	List<String> remaining_modules;

	while (classes.size()) {
		String name = classes.front()->get();
		String inherits = ObjectTypeDB::type_inherits_from(name);

		// TODO Use category to organize generated proxy classes into namespaces?
		//String category = ObjectTypeDB::get_category(name);

		String content(inherits.empty() ? base_template : derived_template);

		List<MethodInfo> method_list;
		ObjectTypeDB::get_method_list(name, &method_list, true);
		method_list.sort();

		String cxx_public_members;

		for(List<MethodInfo>::Element *E = method_list.front(); E; E = E->next()) {
			int argc = E->get().arguments.size();
			if (E->get().name == "" || (E->get().name[0] == '_' && !(E->get().flags & METHOD_FLAG_VIRTUAL)))
				continue; // Hidden, don't count

			String method_name = E->get().name;
			String return_type = "void"; // void if missing?
			String arguments_decl;
			Vector<String> arguments;

			MethodBind *m = ObjectTypeDB::get_method(name, E->get().name);

			for(int i = -1; i < argc; i++) {
				PropertyInfo arginfo;

				if (i == -1) {
					arginfo = E->get().return_val;
#ifdef DEBUG_METHODS_ENABLED
					if (m && m->get_return_type() != StringName())
						return_type = m->get_return_type();
					else if (method_name.find(":") != -1) {
						return_type = method_name.get_slice(":",1);
						method_name = method_name.get_slice(":",0);
					} else if (arginfo.type != Variant::NIL)
#endif
					return_type = (arginfo.hint==PROPERTY_HINT_RESOURCE_TYPE) ? arginfo.hint_string : Variant::get_type_name(arginfo.type);
				} else {
					arginfo = E->get().arguments[i];

					String arg_type;
					String default_arg_text;

					if (arginfo.name.find(":") != -1) {
						arg_type = arginfo.name.get_slice(":", 1);
						arginfo.name = arginfo.name.get_slice(":", 0);
					} else if (arginfo.hint == PROPERTY_HINT_RESOURCE_TYPE) {
						arg_type = arginfo.hint_string;
					} else if (arginfo.type == Variant::NIL)
						arg_type = "Variant";
					else
						arg_type = Variant::get_type_name(arginfo.type);

					bool ref_type = ObjectTypeDB::is_type(arg_type, "Reference");

					if (m && m->has_default_argument(i)) {
						Variant default_arg = m->get_default_argument(i);
						default_arg_text = m->get_default_argument(i);

						switch(default_arg.get_type()) {
							case Variant::NIL:
								if (ref_type) {
									default_arg_text = "Ref<" + arg_type + ">()";
								} else if (ObjectTypeDB::is_type(arg_type, "Object")) {
									default_arg_text = "NULL";
								} else {
									default_arg_text = "Variant()";
								}
								break;
							// Atomic types
							case Variant::BOOL:
								default_arg_text = bool(default_arg) ? "true" : "false";
								break;
							case Variant::INT:
							case Variant::REAL:
								// Keep it
								break;
							case Variant::STRING: // 15
							case Variant::NODE_PATH: // 15
								default_arg_text = "\""+default_arg_text+"\"";
								break;
							case Variant::TRANSFORM:
								if (default_arg.operator Transform() == Transform())
									default_arg_text = "";
								default_arg_text = Variant::get_type_name(default_arg.get_type()) + "(" + default_arg_text + ")";
								break;
							case Variant::VECTOR2: // 5
							case Variant::RECT2:
							case Variant::VECTOR3:
							case Variant::PLANE:
							case Variant::QUAT:
							case Variant::_AABB: // 10
							case Variant::MATRIX3:
							case Variant::COLOR:
								default_arg_text = Variant::get_type_name(default_arg.get_type()) + "(" + default_arg_text + ")";
								break;
							case Variant::OBJECT:
							case Variant::INPUT_EVENT:
							case Variant::DICTIONARY: // 20
							case Variant::ARRAY:
							case Variant::_RID:
							case Variant::IMAGE:
							case Variant::MATRIX32:
							case Variant::RAW_ARRAY:
							case Variant::INT_ARRAY:
							case Variant::REAL_ARRAY:
							case Variant::STRING_ARRAY:	// 25
							case Variant::VECTOR2_ARRAY:
							case Variant::VECTOR3_ARRAY:
							case Variant::COLOR_ARRAY:
								default_arg_text = Variant::get_type_name(default_arg.get_type()) + "()";
								break;
							default: {}
						}
					}

					String arg_type_cxx = arg_type;

					if (arg_type_cxx == "String" || arg_type_cxx == "Vector2" || arg_type_cxx == "Rect2" || arg_type_cxx == "Matrix32" || arg_type_cxx == "Vector3" || arg_type_cxx == "Plane" || arg_type_cxx == "AABB" || arg_type_cxx == "Quat" || arg_type_cxx == "Matrix3" || arg_type_cxx == "Transform" || arg_type_cxx == "Color" || arg_type_cxx == "Image" || arg_type_cxx == "RID" || arg_type_cxx == "NodePath" || arg_type_cxx == "InputEvent" || arg_type_cxx == "Dictionary" || arg_type_cxx == "Array" || arg_type_cxx == "RawArray" || arg_type_cxx == "IntArray" || arg_type_cxx == "RealArray" || arg_type_cxx == "StringArray" || arg_type_cxx == "Vector2Array" || arg_type_cxx == "Vector3Array" || arg_type_cxx == "ColorArray" || arg_type_cxx == "Variant") {
						arg_type_cxx = "const " + arg_type_cxx + "&";
					} else if ((arg_type_cxx != "bool" && arg_type_cxx != "int" && arg_type_cxx != "float")) {
						// Object, Node or Control
						if (ref_type) {
							arg_type_cxx = "Ref<" + arg_type_cxx + ">";
						} else {
							arg_type_cxx += "*";
						}
					}

					String arg_name = arginfo.name;

					if (cxx_reserved.find(arg_name) > -1) {
						// Avoid C++ reserved keywords
						arg_name += "_";
					}

					if (i > 0)
						arguments_decl += ", ";

					if (arg_name.begins_with("arg")) {
						arg_name += "_";
					}

					arguments_decl += arg_type_cxx + " " + arg_name;

					if (!default_arg_text.empty())
						arguments_decl += " = " + default_arg_text;

					arguments.push_back(arg_name);
				}
			}

			if (name == "Object" && (method_name == "call" || method_name == "call_deferred" || method_name == "callv"))
				continue;

			String return_type_cxx = return_type;
			String optional_cast;

			if (return_type_cxx == "Nil") {
				return_type_cxx = "void";
			} else if (return_type_cxx == "Error") {
				return_type_cxx = "int";
			} else if (return_type_cxx != "void" && return_type_cxx != "bool" && return_type_cxx != "int" && return_type_cxx != "float" && return_type_cxx != "String" && return_type_cxx != "Vector2" && return_type_cxx != "Rect2" && return_type_cxx != "Matrix32" && return_type_cxx != "Vector3" && return_type_cxx != "Plane" && return_type_cxx != "AABB" && return_type_cxx != "Quat" && return_type_cxx != "Matrix3" && return_type_cxx != "Transform" && return_type_cxx != "Color" && return_type_cxx != "Image" && return_type_cxx != "RID" && return_type_cxx != "NodePath" && return_type_cxx != "InputEvent" && return_type_cxx != "Dictionary" && return_type_cxx != "Array" && return_type_cxx != "RawArray" && return_type_cxx != "IntArray" && return_type_cxx != "RealArray" && return_type_cxx != "StringArray" && return_type_cxx != "Vector2Array" && return_type_cxx != "Vector3Array" && return_type_cxx != "ColorArray" && return_type_cxx != "Variant") {
				// Object, Node or Control
				optional_cast = ".operator Object *()" + (return_type_cxx == "Object" ? "" : "->cast_to<" + return_type_cxx + ">()");

				if (ObjectTypeDB::is_type(return_type_cxx, "Reference")) {
					return_type_cxx = "Ref<" + return_type_cxx + ">";
				} else {
					return_type_cxx += "*";
				}
			}

			String arguments_joined;
			for (int i = 0; i < arguments.size(); i++) {
				arguments_joined += ", " + arguments[i];
			}

			String method_content;

			if (argc > 5) {
				String sargc = String::num(argc);

				method_content += "Variant::CallError err;\n";
				for (int i = 0; i < argc; i++) {
					method_content += "Variant arg_" + String::num(i) + "_ = Variant(" + arguments[i] + ");\n";
				}
				method_content += "Variant *args_[" + sargc + "] = { ";
				for (int i = 0; i < argc - 1; i++) {
					method_content += "&arg_" + String::num(i) + "_, ";
				}
				method_content += "&arg_" + String::num(argc - 1) + "_ };\n";
				method_content += (return_type_cxx == "void" ? "" : "return ");
				method_content += "$self->call(\"" + method_name + "\", (const Variant **) args_, " + sargc + ", err)";
			} else {
				method_content += "Object* self_obj = static_cast<Object*>($self);\n";
				method_content += return_type_cxx == "void" ? "  " : "  return ";
				method_content += "self_obj->call(\"" + method_name + "\"" + arguments_joined + ")";
			}

			cxx_public_members += "  %extend {\n    " + return_type_cxx + " " + method_name + "(" + arguments_decl + ") {\n" +
										"  " + method_content + optional_cast + ";\n    }\n  }\n";
		}

		List<String> constant_list;
		ObjectTypeDB::get_integer_constant_list(name, &constant_list, true);

		String definitions;
		String cs_members;
		String cs_code;

		String proxy_type_name = name;

		if (name == "Object") {
			definitions += "%define VARIANT_ARG_LIST const Variant& p_arg1 = Variant(), const Variant& p_arg2 = Variant(), const Variant& p_arg3 = Variant(), const Variant& p_arg4 = Variant(), const Variant& p_arg5 = Variant() %enddef\n\n";
			if (!cxx_public_members.empty())
				cxx_public_members += "\n";
			cxx_public_members += "  Variant call(const String& p_name, VARIANT_ARG_LIST);\n"
					"  void call_deferred(const String& p_method, VARIANT_ARG_LIST);\n"
					"  Variant callv(const String& p_method, const Array& p_args);\n";
		} else if (name.begins_with("_")) { // Proxy class
			proxy_type_name = name.substr(1, name.length());
			definitions += "%rename(" + proxy_type_name + ") %%TypeName%%;\n";
		}

		if (Globals::get_singleton()->has_singleton(proxy_type_name)) {
			cs_members += "  private static $csclassname instance;\n";
			cs_code += "  public static $csclassname Instance {\n"
					"    get {\n"
					"      if (instance == null) {\n"
					"        instance = SingletonGetInstance();\n"
					"      }\n"
					"      return instance;\n"
					"    }\n"
					"  }\n\n";
			cxx_public_members += "  %extend {\n"
					"    static %%TypeName%%* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object(\"%%ProxyTypeName%%\")->cast_to<%%TypeName%%>(); }\n"
					"  }\n";
			definitions += "%csmethodmodifiers %%TypeName%%::%%TypeName%% \"private\"\n";
			definitions += "%csmethodmodifiers %%TypeName%%::SingletonGetInstance \"private\"\n";
		}

		if (ObjectTypeDB::can_instance(name)) {
			if (name == "StreamPeerSSL" || name == "StreamPeerTCP" || name == "TCP_Server" || name == "PacketPeerUDP") {
				cxx_public_members += "  %extend {\n"
						"    %%TypeName%%() { return %%TypeName%%::create(); }\n"
						"  }\n";
			} else {
				cxx_public_members += "  %%TypeName%%();\n";
			}
		} else {
			definitions += "%nodefaultctor %%TypeName%%;\n";
			cs_code += "  internal $csclassname() {}\n";
		}

		// TODO It would be better to use C# enums... somehow
		for(List<String>::Element *E = constant_list.front(); E; E = E->next()) {
			cs_members += "  public static readonly int " + E->get() + " = " + itos(ObjectTypeDB::get_integer_constant(name, E->get())) + ";\n";
		}

		content = content
				.replace("%%Definitions%%", definitions)
				.replace("%%ClassPublicMembers%%", cxx_public_members)
				.replace("%%CSMembers%%", cs_members)
				.replace("%%CSCode%%", cs_code)
				.replace("%%TypeName%%", name)
				.replace("%%ProxyTypeName%%", proxy_type_name)
				.replace("%%TypeBaseName%%", inherits)
				.replace("%%MemOwn%%", ObjectTypeDB::is_type(name, "Reference") ? "true" : "false");

		String module_name = "m" + name + ".i";

		FileAccess *fclass = FileAccess::open(output_path + module_name, FileAccess::WRITE);
		if (fclass) {
			fclass->store_string(content);
			fclass->close();
			memdelete(fclass);
		}

		modules.insert(module_name, inherits == "" ? "" : "m" + inherits + ".i");
		remaining_modules.push_back(module_name);

		classes.pop_front();
	}

	FileAccess *fclass = FileAccess::open(output_path + "Include.i", FileAccess::WRITE);
	if (fclass) {
		fclass->store_string("%module Include\n\n");

		// Ensure types are defined before used as base. Required for SWIG inheritance to work.
		while (!remaining_modules.empty()) {
			List<String>::Element *E = remaining_modules.front();
			String inherits = modules.find(E->get())->get();
			if (!remaining_modules.find(inherits)) {
				fclass->store_string("%include " + E->get() + "\n");
				remaining_modules.erase(E);
			} else {
				remaining_modules.move_to_back(E);
			}
		}

		fclass->close();
		memdelete(fclass);
	}

	// TODO Built-in types

	// TODO Built-in constants and functions

	// TODO Built-in script reference
}

#endif

#endif // CS_BINDINGS_GENERATOR_H
