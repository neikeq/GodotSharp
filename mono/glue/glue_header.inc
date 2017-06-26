#include "../csharp_script.h"
#include "../mono_wrapper/gd_mono_class.h"
#include "../mono_wrapper/gd_mono_marshal.h"

#include "bind/core_bind.h"
#include "class_db.h"
#include "io/marshalls.h"
#include "object.h"
#include "reference.h"
#include "variant_parser.h"

#ifdef TOOLS_ENABLED
#include "editor/editor_node.h"
#endif

#define GODOTSHARP_INSTANCE_OBJECT(m_instance, m_type) \
	static ClassDB::ClassInfo *ci = NULL;              \
	if (!ci) {                                         \
		ci = ClassDB::classes.getptr(m_type);          \
	}                                                  \
	Object *m_instance = ci->creation_func();

void godot_icall_Object_Dtor(Object *ptr) {
	ERR_FAIL_NULL(ptr);

	if (ptr->get_script_instance()) {
		CSharpInstance *cs_instance = castCSharpInstance(ptr->get_script_instance());
		if (cs_instance) {
			cs_instance->mono_object_disposed();
			return;
		}
	}

	if (ptr->cast_to<Reference>()->unreference()) {
		memdelete(ptr);
	}
}

MethodBind *godot_icall_TypeDB_get_method(MonoString *type, MonoString *method) {
	StringName ctype(GDMonoMarshal::mono_string_to_godot(type));
	StringName cmethod(GDMonoMarshal::mono_string_to_godot(method));
	return ClassDB::get_method(ctype, cmethod);
}

NodePath *godot_icall_NodePath_Ctor(MonoString *path) {
	return memnew(NodePath(GDMonoMarshal::mono_string_to_godot(path)));
}

void godot_icall_NodePath_Dtor(NodePath *ptr) {
	memdelete(ptr);
}

RID *godot_icall_RID_Ctor(Object *from) {
	Resource *res_from = from->cast_to<Resource>();

	if (res_from)
		return memnew(RID(res_from->get_rid()));

	return memnew(RID);
}

void godot_icall_RID_Dtor(RID *ptr) {
	memdelete(ptr);
}

MonoString *godot_icall_NodePath_operator_String(NodePath *p_np) {
	return GDMonoMarshal::mono_string_from_godot(p_np->operator String());
}

MonoArray *godot_icall_String_md5_buffer(MonoString *p_str) {
	Vector<uint8_t> ret = GDMonoMarshal::mono_string_to_godot(p_str).md5_buffer();
	// TODO Check possible Array/Vector<uint8_t> problem?
	return GDMonoMarshal::Array_to_mono_array(Variant(ret));
}

MonoString *godot_icall_String_md5_text(MonoString *p_str) {
	String ret = GDMonoMarshal::mono_string_to_godot(p_str).md5_text();
	return GDMonoMarshal::mono_string_from_godot(ret);
}

int godot_icall_String_rfind(MonoString *p_str, MonoString *p_what, int p_from) {
	String what = GDMonoMarshal::mono_string_to_godot(p_what);
	return GDMonoMarshal::mono_string_to_godot(p_str).rfind(what, p_from);
}

int godot_icall_String_rfindn(MonoString *p_str, MonoString *p_what, int p_from) {
	String what = GDMonoMarshal::mono_string_to_godot(p_what);
	return GDMonoMarshal::mono_string_to_godot(p_str).rfindn(what, p_from);
}

MonoArray *godot_icall_String_sha256_buffer(MonoString *p_str) {
	Vector<uint8_t> ret = GDMonoMarshal::mono_string_to_godot(p_str).sha256_buffer();
	return GDMonoMarshal::Array_to_mono_array(Variant(ret));
}

MonoString *godot_icall_String_sha256_text(MonoString *p_str) {
	String ret = GDMonoMarshal::mono_string_to_godot(p_str).sha256_text();
	return GDMonoMarshal::mono_string_from_godot(ret);
}

MonoObject *godot_icall_Godot_bytes2var(MonoArray *p_bytes) {
	Variant ret;
	PoolByteArray varr = GDMonoMarshal::mono_array_to_PoolByteArray(p_bytes);
	PoolByteArray::Read r = varr.read();
	Error err = decode_variant(ret, r.ptr(), varr.size(), NULL);
	if (err != OK) {
		ret = RTR("Not enough bytes for decoding bytes, or invalid format.");
	}
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject *godot_icall_Godot_convert(MonoObject *p_what, int p_type) {
	Variant what = GDMonoMarshal::mono_object_to_variant(p_what);
	const Variant *args[1] = { &what };
	Variant::CallError ce;
	Variant ret = Variant::construct(Variant::Type(p_type), args, 1, ce);
	ERR_FAIL_COND_V(ce.error != Variant::CallError::CALL_OK, NULL);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

int godot_icall_Godot_hash(MonoObject *p_var) {
	return GDMonoMarshal::mono_object_to_variant(p_var).hash();
}

MonoObject *godot_icall_Godot_instance_from_id(int p_instance_id) {
	return GDMonoUtils::unmanaged_get_managed(ObjectDB::get_instance(p_instance_id));
}

void godot_icall_Godot_print(MonoArray *p_what) {
	Array what = GDMonoMarshal::mono_array_to_Array(p_what);
	String str;
	for (int i = 0; i < what.size(); i++)
		str += what[i].operator String();
	print_line(str);
}

void godot_icall_Godot_printerr(MonoArray *p_what) {
	Array what = GDMonoMarshal::mono_array_to_Array(p_what);
	String str;
	for (int i = 0; i < what.size(); i++)
		str += what[i].operator String();
	OS::get_singleton()->printerr("%s\n", str.utf8().get_data());
}

void godot_icall_Godot_printraw(MonoArray *p_what) {
	Array what = GDMonoMarshal::mono_array_to_Array(p_what);
	String str;
	for (int i = 0; i < what.size(); i++)
		str += what[i].operator String();
	OS::get_singleton()->print("%s", str.utf8().get_data());
}

void godot_icall_Godot_prints(MonoArray *p_what) {
	Array what = GDMonoMarshal::mono_array_to_Array(p_what);
	String str;
	for (int i = 0; i < what.size(); i++) {
		if (i)
			str += " ";
		str += what[i].operator String();
	}
	print_line(str);
}

void godot_icall_Godot_printt(MonoArray *p_what) {
	Array what = GDMonoMarshal::mono_array_to_Array(p_what);
	String str;
	for (int i = 0; i < what.size(); i++) {
		if (i)
			str += "\t";
		str += what[i].operator String();
	}
	print_line(str);
}

void godot_icall_Godot_seed(int p_seed) {
	Math::seed(p_seed);
}

MonoString *godot_icall_Godot_str(MonoArray *p_what) {
	String str;
	Array what = GDMonoMarshal::mono_array_to_Array(p_what);

	for (int i = 0; i < what.size(); i++) {
		String os = what[i].operator String();

		if (i == 0)
			str = os;
		else
			str += os;
	}

	return GDMonoMarshal::mono_string_from_godot(str);
}

MonoObject *godot_icall_Godot_str2var(MonoString *p_str) {
	Variant ret;

	VariantParser::StreamString ss;
	ss.s = GDMonoMarshal::mono_string_to_godot(p_str);

	String errs;
	int line;
	Error err = VariantParser::parse(&ss, ret, errs, line);
	if (err != OK) {
		String err_str = "Parse error at line " + itos(line) + ": " + errs;
		ERR_PRINTS(err_str);
		ret = err_str;
	}

	return GDMonoMarshal::variant_to_mono_object(ret);
}

bool godot_icall_Godot_type_exists(MonoString *p_type) {
	return ClassDB::class_exists(GDMonoMarshal::mono_string_to_godot(p_type));
}

MonoArray *godot_icall_Godot_var2bytes(MonoObject *p_var) {
	Variant var = GDMonoMarshal::mono_object_to_variant(p_var);

	PoolByteArray barr;
	int len;
	Error err = encode_variant(var, NULL, len);
	ERR_EXPLAIN("Unexpected error encoding variable to bytes, likely unserializable type found (Object or RID).");
	ERR_FAIL_COND_V(err != OK, NULL);

	barr.resize(len);
	{
		PoolByteArray::Write w = barr.write();
		encode_variant(var, w.ptr(), len);
	}

	return GDMonoMarshal::PoolByteArray_to_mono_array(barr);
}

MonoString *godot_icall_Godot_var2str(MonoObject *p_var) {
	String vars;
	VariantWriter::write_to_string(GDMonoMarshal::mono_object_to_variant(p_var), vars);
	return GDMonoMarshal::mono_string_from_godot(vars);
}

MonoObject *godot_icall_Godot_weakref(Object *p_obj) {
	if (!p_obj)
		return NULL;

	Ref<WeakRef> wref;
	Reference *ref = p_obj->cast_to<Reference>();

	if (ref) {
		REF r = ref;
		if (!r.is_valid())
			return NULL;

		wref.instance();
		wref->set_ref(r);
	} else {
		wref.instance();
		wref->set_obj(p_obj);
	}

	return GDMonoUtils::create_managed_for_godot_object(CACHED_CLASS(WeakRef), Reference::get_class_static(), wref.ptr()->cast_to<Object>());
}
