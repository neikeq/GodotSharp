#ifndef BINDINGS_GENERATOR_H
#define BINDINGS_GENERATOR_H

#include "core/object_type_db.h"

#if defined(TOOLS_ENABLED) && defined(DEBUG_METHODS_ENABLED)

#include "core/ustring.h"

class BindingsGenerator
{
	struct ArgumentInterface
	{
		enum DefaultParamMode
		{
			CONSTANT,
			NULLABLE_VAL,
			NULLABLE_REF
		};

		String type;
		String name;
		String default_argument;
		DefaultParamMode def_param_mode;

		ArgumentInterface()
		{
			def_param_mode = CONSTANT;
		}
	};

	struct MethodInterface
	{
		String name;
		String proxy_name;
		String return_type;
		bool has_vararg;

		List<ArgumentInterface> arguments;

		void add_argument(const ArgumentInterface& argument)
		{
			arguments.push_back(argument);
		}

		MethodInterface()
		{
			return_type = "void";
			has_vararg = false;
		}
	};

	struct TypeInterface
	{
		String name;
		String proxy_name;
		String base_name;

		bool is_object_type;

		bool is_singleton;
		bool is_instantiable;
		bool is_creatable;
		bool is_reference;
		bool memory_own;

		bool requires_collections;

		// C++

		/// Must be any number of statements
		/// Use it to matipulate the incoming parameter before passing it to the ptrcall
		/// If it results in a new variable, make sure to specify it with ptrcall_arg_pass
		/// Formatted to include the incoming parameter type as %0 and name as %1
		String in;
		/// Must be an expression
		/// Describes how to add the incoming parameter to the array of params that will be passed to ptrcall
		/// Formatted to include the incoming parameter name with %s or %0
		String call_arg_in;
		/// Must be any number of statements, including the return statement
		/// Describes how the resulting value will be returned from the internal call function
		/// Formatted to include the return variable type as %0 and name as %1
		String out;

		/// Actual expected type as in Variant copy constructors
		/// Object types: <name>*
		/// Atomic types: <name>
		String type;
		/// Incoming parameter type
		String type_in;
		/// Return type parameter
		String type_out;

		// C#

		/// Must be an expression
		/// Describes how to pass the incoming parameter to the internal call
		/// Formatted to include the incoming parameter name with %s or %0
		String cs_in;
		/// Must be any number of statements, including the return statement
		/// Describes how the resulting value will be returned from the method
		/// Formatted to include the return variable name with %s or %0
		String cs_out;

		/// Method parameter and return type
		String cs_type;
		/// Internal call parameter type
		String im_type_in;
		/// Internal call return type
		String im_type_out;

		List<MethodInterface> methods;

		void add_method(const MethodInterface& method)
		{
			methods.push_back(method);
		}

		static TypeInterface create_atomic_type(const String& p_name)
		{
			TypeInterface itype;

			itype.name = p_name;
			itype.proxy_name = p_name;

			itype.type = itype.name;
			itype.type_in = "void*";
			itype.type_out = "MonoObject*";
			itype.cs_type = itype.proxy_name;
			itype.im_type_in = "ref " + itype.proxy_name;
			itype.im_type_out = itype.proxy_name;

			return itype;
		}

		static TypeInterface create_object_type(const String& p_name)
		{
			TypeInterface itype;

			itype.name = p_name;
			itype.proxy_name = p_name.begins_with("_") ? p_name.substr(1, p_name.length()) : p_name;
			itype.is_object_type = true;

			return itype;
		}

		static TypeInterface create_placeholder_type(const String& p_name)
		{
			TypeInterface itype;

			itype.name = p_name;
			itype.proxy_name = p_name;

			itype.type = itype.name;
			itype.type_in = "MonoObject*";
			itype.type_out = "MonoObject*";
			itype.cs_type = itype.proxy_name;
			itype.im_type_in = itype.proxy_name;
			itype.im_type_out = itype.proxy_name;

			return itype;
		}

		TypeInterface()
		{
			is_object_type = false;

			is_singleton = false;
			is_instantiable = false;
			is_creatable = false;
			is_reference = false;
			memory_own = false;
			requires_collections = false;

			call_arg_in = "%s";
		}
	};

	struct InternalCall
	{
		String name;
		String im_sig; // Signature for the method declaration
		String return_type; // Return type for the method declaration and used together with unique_siq
		String unique_sig; // Unique signature to avoid duplicates

		InternalCall() {}

		InternalCall(const String& p_name, const String& p_ret_type, const String& p_im_sig = String(), const String& p_unique_sig = String())
		{
			name = p_name;
			im_sig = p_im_sig;
			return_type = p_ret_type;
			unique_sig = p_unique_sig;
		}

		inline bool operator==(const InternalCall& p_a) const
		{
			return p_a.unique_sig == unique_sig;
		}
	};

	bool editor_api;

	Map<String, TypeInterface> builtin_types;
	Map<String, TypeInterface> obj_types;

	Map<String, String> extra_members;

	List<InternalCall> method_icalls;
	List<InternalCall> custom_icalls;

	inline String get_unique_sig(const TypeInterface& p_type)
	{
		if (p_type.is_reference)
			return "Ref";
		else if (p_type.is_object_type)
			return "Obj";

		return p_type.name;
	}

	void generate_header_icalls();

	TypeInterface get_type_by_name(const String& name);

	void default_argument_from_variant(const Variant& p_var, ArgumentInterface& r_iarg);
	void populate_builtin_type(TypeInterface& r_type, Variant::Type vtype);

	void generate_obj_types();
	void generate_builtin_types();

	Error generate_cs_type(const TypeInterface& itype, const String& p_output_dir);

	Error save_file(const String& path, const List<String>& content);

public:
	Error generate_cs_project(String p_output_dir);
	Error generate_glue(String p_output_dir);

	BindingsGenerator(bool p_editor_api = true);
};

#endif

#endif // BINDINGS_GENERATOR_H
