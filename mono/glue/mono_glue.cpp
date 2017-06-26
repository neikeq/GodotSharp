#include "glue_header.inc"

int godot_icall_0_0(MethodBind* method, Object* ptr) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

void godot_icall_3_1(MethodBind* method, Object* ptr, int arg1, real_t* arg2, real_t arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_2(MethodBind* method, Object* ptr, int arg1) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

real_t godot_icall_1_3(MethodBind* method, Object* ptr, int arg1) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_1_4(MethodBind* method, Object* ptr, int arg1) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_5(MethodBind* method, Object* ptr, int arg1, int arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_6(MethodBind* method, Object* ptr, int arg1, int arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_2_7(MethodBind* method, Object* ptr, int arg1, int arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_0_8(MethodBind* method, Object* ptr) {
	ERR_FAIL_NULL(ptr);
	method->ptrcall(ptr, NULL, NULL);
}

int godot_icall_1_9(MethodBind* method, Object* ptr, real_t* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_10(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoArray* godot_icall_2_11(MethodBind* method, Object* ptr, int arg1, int arg2) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

MonoArray* godot_icall_2_12(MethodBind* method, Object* ptr, int arg1, int arg2) {
	PoolIntArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolIntArray_to_mono_array(ret);
}

Object* godot_icall_AStar_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AStar");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_13(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_1_14(MethodBind* method, Object* ptr, bool arg1) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_0_15(MethodBind* method, Object* ptr) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

MonoObject* godot_icall_3_16(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2, MonoString* arg3) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_1_17(MethodBind* method, Object* ptr, MonoString* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_1_18(MethodBind* method, Object* ptr, Object* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_1_19(MethodBind* method, Object* ptr, MonoString* arg1) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoString* godot_icall_0_20(MethodBind* method, Object* ptr) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

Object* godot_icall_AcceptDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AcceptDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_21(MethodBind* method, Object* ptr, Object* arg1) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_22(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_1_23(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_24(MethodBind* method, Object* ptr) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

Object* godot_icall_AnimatedSprite_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AnimatedSprite");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AnimatedSprite3D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AnimatedSprite3D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_2_25(MethodBind* method, Object* ptr, int arg1, int arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_26(MethodBind* method, Object* ptr, int arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

NodePath* godot_icall_1_27(MethodBind* method, Object* ptr, int arg1) {
	NodePath ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(NodePath(ret));
}

void godot_icall_2_28(MethodBind* method, Object* ptr, int arg1, NodePath* arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { &arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_1_29(MethodBind* method, Object* ptr, NodePath* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_30(MethodBind* method, Object* ptr, int arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_31(MethodBind* method, Object* ptr, int arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_5_32(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t* arg3, real_t* arg4, real_t* arg5) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	MARSHALLED_IN(Quat, arg4, arg4_in);
	MARSHALLED_IN(Vector3, arg5, arg5_in);
	const void* call_args[5] = { &arg1, &arg2, &arg3_in, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_33(MethodBind* method, Object* ptr, int arg1, real_t arg2, MonoObject* arg3, real_t arg4) {
	ERR_FAIL_NULL(ptr);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[4] = { &arg1, &arg2, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_34(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_35(MethodBind* method, Object* ptr, int arg1, int arg2, MonoObject* arg3) {
	ERR_FAIL_NULL(ptr);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_36(MethodBind* method, Object* ptr, int arg1, int arg2, real_t arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_37(MethodBind* method, Object* ptr, int arg1, int arg2) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_38(MethodBind* method, Object* ptr, int arg1, real_t arg2, bool arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_2_39(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_3_40(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t arg3) {
	PoolIntArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolIntArray_to_mono_array(ret);
}

MonoString* godot_icall_2_41(MethodBind* method, Object* ptr, int arg1, int arg2) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

MonoArray* godot_icall_2_42(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

void godot_icall_1_43(MethodBind* method, Object* ptr, real_t arg1) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_0_44(MethodBind* method, Object* ptr) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

Object* godot_icall_Animation_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Animation");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_2_45(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_46(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_47(MethodBind* method, Object* ptr, MonoString* arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_48(MethodBind* method, Object* ptr, MonoString* arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoArray* godot_icall_0_49(MethodBind* method, Object* ptr) {
	PoolStringArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::PoolStringArray_to_mono_array(ret);
}

MonoString* godot_icall_1_50(MethodBind* method, Object* ptr, MonoString* arg1) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_3_51(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, real_t arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_52(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_53(MethodBind* method, Object* ptr, MonoString* arg1, real_t arg2, real_t arg3, bool arg4) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_54(MethodBind* method, Object* ptr, MonoString* arg1, real_t arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_55(MethodBind* method, Object* ptr, NodePath* arg1) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

NodePath* godot_icall_0_56(MethodBind* method, Object* ptr) {
	NodePath ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return memnew(NodePath(ret));
}

void godot_icall_2_57(MethodBind* method, Object* ptr, real_t arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoString* godot_icall_1_58(MethodBind* method, Object* ptr, Object* arg1) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

Object* godot_icall_AnimationPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AnimationPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_59(MethodBind* method, Object* ptr, int arg1, MonoString* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_2_60(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_61(MethodBind* method, Object* ptr, MonoString* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoString* godot_icall_2_62(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_2_63(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_64(MethodBind* method, Object* ptr, MonoString* arg1, NodePath* arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_1_65(MethodBind* method, Object* ptr, MonoString* arg1) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_66(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_67(MethodBind* method, Object* ptr, MonoString* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_68(MethodBind* method, Object* ptr, MonoString* arg1) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

void godot_icall_2_69(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_70(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_2_71(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_72(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, int arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_3_73(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, int arg3) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_AnimationTreePlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AnimationTreePlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_74(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_75(MethodBind* method, Object* ptr) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoArray* godot_icall_0_76(MethodBind* method, Object* ptr) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

bool godot_icall_1_77(MethodBind* method, Object* ptr, Object* arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_Area_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Area");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Area2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Area2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoString* godot_icall_1_78(MethodBind* method, Object* ptr, int arg1) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_4_79(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2, MonoArray* arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_80(MethodBind* method, Object* ptr, int arg1, Object* arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { &arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_81(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_1_82(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_83(MethodBind* method, Object* ptr) {
	Rect3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Rect3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect3), ret_out);
}

Object* godot_icall_ArrayMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ArrayMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_84(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_1_85(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_86(MethodBind* method, Object* ptr) {
	Rect2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Rect2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect2), ret_out);
}

Object* godot_icall_AtlasTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AtlasTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioBusLayout_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioBusLayout");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectAmplify_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectAmplify");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectBandLimitFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectBandLimitFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectBandPassFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectBandPassFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectChorus_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectChorus");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectCompressor_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectCompressor");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectDelay_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectDelay");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectDistortion_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectDistortion");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectEQ10_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectEQ10");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectEQ21_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectEQ21");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectEQ6_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectEQ6");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectHighPassFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectHighPassFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectHighShelfFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectHighShelfFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectLimiter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectLimiter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectLowPassFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectLowPassFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectLowShelfFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectLowShelfFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectNotchFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectNotchFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectPanner_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectPanner");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectPhaser_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectPhaser");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectPitchShift_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectPitchShift");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectReverb_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectReverb");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioEffectStereoEnhance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioEffectStereoEnhance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_87(MethodBind* method, Object* ptr, int arg1, Object* arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_88(MethodBind* method, Object* ptr, int arg1, Object* arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_89(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_3_90(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_91(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_AudioServer_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("AudioServer");
}

void godot_icall_1_92(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	PoolByteArray arg1_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_93(MethodBind* method, Object* ptr) {
	PoolByteArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::PoolByteArray_to_mono_array(ret);
}

Object* godot_icall_AudioStreamOGGVorbis_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioStreamOGGVorbis");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioStreamPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioStreamPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioStreamPlayer2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioStreamPlayer2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_AudioStreamSample_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioStreamSample");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_BackBufferCopy_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BackBufferCopy");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_94(MethodBind* method, Object* ptr, Object* arg1) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_95(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_96(MethodBind* method, Object* ptr, real_t* arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_97(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_BitMap_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BitMap");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_5_98(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3, real_t* arg4, real_t arg5) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[5] = { &arg1, &arg2, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_99(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_2_100(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

Object* godot_icall_BitmapFont_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BitmapFont");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_BoneAttachment_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BoneAttachment");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_BoxShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BoxShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Button_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Button");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_101(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_ButtonGroup_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ButtonGroup");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_102(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg1);
	int total_length = 0 + vararg_length;
	ERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, NULL);
	Vector<Variant*> call_args;
	ERR_FAIL_COND_V(call_args.resize(total_length) != OK, NULL);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg1, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(0 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	ret = method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_CSharpScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CSharpScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_103(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_1_104(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

bool godot_icall_1_105(MethodBind* method, Object* ptr, real_t* arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_106(MethodBind* method, Object* ptr, real_t arg1, real_t arg2, real_t arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_107(MethodBind* method, Object* ptr) {
	Transform ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

MonoObject* godot_icall_0_108(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_Camera_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Camera");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_109(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Camera2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Camera2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_110(MethodBind* method, Object* ptr, MonoObject* arg1) {
	ERR_FAIL_NULL(ptr);
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_111(MethodBind* method, Object* ptr) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

RID* godot_icall_0_112(MethodBind* method, Object* ptr) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return memnew(RID(ret));
}

void godot_icall_1_113(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Color, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_114(MethodBind* method, Object* ptr) {
	Color ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

void godot_icall_5_115(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t arg4, bool arg5) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_116(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg1, arg1_in);
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_117(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_118(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, real_t* arg3, Object* arg4) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[4] = { arg1, &arg2_in, &arg3_in, arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_6_119(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, bool arg3, real_t* arg4, bool arg5, Object* arg6) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[6] = { arg1, &arg2_in, &arg3, &arg4_in, &arg5, arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_7_120(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, real_t* arg3, real_t* arg4, bool arg5, Object* arg6, bool arg7) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[7] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5, arg6, &arg7 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_121(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_6_122(MethodBind* method, Object* ptr, MonoArray* arg1, MonoArray* arg2, MonoArray* arg3, Object* arg4, real_t arg5, Object* arg6) {
	ERR_FAIL_NULL(ptr);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	PoolColorArray arg2_in = GDMonoMarshal::mono_array_to_PoolColorArray(arg2);
	PoolVector2Array arg3_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg3);
	const void* call_args[6] = { &arg1_in, &arg2_in, &arg3_in, arg4, &arg5, arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_123(MethodBind* method, Object* ptr, MonoArray* arg1, MonoArray* arg2, MonoArray* arg3, Object* arg4, Object* arg5) {
	ERR_FAIL_NULL(ptr);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	PoolColorArray arg2_in = GDMonoMarshal::mono_array_to_PoolColorArray(arg2);
	PoolVector2Array arg3_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, arg4, arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_124(MethodBind* method, Object* ptr, MonoArray* arg1, real_t* arg2, MonoArray* arg3, Object* arg4, Object* arg5) {
	ERR_FAIL_NULL(ptr);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	MARSHALLED_IN(Color, arg2, arg2_in);
	PoolVector2Array arg3_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, arg4, arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_125(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, MonoString* arg3, real_t* arg4, int arg5) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_5_126(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, MonoString* arg3, MonoString* arg4, real_t* arg5) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	String arg4_in = GDMonoMarshal::mono_string_to_godot(arg4);
	MARSHALLED_IN(Color, arg5, arg5_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_127(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_128(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform2D, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_129(MethodBind* method, Object* ptr) {
	Transform2D ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Transform2D, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform2D), ret_out);
}

MonoObject* godot_icall_0_130(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_1_131(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_1_132(MethodBind* method, Object* ptr, Object* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_CanvasItemMaterial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CanvasItemMaterial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_133(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_CanvasLayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CanvasLayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CanvasModulate_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CanvasModulate");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CapsuleMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CapsuleMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CapsuleShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CapsuleShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CapsuleShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CapsuleShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CenterContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CenterContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CheckBox_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CheckBox");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CheckButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CheckButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CircleShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CircleShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_134(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_135(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_136(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_1_137(MethodBind* method, Object* ptr, int arg1) {
	Transform ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

void godot_icall_1_138(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_139(MethodBind* method, Object* ptr) {
	PoolVector2Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::PoolVector2Array_to_mono_array(ret);
}

Object* godot_icall_CollisionPolygon_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CollisionPolygon");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CollisionPolygon2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CollisionPolygon2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CollisionShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CollisionShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CollisionShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CollisionShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ColorPicker_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ColorPicker");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_140(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_ColorPickerButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ColorPickerButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ColorRect_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ColorRect");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_141(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	PoolVector3Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector3Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_142(MethodBind* method, Object* ptr) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

Object* godot_icall_ConcavePolygonShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConcavePolygonShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ConcavePolygonShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConcavePolygonShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ConeTwistJoint_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConeTwistJoint");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_143(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, MonoObject* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_3_144(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, MonoObject* arg3) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

bool godot_icall_2_145(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_146(MethodBind* method, Object* ptr, MonoString* arg1) {
	PoolStringArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolStringArray_to_mono_array(ret);
}

Error godot_icall_1_147(MethodBind* method, Object* ptr, MonoString* arg1) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_ConfigFile_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConfigFile");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_148(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_ConfirmationDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConfirmationDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_149(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Container_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Container");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_150(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_0_151(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_2_152(MethodBind* method, Object* ptr, MonoString* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_153(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_2_154(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_2_155(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_2_156(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Color ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

MonoString* godot_icall_1_157(MethodBind* method, Object* ptr, real_t* arg1) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

int godot_icall_1_158(MethodBind* method, Object* ptr, real_t* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_159(MethodBind* method, Object* ptr, MonoObject* arg1, Object* arg2) {
	ERR_FAIL_NULL(ptr);
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Control_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Control");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ConvexPolygonShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConvexPolygonShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ConvexPolygonShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConvexPolygonShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_160(MethodBind* method, Object* ptr, int arg1, Object* arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { &arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_161(MethodBind* method, Object* ptr, int arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_CubeMap_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CubeMap");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CubeMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CubeMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_3_162(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2, real_t arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_163(MethodBind* method, Object* ptr, int arg1) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

real_t godot_icall_1_164(MethodBind* method, Object* ptr, real_t arg1) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_Curve_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Curve");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_165(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_166(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_167(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_1_168(MethodBind* method, Object* ptr, real_t arg1) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_2_169(MethodBind* method, Object* ptr, real_t arg1, bool arg2) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoArray* godot_icall_2_170(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	PoolVector2Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector2Array_to_mono_array(ret);
}

Object* godot_icall_Curve2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Curve2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_171(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_172(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_173(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_1_174(MethodBind* method, Object* ptr, real_t arg1) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_2_175(MethodBind* method, Object* ptr, real_t arg1, bool arg2) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoArray* godot_icall_0_176(MethodBind* method, Object* ptr) {
	PoolRealArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::PoolRealArray_to_mono_array(ret);
}

MonoArray* godot_icall_2_177(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

Object* godot_icall_Curve3D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Curve3D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_178(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_CurveTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CurveTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_CylinderMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CylinderMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_DampedSpringJoint2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "DampedSpringJoint2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_DirectionalLight_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "DirectionalLight");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_179(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_1_180(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_DynamicFont_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "DynamicFont");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_DynamicFontData_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "DynamicFontData");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_181(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_EditorFileDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorFileDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_182(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_1_183(MethodBind* method, Object* ptr, MonoString* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_EditorFileSystem_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorFileSystem");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_EditorFileSystemDirectory_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorFileSystemDirectory");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_EditorImportPlugin_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorImportPlugin");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_2_184(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_2_185(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_186(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, Object* arg3, Object* arg4) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[4] = { &arg1_in, &arg2_in, arg3, arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_187(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_0_188(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_2_189(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_190(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_0_191(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_0_192(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_EditorPlugin_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorPlugin");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_193(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3, MonoObject* arg4) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { &arg1_in, arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_194(MethodBind* method, Object* ptr, Object* arg1, Object* arg2, MonoString* arg3, MonoObject* arg4) {
	ERR_FAIL_NULL(ptr);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { arg1, arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_EditorResourcePreview_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorResourcePreview");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_EditorResourcePreviewGenerator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorResourcePreviewGenerator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_EditorScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_EditorSelection_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorSelection");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_195(MethodBind* method, Object* ptr, MonoObject* arg1) {
	ERR_FAIL_NULL(ptr);
	Dictionary arg1_in = GDMonoMarshal::mono_object_to_Dictionary(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_196(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	PoolStringArray arg1_in = GDMonoMarshal::mono_array_to_PoolStringArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_EditorSettings_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorSettings");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_197(MethodBind* method, Object* ptr, MonoArray* arg1, Object* arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	PoolVector3Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector3Array(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_198(MethodBind* method, Object* ptr, Object* arg1, bool arg2, RID* arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { arg1, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_199(MethodBind* method, Object* ptr, Object* arg1, real_t arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_200(MethodBind* method, Object* ptr, MonoArray* arg1, bool arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	PoolVector3Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector3Array(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_EditorSpatialGizmo_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorSpatialGizmo");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_201(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_Environment_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Environment");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_FileDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "FileDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_5_202(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, MonoString* arg3, real_t* arg4, int arg5) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_5_203(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, int arg3, int arg4, real_t* arg5) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg5, arg5_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3, &arg4, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_204(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg1);
	int total_length = 0 + vararg_length;
	ERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, NULL);
	Vector<Variant*> call_args;
	ERR_FAIL_COND_V(call_args.resize(total_length) != OK, NULL);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg1, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(0 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	ret = method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

Object* godot_icall_FuncRef_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "FuncRef");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_205(MethodBind* method, Object* ptr, MonoObject* arg1) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

bool godot_icall_1_206(MethodBind* method, Object* ptr, bool arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_GDNativeLibrary_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GDNativeLibrary");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_GDNativeScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GDNativeScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_GDScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GDScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_207(MethodBind* method, Object* ptr, Object* arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_GIProbe_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GIProbe");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_208(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_209(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	PoolIntArray arg1_in = GDMonoMarshal::mono_array_to_PoolIntArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_210(MethodBind* method, Object* ptr) {
	PoolIntArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::PoolIntArray_to_mono_array(ret);
}

Object* godot_icall_GIProbeData_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GIProbeData");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Generic6DOFJoint_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Generic6DOFJoint");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_211(MethodBind* method, Object* ptr, MonoString* arg1, MonoObject* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_212(MethodBind* method, Object* ptr, MonoString* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_GlobalConfig_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("GlobalConfig");
}

void godot_icall_2_213(MethodBind* method, Object* ptr, real_t arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_214(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_215(MethodBind* method, Object* ptr, int arg1) {
	Color ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

MonoObject* godot_icall_1_216(MethodBind* method, Object* ptr, real_t arg1) {
	Color ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

void godot_icall_1_217(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	PoolRealArray arg1_in = GDMonoMarshal::mono_array_to_PoolRealArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_218(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	PoolColorArray arg1_in = GDMonoMarshal::mono_array_to_PoolColorArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_219(MethodBind* method, Object* ptr) {
	PoolColorArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::PoolColorArray_to_mono_array(ret);
}

Object* godot_icall_Gradient_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Gradient");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_220(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_GradientTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GradientTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_4_221(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3, int arg4) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_4_222(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3, int arg4) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_223(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_GraphEdit_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GraphEdit");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_9_224(MethodBind* method, Object* ptr, int arg1, bool arg2, int arg3, real_t* arg4, bool arg5, int arg6, real_t* arg7, Object* arg8, Object* arg9) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Color, arg4, arg4_in);
	MARSHALLED_IN(Color, arg7, arg7_in);
	const void* call_args[9] = { &arg1, &arg2, &arg3, &arg4_in, &arg5, &arg6, &arg7_in, arg8, arg9 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_GraphNode_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GraphNode");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_GridContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GridContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_225(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_5_226(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4, int arg5) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_3_227(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_228(MethodBind* method, Object* ptr, bool arg1, bool arg2, int arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_2_229(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Rect3, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_230(MethodBind* method, Object* ptr, int arg1) {
	Rect3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Rect3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect3), ret_out);
}

Object* godot_icall_GridMap_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GridMap");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_GrooveJoint2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GrooveJoint2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_HBoxContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HBoxContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_HScrollBar_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HScrollBar");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_HSeparator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HSeparator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_HSlider_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HSlider");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_HSplitContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HSplitContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_4_231(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, bool arg3, bool arg4) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_0_232(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

int godot_icall_4_233(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoArray* arg3, MonoArray* arg4) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	PoolStringArray arg3_in = GDMonoMarshal::mono_array_to_PoolStringArray(arg3);
	PoolByteArray arg4_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg4);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_4_234(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoArray* arg3, MonoString* arg4) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	PoolStringArray arg3_in = GDMonoMarshal::mono_array_to_PoolStringArray(arg3);
	String arg4_in = GDMonoMarshal::mono_string_to_godot(arg4);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_235(MethodBind* method, Object* ptr, MonoArray* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	PoolByteArray arg1_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_0_236(MethodBind* method, Object* ptr) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

Error godot_icall_0_237(MethodBind* method, Object* ptr) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

MonoString* godot_icall_1_238(MethodBind* method, Object* ptr, MonoObject* arg1) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	Dictionary arg1_in = GDMonoMarshal::mono_object_to_Dictionary(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

Object* godot_icall_HTTPClient_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HTTPClient");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_5_239(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2, bool arg3, int arg4, MonoString* arg5) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	PoolStringArray arg2_in = GDMonoMarshal::mono_array_to_PoolStringArray(arg2);
	String arg5_in = GDMonoMarshal::mono_string_to_godot(arg5);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3, &arg4, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_HTTPRequest_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HTTPRequest");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_HingeJoint_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HingeJoint");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_2_240(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_IP_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("IP");
}

void godot_icall_4_241(MethodBind* method, Object* ptr, int arg1, int arg2, bool arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_242(MethodBind* method, Object* ptr, int arg1, int arg2, bool arg3, int arg4, MonoArray* arg5) {
	ERR_FAIL_NULL(ptr);
	PoolByteArray arg5_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg5);
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5_in };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_3_243(MethodBind* method, Object* ptr, int arg1, int arg2, real_t arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_244(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_245(MethodBind* method, Object* ptr, Object* arg1, Object* arg2, real_t* arg3, real_t* arg4) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { arg1, arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_246(MethodBind* method, Object* ptr, real_t* arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Rect2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_3_247(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_248(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Color ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

Object* godot_icall_Image_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Image");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_249(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_250(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_251(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_ImageTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ImageTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_252(MethodBind* method, Object* ptr, real_t* arg1) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Plane, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_253(MethodBind* method, Object* ptr, int arg1, int arg2, real_t arg3, bool arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_ImmediateGeometry_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ImmediateGeometry");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_254(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t arg3, real_t arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_255(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Input_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("Input");
}

bool godot_icall_1_256(MethodBind* method, Object* ptr, Object* arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_2_257(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Transform2D, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_InputEventAction_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventAction");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_InputEventJoypadButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventJoypadButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_InputEventJoypadMotion_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventJoypadMotion");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_InputEventKey_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventKey");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_InputEventMouseButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventMouseButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_InputEventMouseMotion_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventMouseMotion");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_InputEventScreenDrag_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventScreenDrag");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_InputEventScreenTouch_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InputEventScreenTouch");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

bool godot_icall_2_258(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_259(MethodBind* method, Object* ptr, MonoString* arg1) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

bool godot_icall_2_260(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_InputMap_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("InputMap");
}

MonoObject* godot_icall_1_261(MethodBind* method, Object* ptr, bool arg1) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

Object* godot_icall_InterpolatedCamera_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InterpolatedCamera");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_262(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_263(MethodBind* method, Object* ptr, Object* arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_264(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_265(MethodBind* method, Object* ptr, int arg1) {
	Rect2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Rect2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect2), ret_out);
}

void godot_icall_2_266(MethodBind* method, Object* ptr, int arg1, MonoObject* arg2) {
	ERR_FAIL_NULL(ptr);
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_2_267(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_ItemList_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ItemList");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_7_268(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t arg4, int arg5, real_t arg6, real_t arg7) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[7] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5, &arg6, &arg7 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

Object* godot_icall_KinematicBody_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "KinematicBody");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_269(MethodBind* method, Object* ptr, real_t* arg1) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

MonoObject* godot_icall_5_270(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t arg3, int arg4, real_t arg5) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

bool godot_icall_2_271(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Transform2D, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_KinematicBody2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "KinematicBody2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Label_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Label");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_2_272(MethodBind* method, Object* ptr, real_t* arg1, Object* arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_LargeTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "LargeTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Light2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Light2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_273(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_LightOccluder2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "LightOccluder2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Line2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Line2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_274(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_LineEdit_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "LineEdit");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_LineShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "LineShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_LinkButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "LinkButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Listener_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Listener");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

bool godot_icall_1_275(MethodBind* method, Object* ptr, real_t arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_MainLoop_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MainLoop");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_MarginContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MarginContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_MenuButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MenuButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_276(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_1_277(MethodBind* method, Object* ptr, real_t arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_0_278(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

int godot_icall_2_279(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_280(MethodBind* method, Object* ptr, Object* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_281(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Plane, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_282(MethodBind* method, Object* ptr, int arg1) {
	Plane ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Plane, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Plane), ret_out);
}

void godot_icall_2_283(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	ERR_FAIL_NULL(ptr);
	PoolIntArray arg2_in = GDMonoMarshal::mono_array_to_PoolIntArray(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_284(MethodBind* method, Object* ptr, int arg1) {
	PoolIntArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolIntArray_to_mono_array(ret);
}

void godot_icall_2_285(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	ERR_FAIL_NULL(ptr);
	PoolRealArray arg2_in = GDMonoMarshal::mono_array_to_PoolRealArray(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_286(MethodBind* method, Object* ptr, int arg1) {
	PoolRealArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolRealArray_to_mono_array(ret);
}

Object* godot_icall_MeshDataTool_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MeshDataTool");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_287(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_MeshInstance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MeshInstance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_288(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_1_289(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_MeshLibrary_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MeshLibrary");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_MultiMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MultiMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_MultiMeshInstance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MultiMeshInstance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_3_290(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, Object* arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[3] = { arg1, &arg2_in, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_3_291(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, bool arg3) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

MonoObject* godot_icall_3_292(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, bool arg3) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_1_293(MethodBind* method, Object* ptr, real_t* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Navigation_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Navigation");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_3_294(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, Object* arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	MARSHALLED_IN(Transform2D, arg2, arg2_in);
	const void* call_args[3] = { arg1, &arg2_in, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_295(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform2D, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_3_296(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, bool arg3) {
	PoolVector2Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector2Array_to_mono_array(ret);
}

MonoObject* godot_icall_1_297(MethodBind* method, Object* ptr, real_t* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Navigation2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Navigation2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_NavigationMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NavigationMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_NavigationMeshInstance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NavigationMeshInstance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_298(MethodBind* method, Object* ptr, MonoArray* arg1, int arg2) {
	ERR_FAIL_NULL(ptr);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_299(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	ERR_FAIL_NULL(ptr);
	PoolVector2Array arg2_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_300(MethodBind* method, Object* ptr, int arg1) {
	PoolVector2Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector2Array_to_mono_array(ret);
}

Object* godot_icall_NavigationPolygon_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NavigationPolygon");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_301(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_NavigationPolygonInstance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NavigationPolygonInstance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_4_302(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_4_303(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_NetworkedMultiplayerENet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NetworkedMultiplayerENet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_NinePatchRect_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NinePatchRect");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_304(MethodBind* method, Object* ptr, int arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

bool godot_icall_1_305(MethodBind* method, Object* ptr, NodePath* arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_306(MethodBind* method, Object* ptr, NodePath* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_0_307(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_3_308(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2, bool arg3) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoArray* godot_icall_1_309(MethodBind* method, Object* ptr, NodePath* arg1) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

NodePath* godot_icall_1_310(MethodBind* method, Object* ptr, Object* arg1) {
	NodePath ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(NodePath(ret));
}

void godot_icall_2_311(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_312(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_2_313(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	ERR_FAIL_NULL(ptr);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg2);
	int total_length = 1 + vararg_length;
	ERR_FAIL_COND(varargs.resize(vararg_length) != OK);
	Vector<Variant*> call_args;
	ERR_FAIL_COND(call_args.resize(total_length) != OK);
	Variant arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	call_args.set(0, &arg1_in);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg2, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(1 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
}

void godot_icall_3_314(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoArray* arg3) {
	ERR_FAIL_NULL(ptr);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg3);
	int total_length = 2 + vararg_length;
	ERR_FAIL_COND(varargs.resize(vararg_length) != OK);
	Vector<Variant*> call_args;
	ERR_FAIL_COND(call_args.resize(total_length) != OK);
	Variant arg1_in = arg1;
	call_args.set(0, &arg1_in);
	Variant arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	call_args.set(0, &arg2_in);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg3, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(2 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
}

void godot_icall_3_315(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoObject* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Node_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Node");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

real_t godot_icall_1_316(MethodBind* method, Object* ptr, real_t* arg1) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_317(MethodBind* method, Object* ptr, Object* arg1) {
	Transform2D ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform2D, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform2D), ret_out);
}

Object* godot_icall_Node2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Node2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_318(MethodBind* method, Object* ptr, MonoString* arg1) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject* godot_icall_0_319(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_2_320(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_321(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg2);
	int total_length = 1 + vararg_length;
	ERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, NULL);
	Vector<Variant*> call_args;
	ERR_FAIL_COND_V(call_args.resize(total_length) != OK, NULL);
	Variant arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	call_args.set(0, &arg1_in);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg2, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(1 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	ret = method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject* godot_icall_2_322(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

int godot_icall_5_323(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3, MonoArray* arg4, int arg5) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Array arg4_in = GDMonoMarshal::mono_array_to_Array(arg4);
	const void* call_args[5] = { &arg1_in, arg2, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_324(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_3_325(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_Object_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Object");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_OccluderPolygon2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "OccluderPolygon2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_OmniLight_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "OmniLight");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_326(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_OptionButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "OptionButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_1_327(MethodBind* method, Object* ptr, bool arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_PCKPacker_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PCKPacker");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PHashTranslation_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PHashTranslation");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_1_328(MethodBind* method, Object* ptr, MonoObject* arg1) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_PackedDataContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PackedDataContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_329(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_PackedScene_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PackedScene");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_1_330(MethodBind* method, Object* ptr, MonoObject* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Error godot_icall_1_331(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	PoolByteArray arg1_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_PacketPeerStream_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PacketPeerStream");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_3_332(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, int arg3) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_PacketPeerUDP_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PacketPeerUDP");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Panel_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Panel");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PanelContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PanelContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PanoramaSky_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PanoramaSky");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ParallaxBackground_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ParallaxBackground");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ParallaxLayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ParallaxLayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Particles_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Particles");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Particles2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Particles2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_333(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_0_334(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_ParticlesMaterial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ParticlesMaterial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_335(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_Path_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Path");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_336(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_Path2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Path2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PathFollow_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PathFollow");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PathFollow2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PathFollow2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Performance_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("Performance");
}

RID* godot_icall_1_337(MethodBind* method, Object* ptr, int arg1) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

MonoObject* godot_icall_1_338(MethodBind* method, Object* ptr, int arg1) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject* godot_icall_0_339(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoArray* godot_icall_5_340(MethodBind* method, Object* ptr, real_t* arg1, int arg2, MonoArray* arg3, int arg4, int arg5) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_5_341(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, MonoArray* arg3, int arg4, int arg5) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

MonoArray* godot_icall_2_342(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_1_343(MethodBind* method, Object* ptr, Object* arg1) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_1_344(MethodBind* method, Object* ptr, Object* arg1) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

void godot_icall_2_345(MethodBind* method, Object* ptr, RID* arg1, MonoObject* arg2) {
	ERR_FAIL_NULL(ptr);
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_1_346(MethodBind* method, Object* ptr, RID* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_1_347(MethodBind* method, Object* ptr, RID* arg1) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_348(MethodBind* method, Object* ptr, RID* arg1, bool arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_349(MethodBind* method, Object* ptr, RID* arg1) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_350(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_351(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_352(MethodBind* method, Object* ptr, RID* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_2_353(MethodBind* method, Object* ptr, RID* arg1, RID* arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_1_354(MethodBind* method, Object* ptr, RID* arg1) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_2_355(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_356(MethodBind* method, Object* ptr, RID* arg1, RID* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform2D, arg3, arg3_in);
	const void* call_args[3] = { arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_357(MethodBind* method, Object* ptr, RID* arg1, int arg2, RID* arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { arg1, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_358(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform2D, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_359(MethodBind* method, Object* ptr, RID* arg1, int arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_2_360(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

MonoObject* godot_icall_2_361(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	Transform2D ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform2D, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform2D), ret_out);
}

void godot_icall_3_362(MethodBind* method, Object* ptr, RID* arg1, int arg2, MonoObject* arg3) {
	ERR_FAIL_NULL(ptr);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_363(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform2D, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_364(MethodBind* method, Object* ptr, RID* arg1) {
	Transform2D ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform2D, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform2D), ret_out);
}

void godot_icall_3_365(MethodBind* method, Object* ptr, RID* arg1, Object* arg2, MonoString* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_2_366(MethodBind* method, Object* ptr, int arg1, bool arg2) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_3_367(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_368(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_369(MethodBind* method, Object* ptr, RID* arg1, Object* arg2, MonoString* arg3, MonoObject* arg4) {
	ERR_FAIL_NULL(ptr);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { arg1, arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_5_370(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, real_t arg4, Object* arg5) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Transform2D, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4, arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

RID* godot_icall_3_371(MethodBind* method, Object* ptr, real_t* arg1, RID* arg2, RID* arg3) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[3] = { &arg1_in, arg2, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

RID* godot_icall_5_372(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, RID* arg4, RID* arg5) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, arg4, arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

RID* godot_icall_4_373(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, RID* arg3, RID* arg4) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, arg3, arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

Object* godot_icall_Physics2DServer_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("Physics2DServer");
}

void godot_icall_1_374(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ERR_FAIL_NULL(ptr);
	Array arg1_in = GDMonoMarshal::mono_array_to_Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Physics2DShapeQueryParameters_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Physics2DShapeQueryParameters");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Physics2DTestMotionResult_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Physics2DTestMotionResult");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_375(MethodBind* method, Object* ptr) {
	Basis ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Basis, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Basis), ret_out);
}

void godot_icall_2_376(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_377(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_5_378(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, MonoArray* arg3, int arg4, int arg5) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

MonoArray* godot_icall_2_379(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_1_380(MethodBind* method, Object* ptr, RID* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_3_381(MethodBind* method, Object* ptr, RID* arg1, RID* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform, arg3, arg3_in);
	const void* call_args[3] = { arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_382(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_383(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	Transform ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

void godot_icall_2_384(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_385(MethodBind* method, Object* ptr, RID* arg1) {
	Transform ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

void godot_icall_3_386(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_387(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_4_388(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, RID* arg3, real_t* arg4) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg4, arg4_in);
	const void* call_args[4] = { arg1, &arg2_in, arg3, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

MonoObject* godot_icall_1_389(MethodBind* method, Object* ptr, RID* arg1) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

RID* godot_icall_4_390(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, RID* arg3, real_t* arg4) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Transform, arg2, arg2_in);
	MARSHALLED_IN(Transform, arg4, arg4_in);
	const void* call_args[4] = { arg1, &arg2_in, arg3, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

bool godot_icall_2_391(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_392(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3, real_t arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_3_393(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_394(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3, bool arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_3_395(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_PhysicsServer_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("PhysicsServer");
}

Object* godot_icall_PhysicsShapeQueryParameters_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PhysicsShapeQueryParameters");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PinJoint_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PinJoint");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PinJoint2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PinJoint2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PlaneMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PlaneMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_396(MethodBind* method, Object* ptr) {
	Plane ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Plane, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Plane), ret_out);
}

Object* godot_icall_PlaneShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PlaneShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Polygon2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Polygon2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_397(MethodBind* method, Object* ptr, MonoArray* arg1, MonoArray* arg2) {
	ERR_FAIL_NULL(ptr);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	PoolIntArray arg2_in = GDMonoMarshal::mono_array_to_PoolIntArray(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_2_398(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	PoolVector2Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector2Array_to_mono_array(ret);
}

Object* godot_icall_PolygonPathFinder_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PolygonPathFinder");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Popup_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Popup");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PopupDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PopupDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_399(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, int arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[4] = { arg1, &arg2_in, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_400(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_401(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_402(MethodBind* method, Object* ptr, Object* arg1, Object* arg2, int arg3, bool arg4) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[4] = { arg1, arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_403(MethodBind* method, Object* ptr, Object* arg1, int arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_404(MethodBind* method, Object* ptr, int arg1, Object* arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_405(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_PopupMenu_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PopupMenu");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PopupPanel_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PopupPanel");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Portal_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Portal");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Position2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Position2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Position3D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Position3D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_PrismMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PrismMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ProceduralSky_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ProceduralSky");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ProgressBar_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ProgressBar");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ProximityGroup_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ProximityGroup");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_QuadMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "QuadMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Range_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Range");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RayCast_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RayCast");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RayCast2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RayCast2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RayShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RayShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RayShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RayShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RectangleShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RectangleShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Reference_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Reference");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ReferenceRect_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ReferenceRect");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ReflectionProbe_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ReflectionProbe");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_3_406(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoString* godot_icall_5_407(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, bool arg3, int arg4, int arg5) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

Object* godot_icall_RegEx_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RegEx");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoString* godot_icall_1_408(MethodBind* method, Object* ptr, MonoObject* arg1) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

Object* godot_icall_RegExMatch_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RegExMatch");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RemoteTransform_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RemoteTransform");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RemoteTransform2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RemoteTransform2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_409(MethodBind* method, Object* ptr, bool arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Resource_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Resource");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ResourcePreloader_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ResourcePreloader");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_410(MethodBind* method, Object* ptr, int arg1, bool arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_411(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_RichTextLabel_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RichTextLabel");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RigidBody_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RigidBody");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_412(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_3_413(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2, Object* arg3) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[3] = { &arg1_in, &arg2, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_RigidBody2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RigidBody2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_414(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Room_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Room");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_RoomBounds_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RoomBounds");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

NodePath* godot_icall_2_415(MethodBind* method, Object* ptr, int arg1, bool arg2) {
	NodePath ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(NodePath(ret));
}

MonoObject* godot_icall_1_416(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoArray* godot_icall_1_417(MethodBind* method, Object* ptr, int arg1) {
	PoolStringArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolStringArray_to_mono_array(ret);
}

MonoArray* godot_icall_1_418(MethodBind* method, Object* ptr, int arg1) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_2_419(MethodBind* method, Object* ptr, real_t arg1, bool arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_3_420(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_421(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoString* arg3, MonoArray* arg4) {
	ERR_FAIL_NULL(ptr);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg4);
	int total_length = 3 + vararg_length;
	ERR_FAIL_COND(varargs.resize(vararg_length) != OK);
	Vector<Variant*> call_args;
	ERR_FAIL_COND(call_args.resize(total_length) != OK);
	Variant arg1_in = arg1;
	call_args.set(0, &arg1_in);
	Variant arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	call_args.set(0, &arg2_in);
	Variant arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	call_args.set(0, &arg3_in);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg4, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(3 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
}

void godot_icall_3_422(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_423(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoString* arg3, MonoObject* arg4) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_424(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, MonoArray* arg3) {
	ERR_FAIL_NULL(ptr);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg3);
	int total_length = 2 + vararg_length;
	ERR_FAIL_COND(varargs.resize(vararg_length) != OK);
	Vector<Variant*> call_args;
	ERR_FAIL_COND(call_args.resize(total_length) != OK);
	Variant arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	call_args.set(0, &arg1_in);
	Variant arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	call_args.set(0, &arg2_in);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg3, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(2 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
}

int godot_icall_1_425(MethodBind* method, Object* ptr, Object* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_SceneTree_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SceneTree");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ScrollContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ScrollContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SegmentShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SegmentShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_426(MethodBind* method, Object* ptr, MonoString* arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_Shader_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Shader");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_427(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_ShaderMaterial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ShaderMaterial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

bool godot_icall_3_428(MethodBind* method, Object* ptr, real_t* arg1, Object* arg2, real_t* arg3) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Transform2D, arg1, arg1_in);
	MARSHALLED_IN(Transform2D, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_5_429(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, Object* arg3, real_t* arg4, real_t* arg5) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Transform2D, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Transform2D, arg4, arg4_in);
	MARSHALLED_IN(Vector2, arg5, arg5_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, arg3, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_3_430(MethodBind* method, Object* ptr, real_t* arg1, Object* arg2, real_t* arg3) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Transform2D, arg1, arg1_in);
	MARSHALLED_IN(Transform2D, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject* godot_icall_5_431(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, Object* arg3, real_t* arg4, real_t* arg5) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Transform2D, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Transform2D, arg4, arg4_in);
	MARSHALLED_IN(Vector2, arg5, arg5_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, arg3, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject* godot_icall_0_432(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_ShortCut_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ShortCut");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Skeleton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Skeleton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SliderJoint_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SliderJoint");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_433(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_0_434(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_2_435(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_436(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Spatial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Spatial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_437(MethodBind* method, Object* ptr, Object* arg1, Object* arg2) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[2] = { arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_438(MethodBind* method, Object* ptr, Object* arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_SpatialMaterial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SpatialMaterial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SphereMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SphereMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SphereShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SphereShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SpinBox_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SpinBox");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SpotLight_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SpotLight");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Sprite_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Sprite");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Sprite3D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Sprite3D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_439(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, int arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_440(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_3_441(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, Object* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_SpriteFrames_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SpriteFrames");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_StaticBody_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StaticBody");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_StaticBody2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StaticBody2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoArray* godot_icall_1_442(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	PoolByteArray arg1_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_0_443(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_StreamPeerBuffer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamPeerBuffer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_1_444(MethodBind* method, Object* ptr, Object* arg1) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Error godot_icall_3_445(MethodBind* method, Object* ptr, Object* arg1, bool arg2, MonoString* arg3) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_StreamPeerSSL_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamPeerSSL");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_StreamPeerTCP_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamPeerTCP");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_StreamTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

bool godot_icall_2_446(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_447(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_StyleBoxEmpty_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StyleBoxEmpty");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_StyleBoxFlat_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StyleBoxFlat");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_StyleBoxTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StyleBoxTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_6_448(MethodBind* method, Object* ptr, MonoArray* arg1, MonoArray* arg2, MonoArray* arg3, MonoArray* arg4, MonoArray* arg5, MonoArray* arg6) {
	ERR_FAIL_NULL(ptr);
	PoolVector3Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector3Array(arg1);
	PoolVector2Array arg2_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg2);
	PoolColorArray arg3_in = GDMonoMarshal::mono_array_to_PoolColorArray(arg3);
	PoolVector2Array arg4_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg4);
	PoolVector3Array arg5_in = GDMonoMarshal::mono_array_to_PoolVector3Array(arg5);
	Array arg6_in = GDMonoMarshal::mono_array_to_Array(arg6);
	const void* call_args[6] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in, &arg5_in, &arg6_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_449(MethodBind* method, Object* ptr, Object* arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_SurfaceTool_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SurfaceTool");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_2_450(MethodBind* method, Object* ptr, int arg1, MonoString* arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_TCP_Server_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TCP_Server");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_451(MethodBind* method, Object* ptr, int arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_0_452(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_TabContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TabContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Tabs_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Tabs");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoArray* godot_icall_4_453(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	PoolIntArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolIntArray_to_mono_array(ret);
}

void godot_icall_4_454(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, real_t* arg3, bool arg4) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_TextEdit_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TextEdit");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_5_455(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, bool arg4, Object* arg5) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4, arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_6_456(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, bool arg3, real_t* arg4, bool arg5, Object* arg6) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[6] = { arg1, &arg2_in, &arg3, &arg4_in, &arg5, arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_7_457(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, real_t* arg4, bool arg5, Object* arg6, bool arg7) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[7] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5, arg6, &arg7 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_458(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_TextureButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TextureButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_TextureProgress_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TextureProgress");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_TextureRect_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TextureRect");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_459(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, Object* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_460(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Theme_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Theme");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_461(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_6_462(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, bool arg4, bool arg5, bool arg6) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[6] = { &arg1, &arg2, &arg3, &arg4, &arg5, &arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_463(MethodBind* method, Object* ptr, real_t* arg1, int arg2, bool arg3, bool arg4, bool arg5) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_464(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

Object* godot_icall_TileMap_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TileMap");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_465(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_1_466(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_2_467(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	ERR_FAIL_NULL(ptr);
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_468(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_1_469(MethodBind* method, Object* ptr, int arg1) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_TileSet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TileSet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Timer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Timer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ToolButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ToolButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_TouchScreenButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TouchScreenButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Translation_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Translation");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_TranslationServer_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("TranslationServer");
}

MonoObject* godot_icall_1_470(MethodBind* method, Object* ptr, Object* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_0_471(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoObject* godot_icall_2_472(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	Rect2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Rect2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect2), ret_out);
}

MonoObject* godot_icall_1_473(MethodBind* method, Object* ptr, real_t* arg1) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Tree_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Tree");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_5_474(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t arg3, real_t arg4, bool arg5) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_475(MethodBind* method, Object* ptr, int arg1) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

void godot_icall_3_476(MethodBind* method, Object* ptr, int arg1, Object* arg2, MonoString* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_477(MethodBind* method, Object* ptr, int arg1, real_t* arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_478(MethodBind* method, Object* ptr, int arg1, Object* arg2, int arg3, bool arg4, MonoString* arg5) {
	ERR_FAIL_NULL(ptr);
	String arg5_in = GDMonoMarshal::mono_string_to_godot(arg5);
	const void* call_args[5] = { &arg1, arg2, &arg3, &arg4, &arg5_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_479(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

void godot_icall_3_480(MethodBind* method, Object* ptr, int arg1, int arg2, Object* arg3) {
	ERR_FAIL_NULL(ptr);
	const void* call_args[3] = { &arg1, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_TriangleMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TriangleMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

bool godot_icall_8_481(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3, MonoObject* arg4, real_t arg5, int arg6, int arg7, real_t arg8) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[8] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5, &arg6, &arg7, &arg8 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_8_482(MethodBind* method, Object* ptr, Object* arg1, real_t arg2, MonoString* arg3, MonoObject* arg4, MonoObject* arg5, MonoObject* arg6, MonoObject* arg7, MonoObject* arg8) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	Variant arg5_in = GDMonoMarshal::mono_object_to_variant(arg5);
	Variant arg6_in = GDMonoMarshal::mono_object_to_variant(arg6);
	Variant arg7_in = GDMonoMarshal::mono_object_to_variant(arg7);
	Variant arg8_in = GDMonoMarshal::mono_object_to_variant(arg8);
	const void* call_args[8] = { arg1, &arg2, &arg3_in, &arg4_in, &arg5_in, &arg6_in, &arg7_in, &arg8_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_9_483(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3, Object* arg4, MonoString* arg5, real_t arg6, int arg7, int arg8, real_t arg9) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	String arg5_in = GDMonoMarshal::mono_string_to_godot(arg5);
	const void* call_args[9] = { arg1, &arg2_in, &arg3_in, arg4, &arg5_in, &arg6, &arg7, &arg8, &arg9 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_9_484(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, Object* arg3, MonoString* arg4, MonoObject* arg5, real_t arg6, int arg7, int arg8, real_t arg9) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	String arg4_in = GDMonoMarshal::mono_string_to_godot(arg4);
	Variant arg5_in = GDMonoMarshal::mono_object_to_variant(arg5);
	const void* call_args[9] = { arg1, &arg2_in, arg3, &arg4_in, &arg5_in, &arg6, &arg7, &arg8, &arg9 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_Tween_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Tween");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_485(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoArray* arg3) {
	ERR_FAIL_NULL(ptr);
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg3);
	int total_length = 2 + vararg_length;
	ERR_FAIL_COND(varargs.resize(vararg_length) != OK);
	Vector<Variant*> call_args;
	ERR_FAIL_COND(call_args.resize(total_length) != OK);
	Variant arg1_in = arg1;
	call_args.set(0, &arg1_in);
	Variant arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	call_args.set(0, &arg2_in);
	for (int i = 0; i < vararg_length; i++) {
		MonoObject* elem = mono_array_get(arg3, MonoObject*, i);
		varargs.set(i, GDMonoMarshal::mono_object_to_variant(elem));
		call_args.set(2 + i, &varargs[i]);
	}
	Variant::CallError vcall_error;
	method->call(ptr, (const Variant**)call_args.ptr(), total_length, vcall_error);
}

void godot_icall_3_486(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_UndoRedo_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "UndoRedo");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VBoxContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VBoxContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VScrollBar_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VScrollBar");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VSeparator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VSeparator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VSlider_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VSlider");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VSplitContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VSplitContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VehicleBody_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VehicleBody");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VehicleWheel_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VehicleWheel");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_487(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_VideoPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VideoPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_488(MethodBind* method, Object* ptr, bool arg1, real_t* arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_489(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_0_490(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Viewport_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Viewport");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ViewportContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ViewportContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ViewportTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ViewportTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisibilityEnabler_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisibilityEnabler");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisibilityEnabler2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisibilityEnabler2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisibilityNotifier_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisibilityNotifier");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisibilityNotifier2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisibilityNotifier2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_491(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, Object* arg3, real_t* arg4) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2, arg3, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_492(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, real_t* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_493(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

void godot_icall_4_494(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_4_495(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_5_496(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4, int arg5) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_5_497(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4, int arg5) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_498(MethodBind* method, Object* ptr, MonoString* arg1, MonoObject* arg2, bool arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_499(MethodBind* method, Object* ptr, MonoString* arg1, MonoObject* arg2) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Dictionary arg2_in = GDMonoMarshal::mono_object_to_Dictionary(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_500(MethodBind* method, Object* ptr, MonoString* arg1) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

void godot_icall_3_501(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_VisualScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptBasicTypeConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptBasicTypeConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptBuiltinFunc_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptBuiltinFunc");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptClassConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptClassConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptComment_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptComment");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptCondition_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptCondition");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptConstructor_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptConstructor");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptCustomNode_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptCustomNode");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptDeconstruct_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptDeconstruct");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptEmitSignal_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptEmitSignal");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptEngineSingleton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptEngineSingleton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptExpression_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptExpression");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptFunction_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptFunction");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptFunctionCall_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptFunctionCall");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_502(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoArray* arg3) {
	ERR_FAIL_NULL(ptr);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_503(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	Array arg1_in = GDMonoMarshal::mono_array_to_Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

Object* godot_icall_VisualScriptGlobalConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptGlobalConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptIndexGet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptIndexGet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptIndexSet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptIndexSet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptInputAction_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptInputAction");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptIterator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptIterator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptLocalVar_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptLocalVar");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptLocalVarSet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptLocalVarSet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptMathConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptMathConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_504(MethodBind* method, Object* ptr) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall_VisualScriptOperator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptOperator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptPreload_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptPreload");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptPropertyGet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptPropertyGet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptPropertySet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptPropertySet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptResourcePath_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptResourcePath");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptReturn_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptReturn");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptSceneNode_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSceneNode");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptSceneTree_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSceneTree");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptSelf_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSelf");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptSequence_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSequence");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptSubCall_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSubCall");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptSwitch_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSwitch");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptTypeCast_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptTypeCast");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptVariableGet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptVariableGet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptVariableSet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptVariableSet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptWhile_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptWhile");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptYield_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptYield");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_VisualScriptYieldSignal_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptYieldSignal");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

RID* godot_icall_2_505(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	RID ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

Object* godot_icall_VisualServer_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("VisualServer");
}

Object* godot_icall_WeakRef_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "WeakRef");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_506(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_WindowDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "WindowDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_World_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "World");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_World2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "World2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_WorldEnvironment_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "WorldEnvironment");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_XMLParser_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "XMLParser");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_YSort_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "YSort");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_2_507(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

MonoArray* godot_icall_2_508(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_2_509(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2) {
	Variant ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

Error godot_icall_3_510(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_3_511(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, bool arg3) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_2_512(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2) {
	PoolStringArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolStringArray_to_mono_array(ret);
}

Object* godot_icall__ClassDB_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("ClassDB");
}

int godot_icall_2_513(MethodBind* method, Object* ptr, bool arg1, bool arg2) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Error godot_icall_2_514(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_Directory_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_Directory");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_515(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall__Engine_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("Engine");
}

int godot_icall_3_516(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoArray* arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	PoolByteArray arg3_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_517(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_518(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_519(MethodBind* method, Object* ptr, int arg1) {
	PoolByteArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolByteArray_to_mono_array(ret);
}

Object* godot_icall_File_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_File");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoArray* godot_icall_1_520(MethodBind* method, Object* ptr, real_t* arg1) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_4_521(MethodBind* method, Object* ptr, real_t arg1, real_t arg2, int arg3, int arg4) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_5_522(MethodBind* method, Object* ptr, real_t arg1, real_t arg2, int arg3, int arg4, int arg5) {
	Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

real_t godot_icall_4_523(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t arg4) {
	real_t ret;
	ERR_FAIL_NULL_V(ptr, real_t());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_524(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_4_525(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	PoolVector2Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector2Array_to_mono_array(ret);
}

MonoArray* godot_icall_4_526(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	MARSHALLED_IN(Vector3, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

MonoObject* godot_icall_3_527(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3) {
	Vector2 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_3_528(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3) {
	Vector3 ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

void godot_icall_5_529(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4, real_t* arg5) {
	ERR_FAIL_NULL(ptr);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	MARSHALLED_IN(Vector3, arg4, arg4_in);
	MARSHALLED_IN(Vector3, arg5, arg5_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_4_530(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t arg4) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

MonoArray* godot_icall_4_531(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t arg3, real_t arg4) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

MonoArray* godot_icall_3_532(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, MonoArray* arg3) {
	PoolVector3Array ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolVector3Array_to_mono_array(ret);
}

bool godot_icall_4_533(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	bool ret;
	ERR_FAIL_NULL_V(ptr, bool());
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_534(MethodBind* method, Object* ptr, MonoArray* arg1) {
	PoolIntArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolIntArray_to_mono_array(ret);
}

MonoObject* godot_icall_1_535(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Dictionary ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	PoolVector2Array arg1_in = GDMonoMarshal::mono_array_to_PoolVector2Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

Object* godot_icall__Geometry_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("Geometry");
}

Object* godot_icall__GodotSharp_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("GodotSharp");
}

MonoString* godot_icall_1_536(MethodBind* method, Object* ptr, MonoArray* arg1) {
	String ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	PoolByteArray arg1_in = GDMonoMarshal::mono_array_to_PoolByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

MonoArray* godot_icall_1_537(MethodBind* method, Object* ptr, MonoString* arg1) {
	PoolByteArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolByteArray_to_mono_array(ret);
}

Object* godot_icall__Marshalls_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("Marshalls");
}

Object* godot_icall_Mutex_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_Mutex");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_4_538(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2, bool arg3, MonoArray* arg4) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	PoolStringArray arg2_in = GDMonoMarshal::mono_array_to_PoolStringArray(arg2);
	Array arg4_in = GDMonoMarshal::mono_array_to_Array(arg4);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_539(MethodBind* method, Object* ptr, MonoObject* arg1) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	Dictionary arg1_in = GDMonoMarshal::mono_object_to_Dictionary(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_4_540(MethodBind* method, Object* ptr, MonoString* arg1, real_t arg2, MonoString* arg3, MonoString* arg4) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	String arg4_in = GDMonoMarshal::mono_string_to_godot(arg4);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall__OS_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("OS");
}

MonoObject* godot_icall_2_541(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

MonoObject* godot_icall_3_542(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, bool arg3) {
	Reference* ret = NULL;
	ERR_FAIL_NULL_V(ptr, NULL);
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::reference_get_managed_unsafe(ret);
}

Object* godot_icall__ResourceLoader_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("ResourceLoader");
}

int godot_icall_3_543(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, int arg3) {
	int ret;
	ERR_FAIL_NULL_V(ptr, int());
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_544(MethodBind* method, Object* ptr, Object* arg1) {
	PoolStringArray ret;
	ERR_FAIL_NULL_V(ptr, NULL);
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::PoolStringArray_to_mono_array(ret);
}

Object* godot_icall__ResourceSaver_get_singleton() {
	return GlobalConfig::get_singleton()->get_singleton_object("ResourceSaver");
}

Object* godot_icall_Semaphore_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_Semaphore");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_4_545(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3, int arg4) {
	Error ret;
	ERR_FAIL_NULL_V(ptr, Error());
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[4] = { arg1, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_Thread_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_Thread");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

namespace GodotSharpBindings
{
void register_generated_icalls() {
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TypeDB_get_method", (void*)godot_icall_TypeDB_get_method);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Object_Dtor", (void*)godot_icall_Object_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NodePath_Ctor", (void*)godot_icall_NodePath_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NodePath_Dtor", (void*)godot_icall_NodePath_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NodePath_operator_String", (void*)godot_icall_NodePath_operator_String);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RID_Ctor", (void*)godot_icall_RID_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RID_Dtor", (void*)godot_icall_RID_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_String_md5_buffer", (void*)godot_icall_String_md5_buffer);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_String_md5_text", (void*)godot_icall_String_md5_text);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_String_rfind", (void*)godot_icall_String_rfind);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_String_rfindn", (void*)godot_icall_String_rfindn);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_String_sha256_buffer", (void*)godot_icall_String_sha256_buffer);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_String_sha256_text", (void*)godot_icall_String_sha256_text);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_bytes2var", (void*)godot_icall_Godot_bytes2var);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_convert", (void*)godot_icall_Godot_convert);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_hash", (void*)godot_icall_Godot_hash);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_instance_from_id", (void*)godot_icall_Godot_instance_from_id);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_print", (void*)godot_icall_Godot_print);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_printerr", (void*)godot_icall_Godot_printerr);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_printraw", (void*)godot_icall_Godot_printraw);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_prints", (void*)godot_icall_Godot_prints);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_printt", (void*)godot_icall_Godot_printt);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_seed", (void*)godot_icall_Godot_seed);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_str", (void*)godot_icall_Godot_str);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_str2var", (void*)godot_icall_Godot_str2var);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_type_exists", (void*)godot_icall_Godot_type_exists);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_var2bytes", (void*)godot_icall_Godot_var2bytes);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_var2str", (void*)godot_icall_Godot_var2str);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Godot_weakref", (void*)godot_icall_Godot_weakref);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AStar_Ctor", (void*)godot_icall_AStar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AcceptDialog_Ctor", (void*)godot_icall_AcceptDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimatedSprite_Ctor", (void*)godot_icall_AnimatedSprite_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimatedSprite3D_Ctor", (void*)godot_icall_AnimatedSprite3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Animation_Ctor", (void*)godot_icall_Animation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimationPlayer_Ctor", (void*)godot_icall_AnimationPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimationTreePlayer_Ctor", (void*)godot_icall_AnimationTreePlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Area_Ctor", (void*)godot_icall_Area_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Area2D_Ctor", (void*)godot_icall_Area2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ArrayMesh_Ctor", (void*)godot_icall_ArrayMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AtlasTexture_Ctor", (void*)godot_icall_AtlasTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioBusLayout_Ctor", (void*)godot_icall_AudioBusLayout_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectAmplify_Ctor", (void*)godot_icall_AudioEffectAmplify_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectBandLimitFilter_Ctor", (void*)godot_icall_AudioEffectBandLimitFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectBandPassFilter_Ctor", (void*)godot_icall_AudioEffectBandPassFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectChorus_Ctor", (void*)godot_icall_AudioEffectChorus_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectCompressor_Ctor", (void*)godot_icall_AudioEffectCompressor_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectDelay_Ctor", (void*)godot_icall_AudioEffectDelay_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectDistortion_Ctor", (void*)godot_icall_AudioEffectDistortion_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectEQ10_Ctor", (void*)godot_icall_AudioEffectEQ10_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectEQ21_Ctor", (void*)godot_icall_AudioEffectEQ21_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectEQ6_Ctor", (void*)godot_icall_AudioEffectEQ6_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectHighPassFilter_Ctor", (void*)godot_icall_AudioEffectHighPassFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectHighShelfFilter_Ctor", (void*)godot_icall_AudioEffectHighShelfFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectLimiter_Ctor", (void*)godot_icall_AudioEffectLimiter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectLowPassFilter_Ctor", (void*)godot_icall_AudioEffectLowPassFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectLowShelfFilter_Ctor", (void*)godot_icall_AudioEffectLowShelfFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectNotchFilter_Ctor", (void*)godot_icall_AudioEffectNotchFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectPanner_Ctor", (void*)godot_icall_AudioEffectPanner_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectPhaser_Ctor", (void*)godot_icall_AudioEffectPhaser_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectPitchShift_Ctor", (void*)godot_icall_AudioEffectPitchShift_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectReverb_Ctor", (void*)godot_icall_AudioEffectReverb_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioEffectStereoEnhance_Ctor", (void*)godot_icall_AudioEffectStereoEnhance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioServer_get_singleton", (void*)godot_icall_AudioServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamOGGVorbis_Ctor", (void*)godot_icall_AudioStreamOGGVorbis_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamPlayer_Ctor", (void*)godot_icall_AudioStreamPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamPlayer2D_Ctor", (void*)godot_icall_AudioStreamPlayer2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamSample_Ctor", (void*)godot_icall_AudioStreamSample_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BackBufferCopy_Ctor", (void*)godot_icall_BackBufferCopy_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BitMap_Ctor", (void*)godot_icall_BitMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BitmapFont_Ctor", (void*)godot_icall_BitmapFont_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BoneAttachment_Ctor", (void*)godot_icall_BoneAttachment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BoxShape_Ctor", (void*)godot_icall_BoxShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Button_Ctor", (void*)godot_icall_Button_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ButtonGroup_Ctor", (void*)godot_icall_ButtonGroup_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CSharpScript_Ctor", (void*)godot_icall_CSharpScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Camera_Ctor", (void*)godot_icall_Camera_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Camera2D_Ctor", (void*)godot_icall_Camera2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasItemMaterial_Ctor", (void*)godot_icall_CanvasItemMaterial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasLayer_Ctor", (void*)godot_icall_CanvasLayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasModulate_Ctor", (void*)godot_icall_CanvasModulate_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CapsuleMesh_Ctor", (void*)godot_icall_CapsuleMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CapsuleShape_Ctor", (void*)godot_icall_CapsuleShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CapsuleShape2D_Ctor", (void*)godot_icall_CapsuleShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CenterContainer_Ctor", (void*)godot_icall_CenterContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CheckBox_Ctor", (void*)godot_icall_CheckBox_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CheckButton_Ctor", (void*)godot_icall_CheckButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CircleShape2D_Ctor", (void*)godot_icall_CircleShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionPolygon_Ctor", (void*)godot_icall_CollisionPolygon_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionPolygon2D_Ctor", (void*)godot_icall_CollisionPolygon2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionShape_Ctor", (void*)godot_icall_CollisionShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionShape2D_Ctor", (void*)godot_icall_CollisionShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorPicker_Ctor", (void*)godot_icall_ColorPicker_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorPickerButton_Ctor", (void*)godot_icall_ColorPickerButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorRect_Ctor", (void*)godot_icall_ColorRect_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConcavePolygonShape_Ctor", (void*)godot_icall_ConcavePolygonShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConcavePolygonShape2D_Ctor", (void*)godot_icall_ConcavePolygonShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConeTwistJoint_Ctor", (void*)godot_icall_ConeTwistJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConfigFile_Ctor", (void*)godot_icall_ConfigFile_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConfirmationDialog_Ctor", (void*)godot_icall_ConfirmationDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Container_Ctor", (void*)godot_icall_Container_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Control_Ctor", (void*)godot_icall_Control_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConvexPolygonShape_Ctor", (void*)godot_icall_ConvexPolygonShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConvexPolygonShape2D_Ctor", (void*)godot_icall_ConvexPolygonShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CubeMap_Ctor", (void*)godot_icall_CubeMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CubeMesh_Ctor", (void*)godot_icall_CubeMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Curve_Ctor", (void*)godot_icall_Curve_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Curve2D_Ctor", (void*)godot_icall_Curve2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Curve3D_Ctor", (void*)godot_icall_Curve3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CurveTexture_Ctor", (void*)godot_icall_CurveTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CylinderMesh_Ctor", (void*)godot_icall_CylinderMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DampedSpringJoint2D_Ctor", (void*)godot_icall_DampedSpringJoint2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DirectionalLight_Ctor", (void*)godot_icall_DirectionalLight_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DynamicFont_Ctor", (void*)godot_icall_DynamicFont_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DynamicFontData_Ctor", (void*)godot_icall_DynamicFontData_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorFileDialog_Ctor", (void*)godot_icall_EditorFileDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorFileSystem_Ctor", (void*)godot_icall_EditorFileSystem_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorFileSystemDirectory_Ctor", (void*)godot_icall_EditorFileSystemDirectory_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorImportPlugin_Ctor", (void*)godot_icall_EditorImportPlugin_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorPlugin_Ctor", (void*)godot_icall_EditorPlugin_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorResourcePreview_Ctor", (void*)godot_icall_EditorResourcePreview_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorResourcePreviewGenerator_Ctor", (void*)godot_icall_EditorResourcePreviewGenerator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorScript_Ctor", (void*)godot_icall_EditorScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSelection_Ctor", (void*)godot_icall_EditorSelection_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSettings_Ctor", (void*)godot_icall_EditorSettings_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSpatialGizmo_Ctor", (void*)godot_icall_EditorSpatialGizmo_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Environment_Ctor", (void*)godot_icall_Environment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_FileDialog_Ctor", (void*)godot_icall_FileDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_FuncRef_Ctor", (void*)godot_icall_FuncRef_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GDNativeLibrary_Ctor", (void*)godot_icall_GDNativeLibrary_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GDNativeScript_Ctor", (void*)godot_icall_GDNativeScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GDScript_Ctor", (void*)godot_icall_GDScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GIProbe_Ctor", (void*)godot_icall_GIProbe_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GIProbeData_Ctor", (void*)godot_icall_GIProbeData_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Generic6DOFJoint_Ctor", (void*)godot_icall_Generic6DOFJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GlobalConfig_get_singleton", (void*)godot_icall_GlobalConfig_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Gradient_Ctor", (void*)godot_icall_Gradient_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GradientTexture_Ctor", (void*)godot_icall_GradientTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GraphEdit_Ctor", (void*)godot_icall_GraphEdit_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GraphNode_Ctor", (void*)godot_icall_GraphNode_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GridContainer_Ctor", (void*)godot_icall_GridContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GridMap_Ctor", (void*)godot_icall_GridMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GrooveJoint2D_Ctor", (void*)godot_icall_GrooveJoint2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HBoxContainer_Ctor", (void*)godot_icall_HBoxContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HScrollBar_Ctor", (void*)godot_icall_HScrollBar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HSeparator_Ctor", (void*)godot_icall_HSeparator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HSlider_Ctor", (void*)godot_icall_HSlider_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HSplitContainer_Ctor", (void*)godot_icall_HSplitContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HTTPClient_Ctor", (void*)godot_icall_HTTPClient_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HTTPRequest_Ctor", (void*)godot_icall_HTTPRequest_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HingeJoint_Ctor", (void*)godot_icall_HingeJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_IP_get_singleton", (void*)godot_icall_IP_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Image_Ctor", (void*)godot_icall_Image_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ImageTexture_Ctor", (void*)godot_icall_ImageTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ImmediateGeometry_Ctor", (void*)godot_icall_ImmediateGeometry_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Input_get_singleton", (void*)godot_icall_Input_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventAction_Ctor", (void*)godot_icall_InputEventAction_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventJoypadButton_Ctor", (void*)godot_icall_InputEventJoypadButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventJoypadMotion_Ctor", (void*)godot_icall_InputEventJoypadMotion_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventKey_Ctor", (void*)godot_icall_InputEventKey_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventMouseButton_Ctor", (void*)godot_icall_InputEventMouseButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventMouseMotion_Ctor", (void*)godot_icall_InputEventMouseMotion_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventScreenDrag_Ctor", (void*)godot_icall_InputEventScreenDrag_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputEventScreenTouch_Ctor", (void*)godot_icall_InputEventScreenTouch_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputMap_get_singleton", (void*)godot_icall_InputMap_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InterpolatedCamera_Ctor", (void*)godot_icall_InterpolatedCamera_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ItemList_Ctor", (void*)godot_icall_ItemList_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_KinematicBody_Ctor", (void*)godot_icall_KinematicBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_KinematicBody2D_Ctor", (void*)godot_icall_KinematicBody2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Label_Ctor", (void*)godot_icall_Label_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LargeTexture_Ctor", (void*)godot_icall_LargeTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Light2D_Ctor", (void*)godot_icall_Light2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LightOccluder2D_Ctor", (void*)godot_icall_LightOccluder2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Line2D_Ctor", (void*)godot_icall_Line2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LineEdit_Ctor", (void*)godot_icall_LineEdit_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LineShape2D_Ctor", (void*)godot_icall_LineShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LinkButton_Ctor", (void*)godot_icall_LinkButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Listener_Ctor", (void*)godot_icall_Listener_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MainLoop_Ctor", (void*)godot_icall_MainLoop_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MarginContainer_Ctor", (void*)godot_icall_MarginContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MenuButton_Ctor", (void*)godot_icall_MenuButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshDataTool_Ctor", (void*)godot_icall_MeshDataTool_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshInstance_Ctor", (void*)godot_icall_MeshInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshLibrary_Ctor", (void*)godot_icall_MeshLibrary_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MultiMesh_Ctor", (void*)godot_icall_MultiMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MultiMeshInstance_Ctor", (void*)godot_icall_MultiMeshInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Navigation_Ctor", (void*)godot_icall_Navigation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Navigation2D_Ctor", (void*)godot_icall_Navigation2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationMesh_Ctor", (void*)godot_icall_NavigationMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationMeshInstance_Ctor", (void*)godot_icall_NavigationMeshInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationPolygon_Ctor", (void*)godot_icall_NavigationPolygon_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationPolygonInstance_Ctor", (void*)godot_icall_NavigationPolygonInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NetworkedMultiplayerENet_Ctor", (void*)godot_icall_NetworkedMultiplayerENet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NinePatchRect_Ctor", (void*)godot_icall_NinePatchRect_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Node_Ctor", (void*)godot_icall_Node_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Node2D_Ctor", (void*)godot_icall_Node2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Object_Ctor", (void*)godot_icall_Object_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_OccluderPolygon2D_Ctor", (void*)godot_icall_OccluderPolygon2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_OmniLight_Ctor", (void*)godot_icall_OmniLight_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_OptionButton_Ctor", (void*)godot_icall_OptionButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PCKPacker_Ctor", (void*)godot_icall_PCKPacker_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PHashTranslation_Ctor", (void*)godot_icall_PHashTranslation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PackedDataContainer_Ctor", (void*)godot_icall_PackedDataContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PackedScene_Ctor", (void*)godot_icall_PackedScene_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PacketPeerStream_Ctor", (void*)godot_icall_PacketPeerStream_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PacketPeerUDP_Ctor", (void*)godot_icall_PacketPeerUDP_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Panel_Ctor", (void*)godot_icall_Panel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PanelContainer_Ctor", (void*)godot_icall_PanelContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PanoramaSky_Ctor", (void*)godot_icall_PanoramaSky_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ParallaxBackground_Ctor", (void*)godot_icall_ParallaxBackground_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ParallaxLayer_Ctor", (void*)godot_icall_ParallaxLayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Particles_Ctor", (void*)godot_icall_Particles_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Particles2D_Ctor", (void*)godot_icall_Particles2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ParticlesMaterial_Ctor", (void*)godot_icall_ParticlesMaterial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Path_Ctor", (void*)godot_icall_Path_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Path2D_Ctor", (void*)godot_icall_Path2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PathFollow_Ctor", (void*)godot_icall_PathFollow_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PathFollow2D_Ctor", (void*)godot_icall_PathFollow2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Performance_get_singleton", (void*)godot_icall_Performance_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DServer_get_singleton", (void*)godot_icall_Physics2DServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DShapeQueryParameters_Ctor", (void*)godot_icall_Physics2DShapeQueryParameters_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DTestMotionResult_Ctor", (void*)godot_icall_Physics2DTestMotionResult_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PhysicsServer_get_singleton", (void*)godot_icall_PhysicsServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PhysicsShapeQueryParameters_Ctor", (void*)godot_icall_PhysicsShapeQueryParameters_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PinJoint_Ctor", (void*)godot_icall_PinJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PinJoint2D_Ctor", (void*)godot_icall_PinJoint2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PlaneMesh_Ctor", (void*)godot_icall_PlaneMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PlaneShape_Ctor", (void*)godot_icall_PlaneShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Polygon2D_Ctor", (void*)godot_icall_Polygon2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PolygonPathFinder_Ctor", (void*)godot_icall_PolygonPathFinder_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Popup_Ctor", (void*)godot_icall_Popup_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PopupDialog_Ctor", (void*)godot_icall_PopupDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PopupMenu_Ctor", (void*)godot_icall_PopupMenu_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PopupPanel_Ctor", (void*)godot_icall_PopupPanel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Portal_Ctor", (void*)godot_icall_Portal_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Position2D_Ctor", (void*)godot_icall_Position2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Position3D_Ctor", (void*)godot_icall_Position3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PrismMesh_Ctor", (void*)godot_icall_PrismMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ProceduralSky_Ctor", (void*)godot_icall_ProceduralSky_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ProgressBar_Ctor", (void*)godot_icall_ProgressBar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ProximityGroup_Ctor", (void*)godot_icall_ProximityGroup_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_QuadMesh_Ctor", (void*)godot_icall_QuadMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Range_Ctor", (void*)godot_icall_Range_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayCast_Ctor", (void*)godot_icall_RayCast_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayCast2D_Ctor", (void*)godot_icall_RayCast2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayShape_Ctor", (void*)godot_icall_RayShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayShape2D_Ctor", (void*)godot_icall_RayShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RectangleShape2D_Ctor", (void*)godot_icall_RectangleShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Reference_Ctor", (void*)godot_icall_Reference_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ReferenceRect_Ctor", (void*)godot_icall_ReferenceRect_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ReflectionProbe_Ctor", (void*)godot_icall_ReflectionProbe_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RegEx_Ctor", (void*)godot_icall_RegEx_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RegExMatch_Ctor", (void*)godot_icall_RegExMatch_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RemoteTransform_Ctor", (void*)godot_icall_RemoteTransform_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RemoteTransform2D_Ctor", (void*)godot_icall_RemoteTransform2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Resource_Ctor", (void*)godot_icall_Resource_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ResourcePreloader_Ctor", (void*)godot_icall_ResourcePreloader_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RichTextLabel_Ctor", (void*)godot_icall_RichTextLabel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RigidBody_Ctor", (void*)godot_icall_RigidBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RigidBody2D_Ctor", (void*)godot_icall_RigidBody2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Room_Ctor", (void*)godot_icall_Room_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RoomBounds_Ctor", (void*)godot_icall_RoomBounds_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SceneTree_Ctor", (void*)godot_icall_SceneTree_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ScrollContainer_Ctor", (void*)godot_icall_ScrollContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SegmentShape2D_Ctor", (void*)godot_icall_SegmentShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Shader_Ctor", (void*)godot_icall_Shader_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ShaderMaterial_Ctor", (void*)godot_icall_ShaderMaterial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ShortCut_Ctor", (void*)godot_icall_ShortCut_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Skeleton_Ctor", (void*)godot_icall_Skeleton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SliderJoint_Ctor", (void*)godot_icall_SliderJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Spatial_Ctor", (void*)godot_icall_Spatial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpatialMaterial_Ctor", (void*)godot_icall_SpatialMaterial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SphereMesh_Ctor", (void*)godot_icall_SphereMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SphereShape_Ctor", (void*)godot_icall_SphereShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpinBox_Ctor", (void*)godot_icall_SpinBox_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpotLight_Ctor", (void*)godot_icall_SpotLight_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Sprite_Ctor", (void*)godot_icall_Sprite_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Sprite3D_Ctor", (void*)godot_icall_Sprite3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpriteFrames_Ctor", (void*)godot_icall_SpriteFrames_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StaticBody_Ctor", (void*)godot_icall_StaticBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StaticBody2D_Ctor", (void*)godot_icall_StaticBody2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerBuffer_Ctor", (void*)godot_icall_StreamPeerBuffer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerSSL_Ctor", (void*)godot_icall_StreamPeerSSL_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerTCP_Ctor", (void*)godot_icall_StreamPeerTCP_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamTexture_Ctor", (void*)godot_icall_StreamTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxEmpty_Ctor", (void*)godot_icall_StyleBoxEmpty_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxFlat_Ctor", (void*)godot_icall_StyleBoxFlat_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxTexture_Ctor", (void*)godot_icall_StyleBoxTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SurfaceTool_Ctor", (void*)godot_icall_SurfaceTool_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TCP_Server_Ctor", (void*)godot_icall_TCP_Server_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TabContainer_Ctor", (void*)godot_icall_TabContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Tabs_Ctor", (void*)godot_icall_Tabs_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextEdit_Ctor", (void*)godot_icall_TextEdit_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextureButton_Ctor", (void*)godot_icall_TextureButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextureProgress_Ctor", (void*)godot_icall_TextureProgress_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextureRect_Ctor", (void*)godot_icall_TextureRect_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Theme_Ctor", (void*)godot_icall_Theme_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TileMap_Ctor", (void*)godot_icall_TileMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TileSet_Ctor", (void*)godot_icall_TileSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Timer_Ctor", (void*)godot_icall_Timer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ToolButton_Ctor", (void*)godot_icall_ToolButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TouchScreenButton_Ctor", (void*)godot_icall_TouchScreenButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Translation_Ctor", (void*)godot_icall_Translation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TranslationServer_get_singleton", (void*)godot_icall_TranslationServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Tree_Ctor", (void*)godot_icall_Tree_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TriangleMesh_Ctor", (void*)godot_icall_TriangleMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Tween_Ctor", (void*)godot_icall_Tween_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_UndoRedo_Ctor", (void*)godot_icall_UndoRedo_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VBoxContainer_Ctor", (void*)godot_icall_VBoxContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VScrollBar_Ctor", (void*)godot_icall_VScrollBar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VSeparator_Ctor", (void*)godot_icall_VSeparator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VSlider_Ctor", (void*)godot_icall_VSlider_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VSplitContainer_Ctor", (void*)godot_icall_VSplitContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VehicleBody_Ctor", (void*)godot_icall_VehicleBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VehicleWheel_Ctor", (void*)godot_icall_VehicleWheel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VideoPlayer_Ctor", (void*)godot_icall_VideoPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Viewport_Ctor", (void*)godot_icall_Viewport_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ViewportContainer_Ctor", (void*)godot_icall_ViewportContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ViewportTexture_Ctor", (void*)godot_icall_ViewportTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityEnabler_Ctor", (void*)godot_icall_VisibilityEnabler_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityEnabler2D_Ctor", (void*)godot_icall_VisibilityEnabler2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityNotifier_Ctor", (void*)godot_icall_VisibilityNotifier_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityNotifier2D_Ctor", (void*)godot_icall_VisibilityNotifier2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScript_Ctor", (void*)godot_icall_VisualScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptBasicTypeConstant_Ctor", (void*)godot_icall_VisualScriptBasicTypeConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptBuiltinFunc_Ctor", (void*)godot_icall_VisualScriptBuiltinFunc_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptClassConstant_Ctor", (void*)godot_icall_VisualScriptClassConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptComment_Ctor", (void*)godot_icall_VisualScriptComment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptCondition_Ctor", (void*)godot_icall_VisualScriptCondition_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptConstant_Ctor", (void*)godot_icall_VisualScriptConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptConstructor_Ctor", (void*)godot_icall_VisualScriptConstructor_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptCustomNode_Ctor", (void*)godot_icall_VisualScriptCustomNode_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptDeconstruct_Ctor", (void*)godot_icall_VisualScriptDeconstruct_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptEmitSignal_Ctor", (void*)godot_icall_VisualScriptEmitSignal_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptEngineSingleton_Ctor", (void*)godot_icall_VisualScriptEngineSingleton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptExpression_Ctor", (void*)godot_icall_VisualScriptExpression_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptFunction_Ctor", (void*)godot_icall_VisualScriptFunction_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptFunctionCall_Ctor", (void*)godot_icall_VisualScriptFunctionCall_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptGlobalConstant_Ctor", (void*)godot_icall_VisualScriptGlobalConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIndexGet_Ctor", (void*)godot_icall_VisualScriptIndexGet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIndexSet_Ctor", (void*)godot_icall_VisualScriptIndexSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptInputAction_Ctor", (void*)godot_icall_VisualScriptInputAction_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIterator_Ctor", (void*)godot_icall_VisualScriptIterator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptLocalVar_Ctor", (void*)godot_icall_VisualScriptLocalVar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptLocalVarSet_Ctor", (void*)godot_icall_VisualScriptLocalVarSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptMathConstant_Ctor", (void*)godot_icall_VisualScriptMathConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptOperator_Ctor", (void*)godot_icall_VisualScriptOperator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPreload_Ctor", (void*)godot_icall_VisualScriptPreload_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPropertyGet_Ctor", (void*)godot_icall_VisualScriptPropertyGet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPropertySet_Ctor", (void*)godot_icall_VisualScriptPropertySet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptResourcePath_Ctor", (void*)godot_icall_VisualScriptResourcePath_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptReturn_Ctor", (void*)godot_icall_VisualScriptReturn_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSceneNode_Ctor", (void*)godot_icall_VisualScriptSceneNode_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSceneTree_Ctor", (void*)godot_icall_VisualScriptSceneTree_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSelf_Ctor", (void*)godot_icall_VisualScriptSelf_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSequence_Ctor", (void*)godot_icall_VisualScriptSequence_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSubCall_Ctor", (void*)godot_icall_VisualScriptSubCall_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSwitch_Ctor", (void*)godot_icall_VisualScriptSwitch_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptTypeCast_Ctor", (void*)godot_icall_VisualScriptTypeCast_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptVariableGet_Ctor", (void*)godot_icall_VisualScriptVariableGet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptVariableSet_Ctor", (void*)godot_icall_VisualScriptVariableSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptWhile_Ctor", (void*)godot_icall_VisualScriptWhile_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptYield_Ctor", (void*)godot_icall_VisualScriptYield_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptYieldSignal_Ctor", (void*)godot_icall_VisualScriptYieldSignal_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualServer_get_singleton", (void*)godot_icall_VisualServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_WeakRef_Ctor", (void*)godot_icall_WeakRef_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_WindowDialog_Ctor", (void*)godot_icall_WindowDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_World_Ctor", (void*)godot_icall_World_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_World2D_Ctor", (void*)godot_icall_World2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_WorldEnvironment_Ctor", (void*)godot_icall_WorldEnvironment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_XMLParser_Ctor", (void*)godot_icall_XMLParser_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_YSort_Ctor", (void*)godot_icall_YSort_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__ClassDB_get_singleton", (void*)godot_icall__ClassDB_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Directory_Ctor", (void*)godot_icall_Directory_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__Engine_get_singleton", (void*)godot_icall__Engine_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_File_Ctor", (void*)godot_icall_File_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__Geometry_get_singleton", (void*)godot_icall__Geometry_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__GodotSharp_get_singleton", (void*)godot_icall__GodotSharp_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__Marshalls_get_singleton", (void*)godot_icall__Marshalls_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Mutex_Ctor", (void*)godot_icall_Mutex_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__OS_get_singleton", (void*)godot_icall__OS_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__ResourceLoader_get_singleton", (void*)godot_icall__ResourceLoader_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__ResourceSaver_get_singleton", (void*)godot_icall__ResourceSaver_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Semaphore_Ctor", (void*)godot_icall_Semaphore_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Thread_Ctor", (void*)godot_icall_Thread_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_0", (void*)godot_icall_0_0);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_1", (void*)godot_icall_3_1);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_2", (void*)godot_icall_1_2);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_3", (void*)godot_icall_1_3);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_4", (void*)godot_icall_1_4);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_5", (void*)godot_icall_3_5);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_6", (void*)godot_icall_2_6);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_7", (void*)godot_icall_2_7);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_8", (void*)godot_icall_0_8);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_9", (void*)godot_icall_1_9);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_10", (void*)godot_icall_1_10);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_11", (void*)godot_icall_2_11);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_12", (void*)godot_icall_2_12);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_13", (void*)godot_icall_0_13);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_14", (void*)godot_icall_1_14);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_15", (void*)godot_icall_0_15);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_16", (void*)godot_icall_3_16);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_17", (void*)godot_icall_1_17);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_18", (void*)godot_icall_1_18);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_19", (void*)godot_icall_1_19);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_20", (void*)godot_icall_0_20);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_21", (void*)godot_icall_1_21);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_22", (void*)godot_icall_0_22);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_23", (void*)godot_icall_1_23);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_24", (void*)godot_icall_0_24);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_25", (void*)godot_icall_2_25);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_26", (void*)godot_icall_1_26);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_27", (void*)godot_icall_1_27);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_28", (void*)godot_icall_2_28);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_29", (void*)godot_icall_1_29);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_30", (void*)godot_icall_2_30);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_31", (void*)godot_icall_1_31);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_32", (void*)godot_icall_5_32);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_33", (void*)godot_icall_4_33);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_34", (void*)godot_icall_2_34);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_35", (void*)godot_icall_3_35);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_36", (void*)godot_icall_3_36);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_37", (void*)godot_icall_2_37);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_38", (void*)godot_icall_3_38);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_39", (void*)godot_icall_2_39);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_40", (void*)godot_icall_3_40);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_41", (void*)godot_icall_2_41);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_42", (void*)godot_icall_2_42);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_43", (void*)godot_icall_1_43);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_44", (void*)godot_icall_0_44);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_45", (void*)godot_icall_2_45);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_46", (void*)godot_icall_2_46);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_47", (void*)godot_icall_1_47);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_48", (void*)godot_icall_1_48);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_49", (void*)godot_icall_0_49);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_50", (void*)godot_icall_1_50);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_51", (void*)godot_icall_3_51);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_52", (void*)godot_icall_2_52);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_53", (void*)godot_icall_4_53);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_54", (void*)godot_icall_2_54);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_55", (void*)godot_icall_1_55);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_56", (void*)godot_icall_0_56);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_57", (void*)godot_icall_2_57);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_58", (void*)godot_icall_1_58);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_59", (void*)godot_icall_2_59);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_60", (void*)godot_icall_2_60);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_61", (void*)godot_icall_1_61);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_62", (void*)godot_icall_2_62);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_63", (void*)godot_icall_2_63);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_64", (void*)godot_icall_3_64);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_65", (void*)godot_icall_1_65);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_66", (void*)godot_icall_2_66);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_67", (void*)godot_icall_2_67);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_68", (void*)godot_icall_1_68);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_69", (void*)godot_icall_2_69);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_70", (void*)godot_icall_3_70);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_71", (void*)godot_icall_2_71);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_72", (void*)godot_icall_3_72);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_73", (void*)godot_icall_3_73);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_74", (void*)godot_icall_1_74);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_75", (void*)godot_icall_0_75);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_76", (void*)godot_icall_0_76);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_77", (void*)godot_icall_1_77);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_78", (void*)godot_icall_1_78);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_79", (void*)godot_icall_4_79);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_80", (void*)godot_icall_2_80);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_81", (void*)godot_icall_1_81);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_82", (void*)godot_icall_1_82);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_83", (void*)godot_icall_0_83);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_84", (void*)godot_icall_0_84);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_85", (void*)godot_icall_1_85);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_86", (void*)godot_icall_0_86);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_87", (void*)godot_icall_3_87);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_88", (void*)godot_icall_3_88);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_89", (void*)godot_icall_2_89);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_90", (void*)godot_icall_3_90);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_91", (void*)godot_icall_0_91);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_92", (void*)godot_icall_1_92);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_93", (void*)godot_icall_0_93);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_94", (void*)godot_icall_1_94);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_95", (void*)godot_icall_2_95);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_96", (void*)godot_icall_1_96);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_97", (void*)godot_icall_2_97);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_98", (void*)godot_icall_5_98);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_99", (void*)godot_icall_1_99);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_100", (void*)godot_icall_2_100);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_101", (void*)godot_icall_0_101);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_102", (void*)godot_icall_1_102);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_103", (void*)godot_icall_1_103);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_104", (void*)godot_icall_1_104);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_105", (void*)godot_icall_1_105);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_106", (void*)godot_icall_3_106);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_107", (void*)godot_icall_0_107);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_108", (void*)godot_icall_0_108);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_109", (void*)godot_icall_0_109);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_110", (void*)godot_icall_1_110);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_111", (void*)godot_icall_0_111);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_112", (void*)godot_icall_0_112);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_113", (void*)godot_icall_1_113);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_114", (void*)godot_icall_0_114);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_115", (void*)godot_icall_5_115);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_116", (void*)godot_icall_3_116);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_117", (void*)godot_icall_3_117);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_118", (void*)godot_icall_4_118);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_119", (void*)godot_icall_6_119);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_7_120", (void*)godot_icall_7_120);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_121", (void*)godot_icall_2_121);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_122", (void*)godot_icall_6_122);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_123", (void*)godot_icall_5_123);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_124", (void*)godot_icall_5_124);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_125", (void*)godot_icall_5_125);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_126", (void*)godot_icall_5_126);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_127", (void*)godot_icall_3_127);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_128", (void*)godot_icall_1_128);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_129", (void*)godot_icall_0_129);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_130", (void*)godot_icall_0_130);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_131", (void*)godot_icall_1_131);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_132", (void*)godot_icall_1_132);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_133", (void*)godot_icall_0_133);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_134", (void*)godot_icall_2_134);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_135", (void*)godot_icall_2_135);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_136", (void*)godot_icall_1_136);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_137", (void*)godot_icall_1_137);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_138", (void*)godot_icall_1_138);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_139", (void*)godot_icall_0_139);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_140", (void*)godot_icall_0_140);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_141", (void*)godot_icall_1_141);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_142", (void*)godot_icall_0_142);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_143", (void*)godot_icall_3_143);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_144", (void*)godot_icall_3_144);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_145", (void*)godot_icall_2_145);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_146", (void*)godot_icall_1_146);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_147", (void*)godot_icall_1_147);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_148", (void*)godot_icall_0_148);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_149", (void*)godot_icall_2_149);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_150", (void*)godot_icall_0_150);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_151", (void*)godot_icall_0_151);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_152", (void*)godot_icall_2_152);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_153", (void*)godot_icall_2_153);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_154", (void*)godot_icall_2_154);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_155", (void*)godot_icall_2_155);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_156", (void*)godot_icall_2_156);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_157", (void*)godot_icall_1_157);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_158", (void*)godot_icall_1_158);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_159", (void*)godot_icall_2_159);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_160", (void*)godot_icall_2_160);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_161", (void*)godot_icall_1_161);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_162", (void*)godot_icall_3_162);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_163", (void*)godot_icall_1_163);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_164", (void*)godot_icall_1_164);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_165", (void*)godot_icall_4_165);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_166", (void*)godot_icall_2_166);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_167", (void*)godot_icall_2_167);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_168", (void*)godot_icall_1_168);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_169", (void*)godot_icall_2_169);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_170", (void*)godot_icall_2_170);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_171", (void*)godot_icall_4_171);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_172", (void*)godot_icall_2_172);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_173", (void*)godot_icall_2_173);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_174", (void*)godot_icall_1_174);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_175", (void*)godot_icall_2_175);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_176", (void*)godot_icall_0_176);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_177", (void*)godot_icall_2_177);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_178", (void*)godot_icall_0_178);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_179", (void*)godot_icall_0_179);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_180", (void*)godot_icall_1_180);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_181", (void*)godot_icall_0_181);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_182", (void*)godot_icall_0_182);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_183", (void*)godot_icall_1_183);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_184", (void*)godot_icall_2_184);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_185", (void*)godot_icall_2_185);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_186", (void*)godot_icall_4_186);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_187", (void*)godot_icall_0_187);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_188", (void*)godot_icall_0_188);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_189", (void*)godot_icall_2_189);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_190", (void*)godot_icall_0_190);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_191", (void*)godot_icall_0_191);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_192", (void*)godot_icall_0_192);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_193", (void*)godot_icall_4_193);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_194", (void*)godot_icall_4_194);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_195", (void*)godot_icall_1_195);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_196", (void*)godot_icall_1_196);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_197", (void*)godot_icall_3_197);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_198", (void*)godot_icall_3_198);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_199", (void*)godot_icall_2_199);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_200", (void*)godot_icall_3_200);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_201", (void*)godot_icall_0_201);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_202", (void*)godot_icall_5_202);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_203", (void*)godot_icall_5_203);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_204", (void*)godot_icall_1_204);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_205", (void*)godot_icall_1_205);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_206", (void*)godot_icall_1_206);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_207", (void*)godot_icall_2_207);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_208", (void*)godot_icall_1_208);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_209", (void*)godot_icall_1_209);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_210", (void*)godot_icall_0_210);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_211", (void*)godot_icall_2_211);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_212", (void*)godot_icall_1_212);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_213", (void*)godot_icall_2_213);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_214", (void*)godot_icall_2_214);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_215", (void*)godot_icall_1_215);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_216", (void*)godot_icall_1_216);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_217", (void*)godot_icall_1_217);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_218", (void*)godot_icall_1_218);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_219", (void*)godot_icall_0_219);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_220", (void*)godot_icall_0_220);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_221", (void*)godot_icall_4_221);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_222", (void*)godot_icall_4_222);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_223", (void*)godot_icall_4_223);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_9_224", (void*)godot_icall_9_224);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_225", (void*)godot_icall_0_225);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_226", (void*)godot_icall_5_226);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_227", (void*)godot_icall_3_227);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_228", (void*)godot_icall_4_228);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_229", (void*)godot_icall_2_229);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_230", (void*)godot_icall_1_230);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_231", (void*)godot_icall_4_231);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_232", (void*)godot_icall_0_232);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_233", (void*)godot_icall_4_233);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_234", (void*)godot_icall_4_234);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_235", (void*)godot_icall_1_235);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_236", (void*)godot_icall_0_236);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_237", (void*)godot_icall_0_237);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_238", (void*)godot_icall_1_238);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_239", (void*)godot_icall_5_239);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_240", (void*)godot_icall_2_240);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_241", (void*)godot_icall_4_241);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_242", (void*)godot_icall_5_242);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_243", (void*)godot_icall_3_243);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_244", (void*)godot_icall_3_244);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_245", (void*)godot_icall_4_245);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_246", (void*)godot_icall_1_246);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_247", (void*)godot_icall_3_247);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_248", (void*)godot_icall_2_248);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_249", (void*)godot_icall_4_249);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_250", (void*)godot_icall_2_250);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_251", (void*)godot_icall_0_251);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_252", (void*)godot_icall_1_252);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_253", (void*)godot_icall_4_253);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_254", (void*)godot_icall_4_254);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_255", (void*)godot_icall_2_255);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_256", (void*)godot_icall_1_256);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_257", (void*)godot_icall_2_257);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_258", (void*)godot_icall_2_258);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_259", (void*)godot_icall_1_259);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_260", (void*)godot_icall_2_260);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_261", (void*)godot_icall_1_261);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_262", (void*)godot_icall_3_262);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_263", (void*)godot_icall_2_263);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_264", (void*)godot_icall_2_264);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_265", (void*)godot_icall_1_265);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_266", (void*)godot_icall_2_266);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_267", (void*)godot_icall_2_267);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_7_268", (void*)godot_icall_7_268);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_269", (void*)godot_icall_1_269);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_270", (void*)godot_icall_5_270);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_271", (void*)godot_icall_2_271);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_272", (void*)godot_icall_2_272);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_273", (void*)godot_icall_0_273);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_274", (void*)godot_icall_0_274);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_275", (void*)godot_icall_1_275);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_276", (void*)godot_icall_0_276);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_277", (void*)godot_icall_1_277);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_278", (void*)godot_icall_0_278);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_279", (void*)godot_icall_2_279);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_280", (void*)godot_icall_1_280);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_281", (void*)godot_icall_2_281);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_282", (void*)godot_icall_1_282);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_283", (void*)godot_icall_2_283);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_284", (void*)godot_icall_1_284);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_285", (void*)godot_icall_2_285);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_286", (void*)godot_icall_1_286);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_287", (void*)godot_icall_0_287);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_288", (void*)godot_icall_1_288);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_289", (void*)godot_icall_1_289);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_290", (void*)godot_icall_3_290);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_291", (void*)godot_icall_3_291);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_292", (void*)godot_icall_3_292);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_293", (void*)godot_icall_1_293);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_294", (void*)godot_icall_3_294);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_295", (void*)godot_icall_2_295);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_296", (void*)godot_icall_3_296);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_297", (void*)godot_icall_1_297);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_298", (void*)godot_icall_2_298);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_299", (void*)godot_icall_2_299);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_300", (void*)godot_icall_1_300);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_301", (void*)godot_icall_0_301);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_302", (void*)godot_icall_4_302);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_303", (void*)godot_icall_4_303);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_304", (void*)godot_icall_1_304);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_305", (void*)godot_icall_1_305);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_306", (void*)godot_icall_1_306);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_307", (void*)godot_icall_0_307);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_308", (void*)godot_icall_3_308);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_309", (void*)godot_icall_1_309);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_310", (void*)godot_icall_1_310);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_311", (void*)godot_icall_2_311);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_312", (void*)godot_icall_0_312);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_313", (void*)godot_icall_2_313);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_314", (void*)godot_icall_3_314);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_315", (void*)godot_icall_3_315);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_316", (void*)godot_icall_1_316);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_317", (void*)godot_icall_1_317);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_318", (void*)godot_icall_1_318);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_319", (void*)godot_icall_0_319);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_320", (void*)godot_icall_2_320);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_321", (void*)godot_icall_2_321);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_322", (void*)godot_icall_2_322);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_323", (void*)godot_icall_5_323);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_324", (void*)godot_icall_3_324);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_325", (void*)godot_icall_3_325);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_326", (void*)godot_icall_3_326);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_327", (void*)godot_icall_1_327);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_328", (void*)godot_icall_1_328);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_329", (void*)godot_icall_0_329);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_330", (void*)godot_icall_1_330);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_331", (void*)godot_icall_1_331);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_332", (void*)godot_icall_3_332);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_333", (void*)godot_icall_0_333);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_334", (void*)godot_icall_0_334);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_335", (void*)godot_icall_0_335);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_336", (void*)godot_icall_0_336);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_337", (void*)godot_icall_1_337);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_338", (void*)godot_icall_1_338);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_339", (void*)godot_icall_0_339);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_340", (void*)godot_icall_5_340);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_341", (void*)godot_icall_5_341);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_342", (void*)godot_icall_2_342);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_343", (void*)godot_icall_1_343);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_344", (void*)godot_icall_1_344);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_345", (void*)godot_icall_2_345);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_346", (void*)godot_icall_1_346);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_347", (void*)godot_icall_1_347);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_348", (void*)godot_icall_2_348);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_349", (void*)godot_icall_1_349);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_350", (void*)godot_icall_3_350);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_351", (void*)godot_icall_2_351);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_352", (void*)godot_icall_1_352);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_353", (void*)godot_icall_2_353);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_354", (void*)godot_icall_1_354);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_355", (void*)godot_icall_2_355);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_356", (void*)godot_icall_3_356);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_357", (void*)godot_icall_3_357);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_358", (void*)godot_icall_3_358);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_359", (void*)godot_icall_3_359);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_360", (void*)godot_icall_2_360);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_361", (void*)godot_icall_2_361);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_362", (void*)godot_icall_3_362);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_363", (void*)godot_icall_2_363);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_364", (void*)godot_icall_1_364);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_365", (void*)godot_icall_3_365);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_366", (void*)godot_icall_2_366);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_367", (void*)godot_icall_3_367);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_368", (void*)godot_icall_2_368);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_369", (void*)godot_icall_4_369);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_370", (void*)godot_icall_5_370);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_371", (void*)godot_icall_3_371);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_372", (void*)godot_icall_5_372);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_373", (void*)godot_icall_4_373);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_374", (void*)godot_icall_1_374);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_375", (void*)godot_icall_0_375);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_376", (void*)godot_icall_2_376);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_377", (void*)godot_icall_0_377);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_378", (void*)godot_icall_5_378);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_379", (void*)godot_icall_2_379);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_380", (void*)godot_icall_1_380);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_381", (void*)godot_icall_3_381);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_382", (void*)godot_icall_3_382);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_383", (void*)godot_icall_2_383);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_384", (void*)godot_icall_2_384);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_385", (void*)godot_icall_1_385);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_386", (void*)godot_icall_3_386);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_387", (void*)godot_icall_2_387);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_388", (void*)godot_icall_4_388);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_389", (void*)godot_icall_1_389);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_390", (void*)godot_icall_4_390);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_391", (void*)godot_icall_2_391);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_392", (void*)godot_icall_4_392);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_393", (void*)godot_icall_3_393);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_394", (void*)godot_icall_4_394);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_395", (void*)godot_icall_3_395);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_396", (void*)godot_icall_0_396);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_397", (void*)godot_icall_2_397);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_398", (void*)godot_icall_2_398);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_399", (void*)godot_icall_4_399);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_400", (void*)godot_icall_3_400);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_401", (void*)godot_icall_3_401);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_402", (void*)godot_icall_4_402);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_403", (void*)godot_icall_3_403);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_404", (void*)godot_icall_3_404);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_405", (void*)godot_icall_1_405);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_406", (void*)godot_icall_3_406);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_407", (void*)godot_icall_5_407);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_408", (void*)godot_icall_1_408);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_409", (void*)godot_icall_1_409);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_410", (void*)godot_icall_3_410);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_411", (void*)godot_icall_0_411);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_412", (void*)godot_icall_2_412);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_413", (void*)godot_icall_3_413);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_414", (void*)godot_icall_0_414);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_415", (void*)godot_icall_2_415);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_416", (void*)godot_icall_1_416);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_417", (void*)godot_icall_1_417);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_418", (void*)godot_icall_1_418);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_419", (void*)godot_icall_2_419);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_420", (void*)godot_icall_3_420);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_421", (void*)godot_icall_4_421);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_422", (void*)godot_icall_3_422);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_423", (void*)godot_icall_4_423);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_424", (void*)godot_icall_3_424);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_425", (void*)godot_icall_1_425);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_426", (void*)godot_icall_1_426);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_427", (void*)godot_icall_0_427);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_428", (void*)godot_icall_3_428);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_429", (void*)godot_icall_5_429);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_430", (void*)godot_icall_3_430);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_431", (void*)godot_icall_5_431);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_432", (void*)godot_icall_0_432);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_433", (void*)godot_icall_0_433);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_434", (void*)godot_icall_0_434);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_435", (void*)godot_icall_2_435);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_436", (void*)godot_icall_3_436);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_437", (void*)godot_icall_2_437);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_438", (void*)godot_icall_1_438);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_439", (void*)godot_icall_3_439);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_440", (void*)godot_icall_2_440);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_441", (void*)godot_icall_3_441);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_442", (void*)godot_icall_1_442);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_443", (void*)godot_icall_0_443);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_444", (void*)godot_icall_1_444);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_445", (void*)godot_icall_3_445);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_446", (void*)godot_icall_2_446);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_447", (void*)godot_icall_2_447);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_448", (void*)godot_icall_6_448);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_449", (void*)godot_icall_1_449);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_450", (void*)godot_icall_2_450);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_451", (void*)godot_icall_1_451);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_452", (void*)godot_icall_0_452);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_453", (void*)godot_icall_4_453);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_454", (void*)godot_icall_4_454);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_455", (void*)godot_icall_5_455);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_456", (void*)godot_icall_6_456);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_7_457", (void*)godot_icall_7_457);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_458", (void*)godot_icall_0_458);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_459", (void*)godot_icall_3_459);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_460", (void*)godot_icall_3_460);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_461", (void*)godot_icall_0_461);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_462", (void*)godot_icall_6_462);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_463", (void*)godot_icall_5_463);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_464", (void*)godot_icall_2_464);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_465", (void*)godot_icall_1_465);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_466", (void*)godot_icall_1_466);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_467", (void*)godot_icall_2_467);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_468", (void*)godot_icall_1_468);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_469", (void*)godot_icall_1_469);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_470", (void*)godot_icall_1_470);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_471", (void*)godot_icall_0_471);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_472", (void*)godot_icall_2_472);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_473", (void*)godot_icall_1_473);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_474", (void*)godot_icall_5_474);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_475", (void*)godot_icall_1_475);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_476", (void*)godot_icall_3_476);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_477", (void*)godot_icall_3_477);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_478", (void*)godot_icall_5_478);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_479", (void*)godot_icall_2_479);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_480", (void*)godot_icall_3_480);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_8_481", (void*)godot_icall_8_481);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_8_482", (void*)godot_icall_8_482);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_9_483", (void*)godot_icall_9_483);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_9_484", (void*)godot_icall_9_484);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_485", (void*)godot_icall_3_485);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_486", (void*)godot_icall_3_486);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_487", (void*)godot_icall_0_487);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_488", (void*)godot_icall_3_488);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_489", (void*)godot_icall_0_489);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_490", (void*)godot_icall_0_490);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_491", (void*)godot_icall_4_491);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_492", (void*)godot_icall_3_492);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_493", (void*)godot_icall_2_493);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_494", (void*)godot_icall_4_494);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_495", (void*)godot_icall_4_495);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_496", (void*)godot_icall_5_496);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_497", (void*)godot_icall_5_497);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_498", (void*)godot_icall_3_498);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_499", (void*)godot_icall_2_499);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_500", (void*)godot_icall_1_500);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_501", (void*)godot_icall_3_501);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_502", (void*)godot_icall_3_502);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_503", (void*)godot_icall_1_503);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_504", (void*)godot_icall_0_504);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_505", (void*)godot_icall_2_505);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_506", (void*)godot_icall_0_506);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_507", (void*)godot_icall_2_507);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_508", (void*)godot_icall_2_508);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_509", (void*)godot_icall_2_509);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_510", (void*)godot_icall_3_510);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_511", (void*)godot_icall_3_511);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_512", (void*)godot_icall_2_512);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_513", (void*)godot_icall_2_513);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_514", (void*)godot_icall_2_514);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_515", (void*)godot_icall_0_515);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_516", (void*)godot_icall_3_516);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_517", (void*)godot_icall_3_517);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_518", (void*)godot_icall_3_518);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_519", (void*)godot_icall_1_519);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_520", (void*)godot_icall_1_520);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_521", (void*)godot_icall_4_521);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_522", (void*)godot_icall_5_522);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_523", (void*)godot_icall_4_523);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_524", (void*)godot_icall_4_524);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_525", (void*)godot_icall_4_525);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_526", (void*)godot_icall_4_526);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_527", (void*)godot_icall_3_527);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_528", (void*)godot_icall_3_528);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_529", (void*)godot_icall_5_529);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_530", (void*)godot_icall_4_530);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_531", (void*)godot_icall_4_531);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_532", (void*)godot_icall_3_532);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_533", (void*)godot_icall_4_533);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_534", (void*)godot_icall_1_534);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_535", (void*)godot_icall_1_535);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_536", (void*)godot_icall_1_536);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_537", (void*)godot_icall_1_537);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_538", (void*)godot_icall_4_538);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_539", (void*)godot_icall_1_539);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_540", (void*)godot_icall_4_540);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_541", (void*)godot_icall_2_541);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_542", (void*)godot_icall_3_542);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_543", (void*)godot_icall_3_543);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_544", (void*)godot_icall_1_544);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_545", (void*)godot_icall_4_545);
}
}
