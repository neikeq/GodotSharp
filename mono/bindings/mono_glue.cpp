#include "glue_header.inc"

int godot_icall_0_0(MethodBind* method, Object* ptr) {
	int ret;
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

void godot_icall_3_1(MethodBind* method, Object* ptr, int arg1, real_t* arg2, real_t arg3) {
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_2(MethodBind* method, Object* ptr, int arg1) {
	Vector3 ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

real_t godot_icall_1_3(MethodBind* method, Object* ptr, int arg1) {
	real_t ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_1_4(MethodBind* method, Object* ptr, int arg1) {
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_5(MethodBind* method, Object* ptr, int arg1, int arg2) {
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_2_6(MethodBind* method, Object* ptr, int arg1, int arg2) {
	bool ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_0_7(MethodBind* method, Object* ptr) {
	method->ptrcall(ptr, NULL, NULL);
}

int godot_icall_1_8(MethodBind* method, Object* ptr, real_t* arg1) {
	int ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_9(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector3 ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoArray* godot_icall_2_10(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Vector3Array ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

MonoArray* godot_icall_2_11(MethodBind* method, Object* ptr, int arg1, int arg2) {
	IntArray ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::IntArray_to_mono_array(ret);
}

void godot_icall_AStar_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_AStar_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AStar");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_12(MethodBind* method, Object* ptr) {
	Object* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_1_13(MethodBind* method, Object* ptr, bool arg1) {
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_0_14(MethodBind* method, Object* ptr) {
	bool ret;
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

MonoObject* godot_icall_3_15(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2, MonoString* arg3) {
	Button* ret = NULL;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_1_16(MethodBind* method, Object* ptr, MonoString* arg1) {
	Button* ret = NULL;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_1_17(MethodBind* method, Object* ptr, Object* arg1) {
	LineEdit* ret = NULL;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

void godot_icall_1_18(MethodBind* method, Object* ptr, MonoString* arg1) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoString* godot_icall_0_19(MethodBind* method, Object* ptr) {
	String ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_1_20(MethodBind* method, Object* ptr, Object* arg1) {
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_AcceptDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AcceptDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_21(MethodBind* method, Object* ptr, Object* arg1) {
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_22(MethodBind* method, Object* ptr) {
	Ref<SpriteFrames> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_1_23(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_24(MethodBind* method, Object* ptr) {
	Vector2 ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

void godot_icall_1_25(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(Color, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_26(MethodBind* method, Object* ptr) {
	Color ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
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

int godot_icall_2_27(MethodBind* method, Object* ptr, int arg1, int arg2) {
	int ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_28(MethodBind* method, Object* ptr, int arg1) {
	int ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

NodePath* godot_icall_1_29(MethodBind* method, Object* ptr, int arg1) {
	NodePath ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(NodePath(ret));
}

void godot_icall_2_30(MethodBind* method, Object* ptr, int arg1, NodePath* arg2) {
	const void* call_args[2] = { &arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_1_31(MethodBind* method, Object* ptr, NodePath* arg1) {
	int ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_32(MethodBind* method, Object* ptr, int arg1, bool arg2) {
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_33(MethodBind* method, Object* ptr, int arg1) {
	bool ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_5_34(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t* arg3, real_t* arg4, real_t* arg5) {
	int ret;
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	MARSHALLED_IN(Quat, arg4, arg4_in);
	MARSHALLED_IN(Vector3, arg5, arg5_in);
	const void* call_args[5] = { &arg1, &arg2, &arg3_in, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_35(MethodBind* method, Object* ptr, int arg1, real_t arg2, MonoObject* arg3, real_t arg4) {
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[4] = { &arg1, &arg2, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_36(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_37(MethodBind* method, Object* ptr, int arg1, int arg2, MonoObject* arg3) {
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_38(MethodBind* method, Object* ptr, int arg1, int arg2, real_t arg3) {
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_39(MethodBind* method, Object* ptr, int arg1, int arg2) {
	real_t ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_40(MethodBind* method, Object* ptr, int arg1, real_t arg2, bool arg3) {
	int ret;
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_2_41(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Array ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_3_42(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t arg3) {
	IntArray ret;
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::IntArray_to_mono_array(ret);
}

MonoString* godot_icall_2_43(MethodBind* method, Object* ptr, int arg1, int arg2) {
	String ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

MonoArray* godot_icall_2_44(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Array ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

void godot_icall_1_45(MethodBind* method, Object* ptr, real_t arg1) {
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_0_46(MethodBind* method, Object* ptr) {
	real_t ret;
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

void godot_icall_Animation_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Animation_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Animation");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_2_47(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_48(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_49(MethodBind* method, Object* ptr, MonoString* arg1) {
	bool ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_50(MethodBind* method, Object* ptr, MonoString* arg1) {
	Ref<Animation> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoArray* godot_icall_0_51(MethodBind* method, Object* ptr) {
	StringArray ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::StringArray_to_mono_array(ret);
}

MonoString* godot_icall_1_52(MethodBind* method, Object* ptr, MonoString* arg1) {
	String ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_3_53(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, real_t arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_54(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	real_t ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_55(MethodBind* method, Object* ptr, MonoString* arg1, real_t arg2, real_t arg3, bool arg4) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_56(MethodBind* method, Object* ptr, MonoString* arg1, real_t arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_57(MethodBind* method, Object* ptr, NodePath* arg1) {
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

NodePath* godot_icall_0_58(MethodBind* method, Object* ptr) {
	NodePath ret;
	method->ptrcall(ptr, NULL, &ret);
	return memnew(NodePath(ret));
}

void godot_icall_2_59(MethodBind* method, Object* ptr, real_t arg1, bool arg2) {
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoString* godot_icall_1_60(MethodBind* method, Object* ptr, Object* arg1) {
	String ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

Object* godot_icall_AnimationPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AnimationPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_61(MethodBind* method, Object* ptr, int arg1, MonoString* arg2) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_2_62(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_63(MethodBind* method, Object* ptr, MonoString* arg1) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoString* godot_icall_2_64(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	String ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_2_65(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_66(MethodBind* method, Object* ptr, MonoString* arg1, NodePath* arg2, bool arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_1_67(MethodBind* method, Object* ptr, MonoString* arg1) {
	real_t ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_68(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_69(MethodBind* method, Object* ptr, MonoString* arg1, real_t* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_70(MethodBind* method, Object* ptr, MonoString* arg1) {
	Vector2 ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

void godot_icall_2_71(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_72(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, bool arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_2_73(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	bool ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_74(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, int arg3) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_3_75(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, int arg3) {
	bool ret;
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

void godot_icall_1_76(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_77(MethodBind* method, Object* ptr) {
	Vector3 ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoArray* godot_icall_0_78(MethodBind* method, Object* ptr) {
	Array ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

bool godot_icall_1_79(MethodBind* method, Object* ptr, Object* arg1) {
	bool ret;
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

MonoObject* godot_icall_0_80(MethodBind* method, Object* ptr) {
	Ref<Texture> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_1_81(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(Rect2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_82(MethodBind* method, Object* ptr) {
	Rect2 ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Rect2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect2), ret_out);
}

void godot_icall_AtlasTexture_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_AtlasTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AtlasTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

RID* godot_icall_3_83(MethodBind* method, Object* ptr, int arg1, bool arg2, int arg3) {
	RID ret;
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_2_84(MethodBind* method, Object* ptr, RID* arg1, MonoString* arg2) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoString* godot_icall_1_85(MethodBind* method, Object* ptr, RID* arg1) {
	String ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

int godot_icall_1_86(MethodBind* method, Object* ptr, RID* arg1) {
	int ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_1_87(MethodBind* method, Object* ptr, RID* arg1) {
	bool ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_88(MethodBind* method, Object* ptr, RID* arg1, MonoArray* arg2) {
	RealArray arg2_in = GDMonoMarshal::mono_array_to_RealArray(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_89(MethodBind* method, Object* ptr, RID* arg1, MonoArray* arg2) {
	ByteArray arg2_in = GDMonoMarshal::mono_array_to_ByteArray(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_90(MethodBind* method, Object* ptr, RID* arg1) {
	ByteArray ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::ByteArray_to_mono_array(ret);
}

void godot_icall_2_91(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_0_92(MethodBind* method, Object* ptr) {
	RID ret;
	method->ptrcall(ptr, NULL, &ret);
	return memnew(RID(ret));
}

void godot_icall_2_93(MethodBind* method, Object* ptr, RID* arg1, RID* arg2) {
	const void* call_args[2] = { arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_94(MethodBind* method, Object* ptr, RID* arg1, real_t arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_95(MethodBind* method, Object* ptr, RID* arg1, real_t arg2, real_t arg3, real_t arg4) {
	const void* call_args[4] = { arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_96(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t arg3, real_t arg4, real_t arg5) {
	const void* call_args[5] = { arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_97(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t arg3) {
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_98(MethodBind* method, Object* ptr, RID* arg1, bool arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_1_99(MethodBind* method, Object* ptr, RID* arg1) {
	real_t ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_1_100(MethodBind* method, Object* ptr, RID* arg1) {
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_AudioServer_get_singleton() {
	return AudioServer::get_singleton();
}

void godot_icall_AudioStream_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_AudioStreamMPC_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_AudioStreamMPC_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioStreamMPC");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_AudioStreamOGGVorbis_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_AudioStreamOGGVorbis_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioStreamOGGVorbis");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_AudioStreamOpus_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_AudioStreamOpus_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "AudioStreamOpus");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_AudioStreamPlayback_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_BackBufferCopy_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BackBufferCopy");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_101(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ByteArray arg1_in = GDMonoMarshal::mono_array_to_ByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_102(MethodBind* method, Object* ptr) {
	ByteArray ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::ByteArray_to_mono_array(ret);
}

void godot_icall_1_103(MethodBind* method, Object* ptr, MonoArray* arg1) {
	IntArray arg1_in = GDMonoMarshal::mono_array_to_IntArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_104(MethodBind* method, Object* ptr) {
	IntArray ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::IntArray_to_mono_array(ret);
}

void godot_icall_2_105(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_BakedLight_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_BakedLight_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BakedLight");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_BakedLightInstance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BakedLightInstance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_BakedLightSampler_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BakedLightSampler");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_106(MethodBind* method, Object* ptr, Image* arg1) {
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_107(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_108(MethodBind* method, Object* ptr, real_t* arg1) {
	bool ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_109(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	MARSHALLED_IN(Rect2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_BitMap_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_BitMap_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "BitMap");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_110(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3) {
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_111(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3, real_t* arg4, real_t arg5) {
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[5] = { &arg1, &arg2, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_112(MethodBind* method, Object* ptr, int arg1) {
	Ref<Texture> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_2_113(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Vector2 ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

void godot_icall_BitmapFont_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_BoxShape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_3_114(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoString* arg3) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_115(MethodBind* method, Object* ptr, int arg1, Object* arg2) {
	const void* call_args[2] = { &arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoString* godot_icall_1_116(MethodBind* method, Object* ptr, int arg1) {
	String ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

MonoObject* godot_icall_0_117(MethodBind* method, Object* ptr) {
	BaseButton* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_ButtonGroup_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ButtonGroup");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_CSharpScript_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_CSharpScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CSharpScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_118(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector3 ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_1_119(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector2 ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

bool godot_icall_1_120(MethodBind* method, Object* ptr, real_t* arg1) {
	bool ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_121(MethodBind* method, Object* ptr, real_t arg1, real_t arg2, real_t arg3) {
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_122(MethodBind* method, Object* ptr) {
	Transform ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

MonoObject* godot_icall_0_123(MethodBind* method, Object* ptr) {
	Ref<Environment> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_Camera_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Camera");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_124(MethodBind* method, Object* ptr) {
	Viewport* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_Camera2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Camera2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_125(MethodBind* method, Object* ptr, MonoObject* arg1) {
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_126(MethodBind* method, Object* ptr) {
	Variant ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

void godot_icall_5_127(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t arg4, bool arg5) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_128(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	MARSHALLED_IN(Rect2, arg1, arg1_in);
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_129(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2, real_t* arg3) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_130(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, real_t* arg3) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_131(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, bool arg3, real_t* arg4, bool arg5) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_132(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, real_t* arg3, real_t* arg4, bool arg5) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_133(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_134(MethodBind* method, Object* ptr, MonoArray* arg1, MonoArray* arg2, MonoArray* arg3, Object* arg4, real_t arg5) {
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	ColorArray arg2_in = GDMonoMarshal::mono_array_to_ColorArray(arg2);
	Vector2Array arg3_in = GDMonoMarshal::mono_array_to_Vector2Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_135(MethodBind* method, Object* ptr, MonoArray* arg1, MonoArray* arg2, MonoArray* arg3, Object* arg4) {
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	ColorArray arg2_in = GDMonoMarshal::mono_array_to_ColorArray(arg2);
	Vector2Array arg3_in = GDMonoMarshal::mono_array_to_Vector2Array(arg3);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_136(MethodBind* method, Object* ptr, MonoArray* arg1, real_t* arg2, MonoArray* arg3, Object* arg4) {
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	MARSHALLED_IN(Color, arg2, arg2_in);
	Vector2Array arg3_in = GDMonoMarshal::mono_array_to_Vector2Array(arg3);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_137(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, MonoString* arg3, real_t* arg4, int arg5) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_5_138(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, MonoString* arg3, MonoString* arg4, real_t* arg5) {
	real_t ret;
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	String arg4_in = GDMonoMarshal::mono_string_to_godot(arg4);
	MARSHALLED_IN(Color, arg5, arg5_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_139(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2, real_t* arg3) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_140(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(Matrix32, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_141(MethodBind* method, Object* ptr) {
	Matrix32 ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Matrix32, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Matrix32), ret_out);
}

MonoObject* godot_icall_0_142(MethodBind* method, Object* ptr) {
	Ref<CanvasItemMaterial> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_143(MethodBind* method, Object* ptr, real_t* arg1) {
	Vector2 ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_1_144(MethodBind* method, Object* ptr, char* arg1) {
	InputEvent ret;
	MARSHALLED_IN(InputEvent, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(InputEvent, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(InputEvent), ret_out);
}

MonoObject* godot_icall_0_145(MethodBind* method, Object* ptr) {
	Ref<Shader> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_2_146(MethodBind* method, Object* ptr, MonoString* arg1, MonoObject* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_CanvasItemMaterial_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_CanvasItemMaterial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CanvasItemMaterial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_CanvasItemShader_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_CanvasItemShader_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CanvasItemShader");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_CanvasItemShaderGraph_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_CanvasItemShaderGraph_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CanvasItemShaderGraph");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_147(MethodBind* method, Object* ptr) {
	Ref<World2D> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
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

void godot_icall_CapsuleShape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_CapsuleShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CapsuleShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_CapsuleShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_CircleShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_CircleShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CircleShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_148(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_149(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_150(MethodBind* method, Object* ptr, int arg1) {
	Ref<Shape> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_151(MethodBind* method, Object* ptr, int arg1) {
	Transform ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

void godot_icall_2_152(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	MARSHALLED_IN(Matrix32, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_153(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	MARSHALLED_IN(Matrix32, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_154(MethodBind* method, Object* ptr, int arg1) {
	Ref<Shape2D> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_155(MethodBind* method, Object* ptr, int arg1) {
	Matrix32 ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Matrix32, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Matrix32), ret_out);
}

void godot_icall_1_156(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_157(MethodBind* method, Object* ptr) {
	Vector2Array ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
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

Object* godot_icall_ColorFrame_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ColorFrame");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ColorPicker_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ColorPicker");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_158(MethodBind* method, Object* ptr) {
	ColorPicker* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_ColorPickerButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ColorPickerButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_159(MethodBind* method, Object* ptr, real_t arg1, real_t* arg2) {
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_160(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_161(MethodBind* method, Object* ptr, int arg1) {
	Color ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

MonoObject* godot_icall_1_162(MethodBind* method, Object* ptr, real_t arg1) {
	Color ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

void godot_icall_1_163(MethodBind* method, Object* ptr, MonoArray* arg1) {
	RealArray arg1_in = GDMonoMarshal::mono_array_to_RealArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_164(MethodBind* method, Object* ptr) {
	RealArray ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::RealArray_to_mono_array(ret);
}

void godot_icall_1_165(MethodBind* method, Object* ptr, MonoArray* arg1) {
	ColorArray arg1_in = GDMonoMarshal::mono_array_to_ColorArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_166(MethodBind* method, Object* ptr) {
	ColorArray ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::ColorArray_to_mono_array(ret);
}

void godot_icall_ColorRamp_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ColorRamp_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ColorRamp");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_167(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Vector3Array arg1_in = GDMonoMarshal::mono_array_to_Vector3Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_0_168(MethodBind* method, Object* ptr) {
	Vector3Array ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

void godot_icall_ConcavePolygonShape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ConcavePolygonShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConcavePolygonShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_ConcavePolygonShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_3_169(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, MonoObject* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_3_170(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, MonoObject* arg3) {
	Variant ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

bool godot_icall_2_171(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	bool ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_172(MethodBind* method, Object* ptr, MonoString* arg1) {
	StringArray ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::StringArray_to_mono_array(ret);
}

Error godot_icall_1_173(MethodBind* method, Object* ptr, MonoString* arg1) {
	Error ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_ConfigFile_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ConfigFile_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConfigFile");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_174(MethodBind* method, Object* ptr) {
	Button* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_ConfirmationDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConfirmationDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_175(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Container_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Container");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_176(MethodBind* method, Object* ptr, int arg1, int arg2, bool arg3) {
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_177(MethodBind* method, Object* ptr) {
	Control* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_0_178(MethodBind* method, Object* ptr) {
	Ref<Theme> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_2_179(MethodBind* method, Object* ptr, MonoString* arg1, real_t* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_180(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Ref<Texture> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_2_181(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Ref<StyleBox> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_2_182(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Ref<Font> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_2_183(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Color ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

MonoString* godot_icall_1_184(MethodBind* method, Object* ptr, real_t* arg1) {
	String ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

int godot_icall_1_185(MethodBind* method, Object* ptr, real_t* arg1) {
	int ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_186(MethodBind* method, Object* ptr, MonoObject* arg1, Object* arg2) {
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Control_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Control");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_ConvexPolygonShape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ConvexPolygonShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConvexPolygonShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_ConvexPolygonShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ConvexPolygonShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ConvexPolygonShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_187(MethodBind* method, Object* ptr, int arg1, Image* arg2) {
	const void* call_args[2] = { &arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

Image* godot_icall_1_188(MethodBind* method, Object* ptr, int arg1) {
	Image ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(Image(ret));
}

void godot_icall_CubeMap_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_CubeMap_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "CubeMap");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_189(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, int arg4) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_190(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_191(MethodBind* method, Object* ptr, int arg1) {
	Vector2 ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_2_192(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Vector2 ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_1_193(MethodBind* method, Object* ptr, real_t arg1) {
	Vector2 ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoObject* godot_icall_2_194(MethodBind* method, Object* ptr, real_t arg1, bool arg2) {
	Vector2 ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

MonoArray* godot_icall_2_195(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Vector2Array ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
}

void godot_icall_Curve2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Curve2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Curve2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_196(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, int arg4) {
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_197(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_198(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Vector3 ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_1_199(MethodBind* method, Object* ptr, real_t arg1) {
	Vector3 ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_2_200(MethodBind* method, Object* ptr, real_t arg1, bool arg2) {
	Vector3 ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoArray* godot_icall_2_201(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	Vector3Array ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

void godot_icall_Curve3D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Curve3D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Curve3D");
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

MonoObject* godot_icall_0_202(MethodBind* method, Object* ptr) {
	Ref<DynamicFontData> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_203(MethodBind* method, Object* ptr, int arg1) {
	Ref<DynamicFontData> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_DynamicFont_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_DynamicFont_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "DynamicFont");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_DynamicFontData_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_DynamicFontData_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "DynamicFontData");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_EditorExportPlugin_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_EditorExportPlugin_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorExportPlugin");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_204(MethodBind* method, Object* ptr) {
	VBoxContainer* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_EditorFileDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorFileDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_205(MethodBind* method, Object* ptr) {
	EditorFileSystemDirectory* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_1_206(MethodBind* method, Object* ptr, MonoString* arg1) {
	EditorFileSystemDirectory* ret = NULL;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_EditorFileSystem_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorFileSystem");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_207(MethodBind* method, Object* ptr, int arg1) {
	Object* ret = NULL;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_EditorFileSystemDirectory_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorFileSystemDirectory");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_EditorImportPlugin_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_EditorImportPlugin_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorImportPlugin");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_208(MethodBind* method, Object* ptr, int arg1, Object* arg2) {
	const void* call_args[2] = { &arg1, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_209(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2) {
	ToolButton* ret = NULL;
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

void godot_icall_4_210(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, Object* arg3, Object* arg4) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[4] = { &arg1_in, &arg2_in, arg3, arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_211(MethodBind* method, Object* ptr) {
	EditorResourcePreview* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_0_212(MethodBind* method, Object* ptr) {
	EditorFileSystem* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

void godot_icall_2_213(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_214(MethodBind* method, Object* ptr) {
	UndoRedo* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_0_215(MethodBind* method, Object* ptr) {
	EditorSelection* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_0_216(MethodBind* method, Object* ptr) {
	Ref<EditorSettings> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_EditorPlugin_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorPlugin");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_217(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3, MonoObject* arg4) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { &arg1_in, arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_218(MethodBind* method, Object* ptr, Object* arg1, Object* arg2, MonoString* arg3, MonoObject* arg4) {
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

void godot_icall_EditorResourcePreviewGenerator_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_EditorResourcePreviewGenerator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorResourcePreviewGenerator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_EditorScenePostImport_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_EditorScenePostImport_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorScenePostImport");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_EditorScript_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_1_219(MethodBind* method, Object* ptr, MonoObject* arg1) {
	Dictionary arg1_in = GDMonoMarshal::mono_object_to_Dictionary(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_1_220(MethodBind* method, Object* ptr, MonoArray* arg1) {
	StringArray arg1_in = GDMonoMarshal::mono_array_to_StringArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_EditorSettings_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_EditorSettings_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorSettings");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_221(MethodBind* method, Object* ptr, MonoArray* arg1, Object* arg2, bool arg3) {
	Vector3Array arg1_in = GDMonoMarshal::mono_array_to_Vector3Array(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_222(MethodBind* method, Object* ptr, Object* arg1, bool arg2, RID* arg3) {
	const void* call_args[3] = { arg1, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_223(MethodBind* method, Object* ptr, Object* arg1, real_t arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_224(MethodBind* method, Object* ptr, MonoArray* arg1, bool arg2, bool arg3) {
	Vector3Array arg1_in = GDMonoMarshal::mono_array_to_Vector3Array(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_EditorSpatialGizmo_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_EditorSpatialGizmo_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EditorSpatialGizmo");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_225(MethodBind* method, Object* ptr, int arg1, MonoObject* arg2) {
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_Environment_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Environment_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Environment");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_226(MethodBind* method, Object* ptr) {
	Ref<EventStream> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_EventPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EventPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_EventStream_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_EventStreamChibi_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_EventStreamChibi_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "EventStreamChibi");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_FileDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "FileDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_227(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(Transform, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_FixedMaterial_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_FixedMaterial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "FixedMaterial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_5_228(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, MonoString* arg3, real_t* arg4, int arg5) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_5_229(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, int arg3, int arg4, real_t* arg5) {
	real_t ret;
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg5, arg5_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3, &arg4, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_Font_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_1_230(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Variant ret;
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

void godot_icall_FuncRef_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_FuncRef_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "FuncRef");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_231(MethodBind* method, Object* ptr, MonoObject* arg1) {
	Variant ret;
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

void godot_icall_GDFunctionState_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_GDNativeClass_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_1_232(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Object* ret = NULL;
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

void godot_icall_GDScript_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_GDScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "GDScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Generic6DOFJoint_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Generic6DOFJoint");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_233(MethodBind* method, Object* ptr, MonoString* arg1) {
	Object* ret = NULL;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

Object* godot_icall_Globals_get_singleton() {
	return Globals::get_singleton();
}

Error godot_icall_4_234(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3, int arg4) {
	Error ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_4_235(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3, int arg4) {
	bool ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_236(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3, int arg4) {
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

void godot_icall_9_237(MethodBind* method, Object* ptr, int arg1, bool arg2, int arg3, real_t* arg4, bool arg5, int arg6, real_t* arg7, Object* arg8, Object* arg9) {
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

MonoObject* godot_icall_0_238(MethodBind* method, Object* ptr) {
	Ref<MeshLibrary> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_5_239(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4, int arg5) {
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_3_240(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3) {
	int ret;
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_241(MethodBind* method, Object* ptr, bool arg1, bool arg2, int arg3, int arg4) {
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_2_242(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	int ret;
	MARSHALLED_IN(AABB, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_243(MethodBind* method, Object* ptr, int arg1) {
	AABB ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(AABB, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(AABB), ret_out);
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

Object* godot_icall_HButtonArray_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HButtonArray");
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

Error godot_icall_5_244(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, bool arg3, bool arg4, int arg5) {
	Error ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_0_245(MethodBind* method, Object* ptr) {
	Ref<StreamPeer> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

int godot_icall_4_246(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoArray* arg3, MonoArray* arg4) {
	int ret;
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	StringArray arg3_in = GDMonoMarshal::mono_array_to_StringArray(arg3);
	ByteArray arg4_in = GDMonoMarshal::mono_array_to_ByteArray(arg4);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_4_247(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoArray* arg3, MonoString* arg4) {
	int ret;
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	StringArray arg3_in = GDMonoMarshal::mono_array_to_StringArray(arg3);
	String arg4_in = GDMonoMarshal::mono_string_to_godot(arg4);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_248(MethodBind* method, Object* ptr, MonoArray* arg1) {
	int ret;
	ByteArray arg1_in = GDMonoMarshal::mono_array_to_ByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_0_249(MethodBind* method, Object* ptr) {
	Dictionary ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

Error godot_icall_0_250(MethodBind* method, Object* ptr) {
	Error ret;
	method->ptrcall(ptr, NULL, &ret);
	return ret;
}

MonoString* godot_icall_1_251(MethodBind* method, Object* ptr, MonoObject* arg1) {
	String ret;
	Dictionary arg1_in = GDMonoMarshal::mono_object_to_Dictionary(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_HTTPClient_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_HTTPClient_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "HTTPClient");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_5_252(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2, bool arg3, int arg4, MonoString* arg5) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	StringArray arg2_in = GDMonoMarshal::mono_array_to_StringArray(arg2);
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

int godot_icall_2_253(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_IP_get_singleton() {
	return IP::get_singleton();
}

void godot_icall_4_254(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4) {
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_255(MethodBind* method, Object* ptr, Image* arg1, int arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

Image* godot_icall_0_256(MethodBind* method, Object* ptr) {
	Image ret;
	method->ptrcall(ptr, NULL, &ret);
	return memnew(Image(ret));
}

void godot_icall_ImageTexture_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ImageTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ImageTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_1_257(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(Plane, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_258(MethodBind* method, Object* ptr, int arg1, int arg2, real_t arg3, bool arg4) {
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_ImmediateGeometry_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ImmediateGeometry");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_259(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t arg3, real_t arg4) {
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_Input_get_singleton() {
	return Input::get_singleton();
}

void godot_icall_2_260(MethodBind* method, Object* ptr, MonoString* arg1, char* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(InputEvent, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_2_261(MethodBind* method, Object* ptr, MonoString* arg1, char* arg2) {
	bool ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(InputEvent, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_262(MethodBind* method, Object* ptr, MonoString* arg1) {
	Array ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

bool godot_icall_2_263(MethodBind* method, Object* ptr, char* arg1, MonoString* arg2) {
	bool ret;
	MARSHALLED_IN(InputEvent, arg1, arg1_in);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_InputMap_get_singleton() {
	return InputMap::get_singleton();
}

MonoObject* godot_icall_1_264(MethodBind* method, Object* ptr, bool arg1) {
	Dictionary ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

Object* godot_icall_InterpolatedCamera_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "InterpolatedCamera");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_265(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, bool arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_266(MethodBind* method, Object* ptr, Object* arg1, bool arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_267(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_268(MethodBind* method, Object* ptr, int arg1) {
	Rect2 ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Rect2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect2), ret_out);
}

int godot_icall_2_269(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	int ret;
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

Object* godot_icall_KinematicBody_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "KinematicBody");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_4_270(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t arg3, int arg4) {
	Vector2 ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

bool godot_icall_2_271(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	bool ret;
	MARSHALLED_IN(Matrix32, arg1, arg1_in);
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
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_LargeTexture_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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
	Ref<OccluderPolygon2D> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_LightOccluder2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "LightOccluder2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_274(MethodBind* method, Object* ptr) {
	PopupMenu* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_LineEdit_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "LineEdit");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_LineShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_1_275(MethodBind* method, Object* ptr, char* arg1) {
	MARSHALLED_IN(InputEvent, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_1_276(MethodBind* method, Object* ptr, real_t arg1) {
	bool ret;
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

void godot_icall_Material_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_MaterialShader_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_MaterialShader_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MaterialShader");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_MaterialShaderGraph_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_MaterialShaderGraph_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MaterialShaderGraph");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_MenuButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MenuButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_277(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2, MonoArray* arg3, bool arg4) {
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_278(MethodBind* method, Object* ptr, int arg1) {
	Ref<Material> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_1_279(MethodBind* method, Object* ptr, real_t* arg1) {
	MARSHALLED_IN(AABB, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_280(MethodBind* method, Object* ptr) {
	AABB ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(AABB, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(AABB), ret_out);
}

void godot_icall_Mesh_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Mesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Mesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_2_281(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	int ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_282(MethodBind* method, Object* ptr, Object* arg1) {
	int ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_283(MethodBind* method, Object* ptr, int arg1, real_t* arg2) {
	MARSHALLED_IN(Plane, arg2, arg2_in);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_284(MethodBind* method, Object* ptr, int arg1) {
	Plane ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Plane, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Plane), ret_out);
}

void godot_icall_2_285(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	IntArray arg2_in = GDMonoMarshal::mono_array_to_IntArray(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_286(MethodBind* method, Object* ptr, int arg1) {
	IntArray ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::IntArray_to_mono_array(ret);
}

void godot_icall_2_287(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	RealArray arg2_in = GDMonoMarshal::mono_array_to_RealArray(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_288(MethodBind* method, Object* ptr, int arg1) {
	RealArray ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::RealArray_to_mono_array(ret);
}

void godot_icall_MeshDataTool_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_MeshDataTool_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MeshDataTool");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_289(MethodBind* method, Object* ptr) {
	Ref<Mesh> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_MeshInstance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MeshInstance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_290(MethodBind* method, Object* ptr, int arg1) {
	Ref<Mesh> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_291(MethodBind* method, Object* ptr, int arg1) {
	Ref<NavigationMesh> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_MeshLibrary_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_MeshLibrary_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "MeshLibrary");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_MultiMesh_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

int godot_icall_3_292(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, Object* arg3) {
	int ret;
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[3] = { arg1, &arg2_in, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_3_293(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, bool arg3) {
	Vector3Array ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

MonoObject* godot_icall_3_294(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, bool arg3) {
	Vector3 ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

MonoObject* godot_icall_1_295(MethodBind* method, Object* ptr, real_t* arg1) {
	Object* ret = NULL;
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

int godot_icall_3_296(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2, Object* arg3) {
	int ret;
	MARSHALLED_IN(Matrix32, arg2, arg2_in);
	const void* call_args[3] = { arg1, &arg2_in, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_3_297(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, bool arg3) {
	Vector2Array ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
}

MonoObject* godot_icall_1_298(MethodBind* method, Object* ptr, real_t* arg1) {
	Object* ret = NULL;
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

void godot_icall_NavigationMesh_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_2_299(MethodBind* method, Object* ptr, MonoArray* arg1, int arg2) {
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_300(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	Vector2Array arg2_in = GDMonoMarshal::mono_array_to_Vector2Array(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_301(MethodBind* method, Object* ptr, int arg1) {
	Vector2Array ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
}

void godot_icall_NavigationPolygon_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_NavigationPolygon_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NavigationPolygon");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_302(MethodBind* method, Object* ptr) {
	Ref<NavigationPolygon> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_NavigationPolygonInstance_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NavigationPolygonInstance");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_4_303(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4) {
	int ret;
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_4_304(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_NetworkedMultiplayerENet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_NetworkedMultiplayerENet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "NetworkedMultiplayerENet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_NetworkedMultiplayerPeer_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_2_305(MethodBind* method, Object* ptr, Object* arg1, bool arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_306(MethodBind* method, Object* ptr, int arg1) {
	Node* ret = NULL;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

bool godot_icall_1_307(MethodBind* method, Object* ptr, NodePath* arg1) {
	bool ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_308(MethodBind* method, Object* ptr, NodePath* arg1) {
	Node* ret = NULL;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_0_309(MethodBind* method, Object* ptr) {
	Node* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_3_310(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2, bool arg3) {
	Node* ret = NULL;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoArray* godot_icall_1_311(MethodBind* method, Object* ptr, NodePath* arg1) {
	Array ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

NodePath* godot_icall_1_312(MethodBind* method, Object* ptr, Object* arg1) {
	NodePath ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(NodePath(ret));
}

void godot_icall_2_313(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_314(MethodBind* method, Object* ptr) {
	SceneTree* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_1_315(MethodBind* method, Object* ptr, bool arg1) {
	Node* ret = NULL;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

void godot_icall_2_316(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg2);
	int total_length = 1 + vararg_length;
	ERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, void());
	Vector<Variant*> call_args;
	ERR_FAIL_COND_V(call_args.resize(total_length) != OK, void());
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

void godot_icall_3_317(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoArray* arg3) {
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg3);
	int total_length = 2 + vararg_length;
	ERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, void());
	Vector<Variant*> call_args;
	ERR_FAIL_COND_V(call_args.resize(total_length) != OK, void());
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

void godot_icall_3_318(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoObject* arg3) {
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

real_t godot_icall_1_319(MethodBind* method, Object* ptr, real_t* arg1) {
	real_t ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_320(MethodBind* method, Object* ptr, Object* arg1) {
	Matrix32 ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Matrix32, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Matrix32), ret_out);
}

Object* godot_icall_Node2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Node2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_321(MethodBind* method, Object* ptr) {
	Ref<Script> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_2_322(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_323(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	Variant ret;
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

MonoObject* godot_icall_2_324(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2) {
	Variant ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

int godot_icall_5_325(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3, MonoArray* arg4, int arg5) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Array arg4_in = GDMonoMarshal::mono_array_to_Array(arg4);
	const void* call_args[5] = { &arg1_in, arg2, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_326(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_3_327(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, MonoString* arg3) {
	bool ret;
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

void godot_icall_OccluderPolygon2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_3_328(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, int arg3) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_OptionButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "OptionButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_1_329(MethodBind* method, Object* ptr, bool arg1) {
	int ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_PCKPacker_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_PCKPacker_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PCKPacker");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_PHashTranslation_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_PHashTranslation_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PHashTranslation");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_1_330(MethodBind* method, Object* ptr, MonoObject* arg1) {
	Error ret;
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_PackedDataContainer_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_PackedDataContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PackedDataContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_PackedDataContainerRef_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_0_331(MethodBind* method, Object* ptr) {
	Ref<SceneState> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_PackedScene_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_PackedScene_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PackedScene");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_1_332(MethodBind* method, Object* ptr, MonoObject* arg1) {
	int ret;
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Error godot_icall_1_333(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Error ret;
	ByteArray arg1_in = GDMonoMarshal::mono_array_to_ByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_PacketPeer_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_PacketPeerStream_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_PacketPeerStream_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PacketPeerStream");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_3_334(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3) {
	Error ret;
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_335(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_PacketPeerUDP_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

Object* godot_icall_ParticleAttractor2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ParticleAttractor2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_336(MethodBind* method, Object* ptr) {
	Ref<Material> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_Particles_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Particles");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_337(MethodBind* method, Object* ptr, Object* arg1) {
	Ref<Texture> ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_338(MethodBind* method, Object* ptr, Object* arg1) {
	Ref<ColorRamp> ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_0_339(MethodBind* method, Object* ptr) {
	Ref<ColorRamp> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_Particles2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Particles2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_Patch9Frame_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Patch9Frame");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_340(MethodBind* method, Object* ptr) {
	Ref<Curve3D> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_Path_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Path");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_341(MethodBind* method, Object* ptr) {
	Ref<Curve2D> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
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

void godot_icall_3_342(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, MonoString* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_PathRemap_get_singleton() {
	return PathRemap::get_singleton();
}

Object* godot_icall_Performance_get_singleton() {
	return Performance::get_singleton();
}

RID* godot_icall_1_343(MethodBind* method, Object* ptr, int arg1) {
	RID ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

MonoObject* godot_icall_1_344(MethodBind* method, Object* ptr, int arg1) {
	Variant ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject* godot_icall_0_345(MethodBind* method, Object* ptr) {
	Physics2DDirectSpaceState* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoArray* godot_icall_5_346(MethodBind* method, Object* ptr, real_t* arg1, int arg2, MonoArray* arg3, int arg4, int arg5) {
	Array ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_5_347(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, MonoArray* arg3, int arg4, int arg5) {
	Dictionary ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

MonoArray* godot_icall_2_348(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	Array ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_1_349(MethodBind* method, Object* ptr, Object* arg1) {
	Array ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_1_350(MethodBind* method, Object* ptr, Object* arg1) {
	Dictionary ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

void godot_icall_2_351(MethodBind* method, Object* ptr, RID* arg1, MonoObject* arg2) {
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_352(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	real_t ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_1_353(MethodBind* method, Object* ptr, RID* arg1) {
	Physics2DDirectSpaceState* ret = NULL;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

RID* godot_icall_1_354(MethodBind* method, Object* ptr, RID* arg1) {
	RID ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_3_355(MethodBind* method, Object* ptr, RID* arg1, RID* arg2, real_t* arg3) {
	MARSHALLED_IN(Matrix32, arg3, arg3_in);
	const void* call_args[3] = { arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_356(MethodBind* method, Object* ptr, RID* arg1, int arg2, RID* arg3) {
	const void* call_args[3] = { arg1, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_357(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Matrix32, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_2_358(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	RID ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

MonoObject* godot_icall_2_359(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	Matrix32 ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Matrix32, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Matrix32), ret_out);
}

void godot_icall_3_360(MethodBind* method, Object* ptr, RID* arg1, int arg2, MonoObject* arg3) {
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_361(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	MARSHALLED_IN(Matrix32, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_362(MethodBind* method, Object* ptr, RID* arg1) {
	Matrix32 ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Matrix32, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Matrix32), ret_out);
}

void godot_icall_3_363(MethodBind* method, Object* ptr, RID* arg1, Object* arg2, MonoString* arg3) {
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_2_364(MethodBind* method, Object* ptr, int arg1, bool arg2) {
	RID ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_3_365(MethodBind* method, Object* ptr, RID* arg1, int arg2, bool arg3) {
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_2_366(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	bool ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_367(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_368(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_369(MethodBind* method, Object* ptr, RID* arg1) {
	Vector2 ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

void godot_icall_4_370(MethodBind* method, Object* ptr, RID* arg1, Object* arg2, MonoString* arg3, MonoObject* arg4) {
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { arg1, arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_5_371(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, real_t arg4, Object* arg5) {
	bool ret;
	MARSHALLED_IN(Matrix32, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4, arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

RID* godot_icall_3_372(MethodBind* method, Object* ptr, real_t* arg1, RID* arg2, RID* arg3) {
	RID ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[3] = { &arg1_in, arg2, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

RID* godot_icall_5_373(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, RID* arg4, RID* arg5) {
	RID ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, arg4, arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

RID* godot_icall_4_374(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, RID* arg3, RID* arg4) {
	RID ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, arg3, arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

Object* godot_icall_Physics2DServer_get_singleton() {
	return Physics2DServer::get_singleton();
}

void godot_icall_1_375(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Array arg1_in = GDMonoMarshal::mono_array_to_Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_Physics2DShapeQueryParameters_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Physics2DShapeQueryParameters_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Physics2DShapeQueryParameters");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_Physics2DShapeQueryResult_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_Physics2DTestMotionResult_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Physics2DTestMotionResult_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Physics2DTestMotionResult");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_2_376(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_377(MethodBind* method, Object* ptr) {
	PhysicsDirectSpaceState* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_5_378(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, MonoArray* arg3, int arg4, int arg5) {
	Dictionary ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

MonoArray* godot_icall_2_379(MethodBind* method, Object* ptr, Object* arg1, real_t* arg2) {
	Array ret;
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoObject* godot_icall_1_380(MethodBind* method, Object* ptr, RID* arg1) {
	PhysicsDirectSpaceState* ret = NULL;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

void godot_icall_3_381(MethodBind* method, Object* ptr, RID* arg1, RID* arg2, real_t* arg3) {
	MARSHALLED_IN(Transform, arg3, arg3_in);
	const void* call_args[3] = { arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_382(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Transform, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_383(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	Transform ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

void godot_icall_2_384(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	MARSHALLED_IN(Transform, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_385(MethodBind* method, Object* ptr, RID* arg1) {
	Transform ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

int godot_icall_2_386(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	int ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_387(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3) {
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_388(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_4_389(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, RID* arg3, real_t* arg4) {
	RID ret;
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg4, arg4_in);
	const void* call_args[4] = { arg1, &arg2_in, arg3, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

MonoObject* godot_icall_1_390(MethodBind* method, Object* ptr, RID* arg1) {
	Vector3 ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

RID* godot_icall_4_391(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, RID* arg3, real_t* arg4) {
	RID ret;
	MARSHALLED_IN(Transform, arg2, arg2_in);
	MARSHALLED_IN(Transform, arg4, arg4_in);
	const void* call_args[4] = { arg1, &arg2_in, arg3, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_4_392(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3, real_t arg4) {
	const void* call_args[4] = { arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_3_393(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3) {
	real_t ret;
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_394(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3, bool arg4) {
	const void* call_args[4] = { arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_3_395(MethodBind* method, Object* ptr, RID* arg1, int arg2, int arg3) {
	bool ret;
	const void* call_args[3] = { arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_PhysicsServer_get_singleton() {
	return PhysicsServer::get_singleton();
}

void godot_icall_PhysicsShapeQueryParameters_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_PhysicsShapeQueryParameters_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "PhysicsShapeQueryParameters");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_PhysicsShapeQueryResult_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

MonoObject* godot_icall_0_396(MethodBind* method, Object* ptr) {
	Plane ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(Plane, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Plane), ret_out);
}

void godot_icall_PlaneShape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	IntArray arg2_in = GDMonoMarshal::mono_array_to_IntArray(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_2_398(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	Vector2Array ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
}

void godot_icall_PolygonPathFinder_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[4] = { arg1, &arg2_in, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_400(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_401(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, int arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_402(MethodBind* method, Object* ptr, Object* arg1, Object* arg2, int arg3) {
	const void* call_args[3] = { arg1, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_403(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_404(MethodBind* method, Object* ptr, int arg1) {
	Ref<ShortCut> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
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

Object* godot_icall_Quad_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Quad");
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

void godot_icall_RayShape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_RayShape_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RayShape");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_RayShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_RayShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RayShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_RectangleShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_RectangleShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RectangleShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_Reference_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Reference_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Reference");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ReferenceFrame_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ReferenceFrame");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_3_405(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3) {
	Object* ret = NULL;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

MonoString* godot_icall_5_406(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, bool arg3, int arg4, int arg5) {
	String ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_RegEx_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_RegEx_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RegEx");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoString* godot_icall_1_407(MethodBind* method, Object* ptr, MonoObject* arg1) {
	String ret;
	Variant arg1_in = GDMonoMarshal::mono_object_to_variant(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

void godot_icall_RegExMatch_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_RenderTargetTexture_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_1_408(MethodBind* method, Object* ptr, bool arg1) {
	Object* ret = NULL;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_Resource_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Resource_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Resource");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_ResourceImportMetadata_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ResourceImportMetadata_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ResourceImportMetadata");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_ResourceInteractiveLoader_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_2_409(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_ResourcePreloader_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ResourcePreloader");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_410(MethodBind* method, Object* ptr, int arg1, bool arg2, int arg3) {
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
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

void godot_icall_2_411(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_3_412(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2, Object* arg3) {
	bool ret;
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

MonoObject* godot_icall_0_413(MethodBind* method, Object* ptr) {
	Room* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_Room_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Room");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_RoomBounds_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_RoomBounds_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "RoomBounds");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_Sample_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Sample_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Sample");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_414(MethodBind* method, Object* ptr, MonoString* arg1) {
	Ref<Sample> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_SampleLibrary_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_SampleLibrary_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SampleLibrary");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_415(MethodBind* method, Object* ptr) {
	Ref<SampleLibrary> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

int godot_icall_2_416(MethodBind* method, Object* ptr, MonoString* arg1, bool arg2) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_5_417(MethodBind* method, Object* ptr, int arg1, int arg2, real_t arg3, real_t arg4, real_t arg5) {
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_SamplePlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SamplePlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SamplePlayer2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SamplePlayer2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

NodePath* godot_icall_2_418(MethodBind* method, Object* ptr, int arg1, bool arg2) {
	NodePath ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(NodePath(ret));
}

MonoObject* godot_icall_1_419(MethodBind* method, Object* ptr, int arg1) {
	Ref<PackedScene> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoArray* godot_icall_1_420(MethodBind* method, Object* ptr, int arg1) {
	StringArray ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::StringArray_to_mono_array(ret);
}

MonoArray* godot_icall_1_421(MethodBind* method, Object* ptr, int arg1) {
	Array ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

void godot_icall_SceneState_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_3_422(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, int arg3) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_423(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoString* arg3, MonoObject* arg4) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { &arg1, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_424(MethodBind* method, Object* ptr, real_t arg1) {
	Ref<SceneTreeTimer> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_3_425(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_426(MethodBind* method, Object* ptr, int arg1, MonoString* arg2, MonoString* arg3, MonoArray* arg4) {
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg4);
	int total_length = 3 + vararg_length;
	ERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, void());
	Vector<Variant*> call_args;
	ERR_FAIL_COND_V(call_args.resize(total_length) != OK, void());
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

int godot_icall_1_427(MethodBind* method, Object* ptr, Object* arg1) {
	int ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall_SceneTree_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SceneTree");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_SceneTreeTimer_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_Script_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ScrollContainer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ScrollContainer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_SegmentShape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_SegmentShape2D_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SegmentShape2D");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_5_428(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, MonoString* arg3, int arg4, int arg5) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_429(MethodBind* method, Object* ptr, MonoString* arg1) {
	Ref<Texture> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_Shader_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_4_430(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, MonoObject* arg4) {
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_431(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_432(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Vector3 ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

void godot_icall_3_433(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_434(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Color ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

void godot_icall_3_435(MethodBind* method, Object* ptr, int arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Transform, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_436(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Transform ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Transform, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Transform), ret_out);
}

void godot_icall_3_437(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t arg3) {
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_438(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	real_t ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_439(MethodBind* method, Object* ptr, int arg1, real_t arg2, int arg3) {
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_2_440(MethodBind* method, Object* ptr, int arg1, real_t arg2) {
	int ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_441(MethodBind* method, Object* ptr, int arg1, int arg2, MonoString* arg3) {
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_442(MethodBind* method, Object* ptr, int arg1, int arg2, Object* arg3) {
	const void* call_args[3] = { &arg1, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_443(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Ref<Texture> ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_2_444(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Ref<CubeMap> ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_4_445(MethodBind* method, Object* ptr, int arg1, int arg2, MonoArray* arg3, MonoArray* arg4) {
	ColorArray arg3_in = GDMonoMarshal::mono_array_to_ColorArray(arg3);
	RealArray arg4_in = GDMonoMarshal::mono_array_to_RealArray(arg4);
	const void* call_args[4] = { &arg1, &arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_2_446(MethodBind* method, Object* ptr, int arg1, int arg2) {
	ColorArray ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::ColorArray_to_mono_array(ret);
}

MonoArray* godot_icall_2_447(MethodBind* method, Object* ptr, int arg1, int arg2) {
	RealArray ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::RealArray_to_mono_array(ret);
}

void godot_icall_3_448(MethodBind* method, Object* ptr, int arg1, int arg2, MonoArray* arg3) {
	Vector2Array arg3_in = GDMonoMarshal::mono_array_to_Vector2Array(arg3);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_2_449(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Vector2Array ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
}

Error godot_icall_5_450(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4, int arg5) {
	Error ret;
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_5_451(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, int arg4, int arg5) {
	bool ret;
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_2_452(MethodBind* method, Object* ptr, int arg1, int arg2) {
	Variant ret;
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

void godot_icall_ShaderGraph_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_1_453(MethodBind* method, Object* ptr, MonoString* arg1) {
	Variant ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

void godot_icall_ShaderMaterial_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_ShaderMaterial_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ShaderMaterial");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_Shape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
bool godot_icall_3_454(MethodBind* method, Object* ptr, real_t* arg1, Object* arg2, real_t* arg3) {
	bool ret;
	MARSHALLED_IN(Matrix32, arg1, arg1_in);
	MARSHALLED_IN(Matrix32, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_5_455(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, Object* arg3, real_t* arg4, real_t* arg5) {
	bool ret;
	MARSHALLED_IN(Matrix32, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Matrix32, arg4, arg4_in);
	MARSHALLED_IN(Vector2, arg5, arg5_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, arg3, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoObject* godot_icall_3_456(MethodBind* method, Object* ptr, real_t* arg1, Object* arg2, real_t* arg3) {
	Variant ret;
	MARSHALLED_IN(Matrix32, arg1, arg1_in);
	MARSHALLED_IN(Matrix32, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

MonoObject* godot_icall_5_457(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, Object* arg3, real_t* arg4, real_t* arg5) {
	Variant ret;
	MARSHALLED_IN(Matrix32, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Matrix32, arg4, arg4_in);
	MARSHALLED_IN(Vector2, arg5, arg5_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, arg3, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::variant_to_mono_object(ret);
}

void godot_icall_Shape2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_0_458(MethodBind* method, Object* ptr) {
	InputEvent ret;
	method->ptrcall(ptr, NULL, &ret);
	MARSHALLED_OUT(InputEvent, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(InputEvent), ret_out);
}

bool godot_icall_1_459(MethodBind* method, Object* ptr, char* arg1) {
	bool ret;
	MARSHALLED_IN(InputEvent, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_ShortCut_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

Object* godot_icall_SoundRoomParams_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SoundRoomParams");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_460(MethodBind* method, Object* ptr) {
	Ref<World> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_0_461(MethodBind* method, Object* ptr) {
	Ref<SpatialGizmo> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_2_462(MethodBind* method, Object* ptr, real_t* arg1, real_t arg2) {
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_463(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3) {
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

void godot_icall_SpatialGizmo_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_SpatialSamplePlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SpatialSamplePlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_SpatialSound2DServer_get_singleton() {
	return SpatialSound2DServer::get_singleton();
}

Object* godot_icall_SpatialSoundServer_get_singleton() {
	return SpatialSoundServer::get_singleton();
}

MonoObject* godot_icall_0_464(MethodBind* method, Object* ptr) {
	Ref<AudioStream> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_SpatialStreamPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SpatialStreamPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_SphereShape_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_3_465(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, int arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_466(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	Object* ret = NULL;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret);
}

void godot_icall_3_467(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, Object* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, &arg2, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_SpriteFrames_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

MonoArray* godot_icall_1_468(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Array ret;
	ByteArray arg1_in = GDMonoMarshal::mono_array_to_ByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

void godot_icall_StreamPeer_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_0_469(MethodBind* method, Object* ptr) {
	Ref<StreamPeerBuffer> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_StreamPeerBuffer_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_StreamPeerBuffer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamPeerBuffer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_1_470(MethodBind* method, Object* ptr, Object* arg1) {
	Error ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Error godot_icall_3_471(MethodBind* method, Object* ptr, Object* arg1, bool arg2, MonoString* arg3) {
	Error ret;
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_StreamPeerSSL_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_StreamPeerSSL_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamPeerSSL");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_StreamPeerTCP_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_StreamPeerTCP_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamPeerTCP");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_StreamPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StreamPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

bool godot_icall_2_472(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2) {
	bool ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_2_473(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_StyleBox_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_StyleBoxEmpty_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_StyleBoxEmpty_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StyleBoxEmpty");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_StyleBoxFlat_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_StyleBoxFlat_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StyleBoxFlat");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_StyleBoxImageMask_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_StyleBoxImageMask_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StyleBoxImageMask");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_StyleBoxTexture_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_StyleBoxTexture_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "StyleBoxTexture");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_6_474(MethodBind* method, Object* ptr, MonoArray* arg1, MonoArray* arg2, MonoArray* arg3, MonoArray* arg4, MonoArray* arg5, MonoArray* arg6) {
	Vector3Array arg1_in = GDMonoMarshal::mono_array_to_Vector3Array(arg1);
	Vector2Array arg2_in = GDMonoMarshal::mono_array_to_Vector2Array(arg2);
	ColorArray arg3_in = GDMonoMarshal::mono_array_to_ColorArray(arg3);
	Vector2Array arg4_in = GDMonoMarshal::mono_array_to_Vector2Array(arg4);
	Vector3Array arg5_in = GDMonoMarshal::mono_array_to_Vector3Array(arg5);
	Array arg6_in = GDMonoMarshal::mono_array_to_Array(arg6);
	const void* call_args[6] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in, &arg5_in, &arg6_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_475(MethodBind* method, Object* ptr, Object* arg1) {
	Ref<Mesh> ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_SurfaceTool_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_SurfaceTool_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "SurfaceTool");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_3_476(MethodBind* method, Object* ptr, int arg1, int arg2, MonoArray* arg3) {
	int ret;
	StringArray arg3_in = GDMonoMarshal::mono_array_to_StringArray(arg3);
	const void* call_args[3] = { &arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_TCP_Server_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_TCP_Server_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TCP_Server");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_1_477(MethodBind* method, Object* ptr, int arg1) {
	Control* ret = NULL;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_0_478(MethodBind* method, Object* ptr) {
	Popup* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
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

Object* godot_icall_TestCube_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TestCube");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoArray* godot_icall_4_479(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	IntArray ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::IntArray_to_mono_array(ret);
}

void godot_icall_4_480(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, real_t* arg3, bool arg4) {
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

void godot_icall_4_481(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, bool arg4) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[4] = { arg1, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_482(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, bool arg3, real_t* arg4, bool arg5) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_483(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, real_t* arg4, bool arg5) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[5] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_Texture_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
MonoObject* godot_icall_0_484(MethodBind* method, Object* ptr) {
	Ref<BitMap> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_TextureButton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TextureButton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_TextureFrame_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TextureFrame");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_TextureProgress_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TextureProgress");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_485(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, Object* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_486(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, real_t* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_Theme_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Theme_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Theme");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_487(MethodBind* method, Object* ptr) {
	Ref<TileSet> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_6_488(MethodBind* method, Object* ptr, int arg1, int arg2, int arg3, bool arg4, bool arg5, bool arg6) {
	const void* call_args[6] = { &arg1, &arg2, &arg3, &arg4, &arg5, &arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_489(MethodBind* method, Object* ptr, real_t* arg1, int arg2, bool arg3, bool arg4, bool arg5) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_490(MethodBind* method, Object* ptr, real_t* arg1, bool arg2) {
	Vector2 ret;
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

MonoObject* godot_icall_1_491(MethodBind* method, Object* ptr, int arg1) {
	Ref<CanvasItemMaterial> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_2_492(MethodBind* method, Object* ptr, int arg1, MonoArray* arg2) {
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	const void* call_args[2] = { &arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_493(MethodBind* method, Object* ptr, int arg1) {
	Ref<NavigationPolygon> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_494(MethodBind* method, Object* ptr, int arg1) {
	Ref<OccluderPolygon2D> ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_TileSet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_Translation_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Translation_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Translation");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_TranslationServer_get_singleton() {
	return TranslationServer::get_singleton();
}

MonoObject* godot_icall_1_495(MethodBind* method, Object* ptr, Object* arg1) {
	TreeItem* ret = NULL;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_0_496(MethodBind* method, Object* ptr) {
	TreeItem* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

MonoObject* godot_icall_2_497(MethodBind* method, Object* ptr, Object* arg1, int arg2) {
	Rect2 ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Rect2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect2), ret_out);
}

MonoObject* godot_icall_1_498(MethodBind* method, Object* ptr, real_t* arg1) {
	TreeItem* ret = NULL;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_Tree_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Tree");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_5_499(MethodBind* method, Object* ptr, int arg1, real_t arg2, real_t arg3, real_t arg4, bool arg5) {
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_500(MethodBind* method, Object* ptr, int arg1) {
	Dictionary ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

void godot_icall_3_501(MethodBind* method, Object* ptr, int arg1, Object* arg2, MonoString* arg3) {
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1, arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_502(MethodBind* method, Object* ptr, int arg1, real_t* arg2, bool arg3) {
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_503(MethodBind* method, Object* ptr, int arg1, Object* arg2, int arg3, bool arg4) {
	const void* call_args[4] = { &arg1, arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_TriangleMesh_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_TriangleMesh_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "TriangleMesh");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

bool godot_icall_2_504(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2) {
	bool ret;
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_8_505(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3, MonoObject* arg4, real_t arg5, int arg6, int arg7, real_t arg8) {
	bool ret;
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	Variant arg4_in = GDMonoMarshal::mono_object_to_variant(arg4);
	const void* call_args[8] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5, &arg6, &arg7, &arg8 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_8_506(MethodBind* method, Object* ptr, Object* arg1, real_t arg2, MonoString* arg3, MonoObject* arg4, MonoObject* arg5, MonoObject* arg6, MonoObject* arg7, MonoObject* arg8) {
	bool ret;
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

bool godot_icall_9_507(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3, Object* arg4, MonoString* arg5, real_t arg6, int arg7, int arg8, real_t arg9) {
	bool ret;
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	String arg5_in = GDMonoMarshal::mono_string_to_godot(arg5);
	const void* call_args[9] = { arg1, &arg2_in, &arg3_in, arg4, &arg5_in, &arg6, &arg7, &arg8, &arg9 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

bool godot_icall_9_508(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, Object* arg3, MonoString* arg4, MonoObject* arg5, real_t arg6, int arg7, int arg8, real_t arg9) {
	bool ret;
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

void godot_icall_3_509(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoArray* arg3) {
	Vector<Variant> varargs;
	int vararg_length = mono_array_length(arg3);
	int total_length = 2 + vararg_length;
	ERR_FAIL_COND_V(varargs.resize(vararg_length) != OK, void());
	Vector<Variant*> call_args;
	ERR_FAIL_COND_V(call_args.resize(total_length) != OK, void());
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

void godot_icall_3_510(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3) {
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

Object* godot_icall_VButtonArray_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VButtonArray");
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

MonoObject* godot_icall_0_511(MethodBind* method, Object* ptr) {
	Ref<VideoStream> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall_VideoPlayer_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VideoPlayer");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VideoStream_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_VideoStreamTheora_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VideoStreamTheora_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VideoStreamTheora");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VideoStreamWebm_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VideoStreamWebm_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VideoStreamWebm");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_512(MethodBind* method, Object* ptr, bool arg1, real_t* arg2, real_t* arg3) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_0_513(MethodBind* method, Object* ptr) {
	Ref<RenderTargetTexture> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_0_514(MethodBind* method, Object* ptr) {
	Camera* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_Viewport_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "Viewport");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Object* godot_icall_ViewportSprite_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "ViewportSprite");
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

void godot_icall_4_515(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, Object* arg3, real_t* arg4) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2, arg3, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_516(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, real_t* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_517(MethodBind* method, Object* ptr, MonoString* arg1, int arg2) {
	Vector2 ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector2), ret_out);
}

void godot_icall_4_518(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_4_519(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4) {
	bool ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_5_520(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4, int arg5) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

bool godot_icall_5_521(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, int arg3, int arg4, int arg5) {
	bool ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[5] = { &arg1_in, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_3_522(MethodBind* method, Object* ptr, MonoString* arg1, MonoObject* arg2, bool arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Variant arg2_in = GDMonoMarshal::mono_object_to_variant(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_523(MethodBind* method, Object* ptr, MonoString* arg1, MonoObject* arg2) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	Dictionary arg2_in = GDMonoMarshal::mono_object_to_Dictionary(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_524(MethodBind* method, Object* ptr, MonoString* arg1) {
	Dictionary ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

void godot_icall_3_525(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3) {
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_VisualScript_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScript_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScript");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptBasicTypeConstant_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptBasicTypeConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptBasicTypeConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptBuiltinFunc_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptBuiltinFunc_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptBuiltinFunc");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptClassConstant_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptClassConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptClassConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptComment_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptComment_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptComment");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptCondition_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptCondition_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptCondition");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptConstant_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptConstructor_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptConstructor_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptConstructor");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptCustomNode_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptCustomNode_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptCustomNode");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptDeconstruct_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptDeconstruct_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptDeconstruct");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptEmitSignal_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptEmitSignal_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptEmitSignal");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptEngineSingleton_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptEngineSingleton_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptEngineSingleton");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptExpression_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptExpression_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptExpression");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptFunction_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptFunction_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptFunction");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptFunctionCall_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptFunctionCall_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptFunctionCall");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_3_526(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoArray* arg3) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_527(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Array ret;
	Array arg1_in = GDMonoMarshal::mono_array_to_Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

void godot_icall_VisualScriptFunctionState_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_VisualScriptGlobalConstant_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptGlobalConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptGlobalConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptIndexGet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptIndexGet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptIndexGet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptIndexSet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptIndexSet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptIndexSet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptInputAction_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptInputAction_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptInputAction");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptInputFilter_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptInputFilter_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptInputFilter");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptIterator_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptIterator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptIterator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptLocalVar_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptLocalVar_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptLocalVar");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptLocalVarSet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptLocalVarSet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptLocalVarSet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptMathConstant_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptMathConstant_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptMathConstant");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_528(MethodBind* method, Object* ptr) {
	Ref<VisualScript> ret;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

void godot_icall_VisualScriptNode_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
void godot_icall_VisualScriptOperator_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptOperator_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptOperator");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptPreload_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptPreload_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptPreload");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptPropertyGet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptPropertyGet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptPropertyGet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptPropertySet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptPropertySet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptPropertySet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptResourcePath_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptResourcePath_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptResourcePath");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptReturn_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptReturn_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptReturn");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptSceneNode_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptSceneNode_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSceneNode");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptSceneTree_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptSceneTree_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSceneTree");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptSelf_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptSelf_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSelf");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptSequence_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptSequence_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSequence");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptSubCall_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptSubCall_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSubCall");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptSwitch_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptSwitch_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptSwitch");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptTypeCast_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptTypeCast_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptTypeCast");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptVariableGet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptVariableGet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptVariableGet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptVariableSet_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptVariableSet_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptVariableSet");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptWhile_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptWhile_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptWhile");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptYield_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptYield_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptYield");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_VisualScriptYieldSignal_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_VisualScriptYieldSignal_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "VisualScriptYieldSignal");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

RID* godot_icall_2_529(MethodBind* method, Object* ptr, Image* arg1, int arg2) {
	RID ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_3_530(MethodBind* method, Object* ptr, RID* arg1, MonoString* arg2, MonoObject* arg3) {
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_5_531(MethodBind* method, Object* ptr, RID* arg1, int arg2, MonoArray* arg3, MonoArray* arg4, bool arg5) {
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	Array arg4_in = GDMonoMarshal::mono_array_to_Array(arg4);
	const void* call_args[5] = { arg1, &arg2, &arg3_in, &arg4_in, &arg5 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_532(MethodBind* method, Object* ptr, RID* arg1, int arg2, RID* arg3, bool arg4) {
	const void* call_args[4] = { arg1, &arg2, arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_533(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	MARSHALLED_IN(AABB, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_534(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_535(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	AABB ret;
	MARSHALLED_IN(AABB, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(AABB, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(AABB), ret_out);
}

MonoObject* godot_icall_2_536(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	Color ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

MonoObject* godot_icall_1_537(MethodBind* method, Object* ptr, RID* arg1) {
	AABB ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(AABB, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(AABB), ret_out);
}

void godot_icall_3_538(MethodBind* method, Object* ptr, RID* arg1, int arg2, real_t* arg3) {
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_2_539(MethodBind* method, Object* ptr, RID* arg1, int arg2) {
	Vector3 ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

void godot_icall_3_540(MethodBind* method, Object* ptr, RID* arg1, RID* arg2, bool arg3) {
	const void* call_args[3] = { arg1, arg2, &arg3 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_541(MethodBind* method, Object* ptr, RID* arg1, MonoObject* arg2) {
	Dictionary arg2_in = GDMonoMarshal::mono_object_to_Dictionary(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_542(MethodBind* method, Object* ptr, RID* arg1) {
	Dictionary ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

void godot_icall_2_543(MethodBind* method, Object* ptr, RID* arg1, MonoArray* arg2) {
	Vector2Array arg2_in = GDMonoMarshal::mono_array_to_Vector2Array(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_1_544(MethodBind* method, Object* ptr, RID* arg1) {
	Vector2Array ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
}

void godot_icall_2_545(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2) {
	MARSHALLED_IN(Color, arg2, arg2_in);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoObject* godot_icall_1_546(MethodBind* method, Object* ptr, RID* arg1) {
	Color ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Color, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Color), ret_out);
}

MonoObject* godot_icall_1_547(MethodBind* method, Object* ptr, RID* arg1) {
	Rect2 ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Rect2, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Rect2), ret_out);
}

MonoArray* godot_icall_2_548(MethodBind* method, Object* ptr, real_t* arg1, RID* arg2) {
	Array ret;
	MARSHALLED_IN(AABB, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_3_549(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, RID* arg3) {
	Array ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_2_550(MethodBind* method, Object* ptr, MonoArray* arg1, RID* arg2) {
	Array ret;
	Array arg1_in = GDMonoMarshal::mono_array_to_Array(arg1);
	const void* call_args[2] = { &arg1_in, arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

void godot_icall_3_551(MethodBind* method, Object* ptr, RID* arg1, bool arg2, real_t* arg3) {
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

real_t godot_icall_2_552(MethodBind* method, Object* ptr, RID* arg1, real_t arg2) {
	real_t ret;
	const void* call_args[2] = { arg1, &arg2 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_6_553(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, real_t* arg4, real_t arg5, bool arg6) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[6] = { arg1, &arg2_in, &arg3_in, &arg4_in, &arg5, &arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_3_554(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg3, arg3_in);
	const void* call_args[3] = { arg1, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_6_555(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, RID* arg3, bool arg4, real_t* arg5, bool arg6) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg5, arg5_in);
	const void* call_args[6] = { arg1, &arg2_in, arg3, &arg4, &arg5_in, &arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_6_556(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, RID* arg3, real_t* arg4, real_t* arg5, bool arg6) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Rect2, arg4, arg4_in);
	MARSHALLED_IN(Color, arg5, arg5_in);
	const void* call_args[6] = { arg1, &arg2_in, arg3, &arg4_in, &arg5_in, &arg6 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_6_557(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t* arg3, RID* arg4, MonoArray* arg5, real_t* arg6) {
	MARSHALLED_IN(Rect2, arg2, arg2_in);
	MARSHALLED_IN(Rect2, arg3, arg3_in);
	RealArray arg5_in = GDMonoMarshal::mono_array_to_RealArray(arg5);
	MARSHALLED_IN(Color, arg6, arg6_in);
	const void* call_args[6] = { arg1, &arg2_in, &arg3_in, arg4, &arg5_in, &arg6_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_558(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, real_t arg3, real_t* arg4) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Color, arg4, arg4_in);
	const void* call_args[4] = { arg1, &arg2_in, &arg3, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_559(MethodBind* method, Object* ptr, real_t arg1, int arg2) {
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_560(MethodBind* method, Object* ptr, RID* arg1, real_t* arg2, int arg3, real_t* arg4) {
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Rect2, arg4, arg4_in);
	const void* call_args[4] = { arg1, &arg2_in, &arg3, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_561(MethodBind* method, Object* ptr, bool arg1, int arg2) {
	const void* call_args[2] = { &arg1, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_2_562(MethodBind* method, Object* ptr, real_t* arg1, int arg2) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[2] = { &arg1_in, &arg2 };
	method->ptrcall(ptr, call_args, NULL);
}

void godot_icall_4_563(MethodBind* method, Object* ptr, RID* arg1, RID* arg2, RID* arg3, RID* arg4) {
	const void* call_args[4] = { arg1, arg2, arg3, arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

RID* godot_icall_3_564(MethodBind* method, Object* ptr, int arg1, int arg2, real_t arg3) {
	RID ret;
	const void* call_args[3] = { &arg1, &arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return memnew(RID(ret));
}

void godot_icall_2_565(MethodBind* method, Object* ptr, RID* arg1, MonoArray* arg2) {
	Array arg2_in = GDMonoMarshal::mono_array_to_Array(arg2);
	const void* call_args[2] = { arg1, &arg2_in };
	method->ptrcall(ptr, call_args, NULL);
}

Object* godot_icall_VisualServer_get_singleton() {
	return VisualServer::get_singleton();
}

void godot_icall_WeakRef_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_WeakRef_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "WeakRef");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoObject* godot_icall_0_566(MethodBind* method, Object* ptr) {
	TextureButton* ret = NULL;
	method->ptrcall(ptr, NULL, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret->cast_to<Object>());
}

Object* godot_icall_WindowDialog_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "WindowDialog");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_World_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_World_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "World");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_World2D_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

void godot_icall_XMLParser_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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

Error godot_icall_2_567(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Error ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_Directory_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Directory_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_Directory");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

int godot_icall_3_568(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoArray* arg3) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	ByteArray arg3_in = GDMonoMarshal::mono_array_to_ByteArray(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_3_569(MethodBind* method, Object* ptr, MonoString* arg1, int arg2, MonoString* arg3) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	const void* call_args[3] = { &arg1_in, &arg2, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_570(MethodBind* method, Object* ptr, int arg1) {
	ByteArray ret;
	const void* call_args[1] = { &arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::ByteArray_to_mono_array(ret);
}

void godot_icall_File_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_File_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_File");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

MonoArray* godot_icall_1_571(MethodBind* method, Object* ptr, real_t* arg1) {
	Array ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_4_572(MethodBind* method, Object* ptr, real_t arg1, real_t arg2, int arg3, int arg4) {
	Array ret;
	const void* call_args[4] = { &arg1, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

MonoArray* godot_icall_5_573(MethodBind* method, Object* ptr, real_t arg1, real_t arg2, int arg3, int arg4, int arg5) {
	Array ret;
	const void* call_args[5] = { &arg1, &arg2, &arg3, &arg4, &arg5 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Array_to_mono_array(ret);
}

real_t godot_icall_4_574(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t arg4) {
	real_t ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_4_575(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_4_576(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	Vector2Array ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector2Array_to_mono_array(ret);
}

MonoArray* godot_icall_4_577(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	Vector3Array ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	MARSHALLED_IN(Vector3, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

MonoObject* godot_icall_3_578(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3) {
	Vector3 ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	MARSHALLED_OUT(Vector3, ret, ret_out)
	return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(Vector3), ret_out);
}

void godot_icall_5_579(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4, real_t* arg5) {
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	MARSHALLED_IN(Vector3, arg4, arg4_in);
	MARSHALLED_IN(Vector3, arg5, arg5_in);
	const void* call_args[5] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in, &arg5_in };
	method->ptrcall(ptr, call_args, NULL);
}

MonoArray* godot_icall_4_580(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t arg4) {
	Vector3Array ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	MARSHALLED_IN(Vector3, arg3, arg3_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

MonoArray* godot_icall_4_581(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t arg3, real_t arg4) {
	Vector3Array ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

MonoArray* godot_icall_3_582(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, MonoArray* arg3) {
	Vector3Array ret;
	MARSHALLED_IN(Vector3, arg1, arg1_in);
	MARSHALLED_IN(Vector3, arg2, arg2_in);
	Array arg3_in = GDMonoMarshal::mono_array_to_Array(arg3);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Vector3Array_to_mono_array(ret);
}

bool godot_icall_4_583(MethodBind* method, Object* ptr, real_t* arg1, real_t* arg2, real_t* arg3, real_t* arg4) {
	bool ret;
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	MARSHALLED_IN(Vector2, arg2, arg2_in);
	MARSHALLED_IN(Vector2, arg3, arg3_in);
	MARSHALLED_IN(Vector2, arg4, arg4_in);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_584(MethodBind* method, Object* ptr, MonoArray* arg1) {
	IntArray ret;
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::IntArray_to_mono_array(ret);
}

MonoObject* godot_icall_1_585(MethodBind* method, Object* ptr, MonoArray* arg1) {
	Dictionary ret;
	Vector2Array arg1_in = GDMonoMarshal::mono_array_to_Vector2Array(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::Dictionary_to_mono_object(ret);
}

Object* godot_icall__Geometry_get_singleton() {
	return _Geometry::get_singleton();
}

MonoString* godot_icall_1_586(MethodBind* method, Object* ptr, MonoArray* arg1) {
	String ret;
	ByteArray arg1_in = GDMonoMarshal::mono_array_to_ByteArray(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::mono_string_from_godot(ret);
}

MonoArray* godot_icall_1_587(MethodBind* method, Object* ptr, MonoString* arg1) {
	ByteArray ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::ByteArray_to_mono_array(ret);
}

Object* godot_icall__Marshalls_get_singleton() {
	return _Marshalls::get_singleton();
}

void godot_icall_Mutex_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Mutex_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_Mutex");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

void godot_icall_4_588(MethodBind* method, Object* ptr, real_t* arg1, bool arg2, bool arg3, int arg4) {
	MARSHALLED_IN(Vector2, arg1, arg1_in);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3, &arg4 };
	method->ptrcall(ptr, call_args, NULL);
}

int godot_icall_4_589(MethodBind* method, Object* ptr, MonoString* arg1, MonoArray* arg2, bool arg3, MonoArray* arg4) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	StringArray arg2_in = GDMonoMarshal::mono_array_to_StringArray(arg2);
	Array arg4_in = GDMonoMarshal::mono_array_to_Array(arg4);
	const void* call_args[4] = { &arg1_in, &arg2_in, &arg3, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_1_590(MethodBind* method, Object* ptr, MonoObject* arg1) {
	int ret;
	Dictionary arg1_in = GDMonoMarshal::mono_object_to_Dictionary(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

int godot_icall_4_591(MethodBind* method, Object* ptr, MonoString* arg1, real_t arg2, MonoString* arg3, MonoString* arg4) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg3_in = GDMonoMarshal::mono_string_to_godot(arg3);
	String arg4_in = GDMonoMarshal::mono_string_to_godot(arg4);
	const void* call_args[4] = { &arg1_in, &arg2, &arg3_in, &arg4_in };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

Object* godot_icall__OS_get_singleton() {
	return _OS::get_singleton();
}

MonoObject* godot_icall_2_592(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2) {
	Ref<ResourceInteractiveLoader> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[2] = { &arg1_in, &arg2_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_3_593(MethodBind* method, Object* ptr, MonoString* arg1, MonoString* arg2, bool arg3) {
	Ref<Resource> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	const void* call_args[3] = { &arg1_in, &arg2_in, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

MonoObject* godot_icall_1_594(MethodBind* method, Object* ptr, MonoString* arg1) {
	Ref<ResourceImportMetadata> ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[1] = { &arg1_in };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoUtils::unmanaged_get_managed(ret.ptr()->cast_to<Object>());
}

Object* godot_icall__ResourceLoader_get_singleton() {
	return _ResourceLoader::get_singleton();
}

int godot_icall_3_595(MethodBind* method, Object* ptr, MonoString* arg1, Object* arg2, int arg3) {
	int ret;
	String arg1_in = GDMonoMarshal::mono_string_to_godot(arg1);
	const void* call_args[3] = { &arg1_in, arg2, &arg3 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

MonoArray* godot_icall_1_596(MethodBind* method, Object* ptr, Object* arg1) {
	StringArray ret;
	const void* call_args[1] = { arg1 };
	method->ptrcall(ptr, call_args, &ret);
	return GDMonoMarshal::StringArray_to_mono_array(ret);
}

Object* godot_icall__ResourceSaver_get_singleton() {
	return _ResourceSaver::get_singleton();
}

void godot_icall_Semaphore_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
}
Object* godot_icall_Semaphore_Ctor(MonoObject* obj) {
	GODOTSHARP_INSTANCE_OBJECT(instance, "_Semaphore");
	GDMonoUtils::tie_managed_to_unmanaged(obj, instance);
	return instance;
}

Error godot_icall_4_597(MethodBind* method, Object* ptr, Object* arg1, MonoString* arg2, MonoObject* arg3, int arg4) {
	Error ret;
	String arg2_in = GDMonoMarshal::mono_string_to_godot(arg2);
	Variant arg3_in = GDMonoMarshal::mono_object_to_variant(arg3);
	const void* call_args[4] = { arg1, &arg2_in, &arg3_in, &arg4 };
	method->ptrcall(ptr, call_args, &ret);
	return ret;
}

void godot_icall_Thread_Dtor(Object* ptr) {
	GODOTSHARP_DISPOSE_REFERENCE(ptr);
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
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Image_Ctor", (void*)godot_icall_Image_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Image_Ctor_2", (void*)godot_icall_Image_Ctor_2);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Image_Dtor", (void*)godot_icall_Image_Dtor);
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
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AStar_Dtor", (void*)godot_icall_AStar_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AStar_Ctor", (void*)godot_icall_AStar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AcceptDialog_Ctor", (void*)godot_icall_AcceptDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimatedSprite_Ctor", (void*)godot_icall_AnimatedSprite_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimatedSprite3D_Ctor", (void*)godot_icall_AnimatedSprite3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Animation_Dtor", (void*)godot_icall_Animation_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Animation_Ctor", (void*)godot_icall_Animation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimationPlayer_Ctor", (void*)godot_icall_AnimationPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AnimationTreePlayer_Ctor", (void*)godot_icall_AnimationTreePlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Area_Ctor", (void*)godot_icall_Area_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Area2D_Ctor", (void*)godot_icall_Area2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AtlasTexture_Dtor", (void*)godot_icall_AtlasTexture_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AtlasTexture_Ctor", (void*)godot_icall_AtlasTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioServer_get_singleton", (void*)godot_icall_AudioServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStream_Dtor", (void*)godot_icall_AudioStream_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamMPC_Dtor", (void*)godot_icall_AudioStreamMPC_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamMPC_Ctor", (void*)godot_icall_AudioStreamMPC_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamOGGVorbis_Dtor", (void*)godot_icall_AudioStreamOGGVorbis_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamOGGVorbis_Ctor", (void*)godot_icall_AudioStreamOGGVorbis_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamOpus_Dtor", (void*)godot_icall_AudioStreamOpus_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamOpus_Ctor", (void*)godot_icall_AudioStreamOpus_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_AudioStreamPlayback_Dtor", (void*)godot_icall_AudioStreamPlayback_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BackBufferCopy_Ctor", (void*)godot_icall_BackBufferCopy_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BakedLight_Dtor", (void*)godot_icall_BakedLight_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BakedLight_Ctor", (void*)godot_icall_BakedLight_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BakedLightInstance_Ctor", (void*)godot_icall_BakedLightInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BakedLightSampler_Ctor", (void*)godot_icall_BakedLightSampler_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BitMap_Dtor", (void*)godot_icall_BitMap_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BitMap_Ctor", (void*)godot_icall_BitMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BitmapFont_Dtor", (void*)godot_icall_BitmapFont_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BitmapFont_Ctor", (void*)godot_icall_BitmapFont_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BoneAttachment_Ctor", (void*)godot_icall_BoneAttachment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BoxShape_Dtor", (void*)godot_icall_BoxShape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_BoxShape_Ctor", (void*)godot_icall_BoxShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Button_Ctor", (void*)godot_icall_Button_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ButtonGroup_Ctor", (void*)godot_icall_ButtonGroup_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CSharpScript_Dtor", (void*)godot_icall_CSharpScript_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CSharpScript_Ctor", (void*)godot_icall_CSharpScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Camera_Ctor", (void*)godot_icall_Camera_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Camera2D_Ctor", (void*)godot_icall_Camera2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasItemMaterial_Dtor", (void*)godot_icall_CanvasItemMaterial_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasItemMaterial_Ctor", (void*)godot_icall_CanvasItemMaterial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasItemShader_Dtor", (void*)godot_icall_CanvasItemShader_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasItemShader_Ctor", (void*)godot_icall_CanvasItemShader_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasItemShaderGraph_Dtor", (void*)godot_icall_CanvasItemShaderGraph_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasItemShaderGraph_Ctor", (void*)godot_icall_CanvasItemShaderGraph_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasLayer_Ctor", (void*)godot_icall_CanvasLayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CanvasModulate_Ctor", (void*)godot_icall_CanvasModulate_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CapsuleShape_Dtor", (void*)godot_icall_CapsuleShape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CapsuleShape_Ctor", (void*)godot_icall_CapsuleShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CapsuleShape2D_Dtor", (void*)godot_icall_CapsuleShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CapsuleShape2D_Ctor", (void*)godot_icall_CapsuleShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CenterContainer_Ctor", (void*)godot_icall_CenterContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CheckBox_Ctor", (void*)godot_icall_CheckBox_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CheckButton_Ctor", (void*)godot_icall_CheckButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CircleShape2D_Dtor", (void*)godot_icall_CircleShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CircleShape2D_Ctor", (void*)godot_icall_CircleShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionPolygon_Ctor", (void*)godot_icall_CollisionPolygon_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionPolygon2D_Ctor", (void*)godot_icall_CollisionPolygon2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionShape_Ctor", (void*)godot_icall_CollisionShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CollisionShape2D_Ctor", (void*)godot_icall_CollisionShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorFrame_Ctor", (void*)godot_icall_ColorFrame_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorPicker_Ctor", (void*)godot_icall_ColorPicker_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorPickerButton_Ctor", (void*)godot_icall_ColorPickerButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorRamp_Dtor", (void*)godot_icall_ColorRamp_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ColorRamp_Ctor", (void*)godot_icall_ColorRamp_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConcavePolygonShape_Dtor", (void*)godot_icall_ConcavePolygonShape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConcavePolygonShape_Ctor", (void*)godot_icall_ConcavePolygonShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConcavePolygonShape2D_Dtor", (void*)godot_icall_ConcavePolygonShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConcavePolygonShape2D_Ctor", (void*)godot_icall_ConcavePolygonShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConeTwistJoint_Ctor", (void*)godot_icall_ConeTwistJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConfigFile_Dtor", (void*)godot_icall_ConfigFile_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConfigFile_Ctor", (void*)godot_icall_ConfigFile_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConfirmationDialog_Ctor", (void*)godot_icall_ConfirmationDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Container_Ctor", (void*)godot_icall_Container_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Control_Ctor", (void*)godot_icall_Control_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConvexPolygonShape_Dtor", (void*)godot_icall_ConvexPolygonShape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConvexPolygonShape_Ctor", (void*)godot_icall_ConvexPolygonShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConvexPolygonShape2D_Dtor", (void*)godot_icall_ConvexPolygonShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ConvexPolygonShape2D_Ctor", (void*)godot_icall_ConvexPolygonShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CubeMap_Dtor", (void*)godot_icall_CubeMap_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_CubeMap_Ctor", (void*)godot_icall_CubeMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Curve2D_Dtor", (void*)godot_icall_Curve2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Curve2D_Ctor", (void*)godot_icall_Curve2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Curve3D_Dtor", (void*)godot_icall_Curve3D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Curve3D_Ctor", (void*)godot_icall_Curve3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DampedSpringJoint2D_Ctor", (void*)godot_icall_DampedSpringJoint2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DirectionalLight_Ctor", (void*)godot_icall_DirectionalLight_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DynamicFont_Dtor", (void*)godot_icall_DynamicFont_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DynamicFont_Ctor", (void*)godot_icall_DynamicFont_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DynamicFontData_Dtor", (void*)godot_icall_DynamicFontData_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_DynamicFontData_Ctor", (void*)godot_icall_DynamicFontData_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorExportPlugin_Dtor", (void*)godot_icall_EditorExportPlugin_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorExportPlugin_Ctor", (void*)godot_icall_EditorExportPlugin_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorFileDialog_Ctor", (void*)godot_icall_EditorFileDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorFileSystem_Ctor", (void*)godot_icall_EditorFileSystem_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorFileSystemDirectory_Ctor", (void*)godot_icall_EditorFileSystemDirectory_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorImportPlugin_Dtor", (void*)godot_icall_EditorImportPlugin_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorImportPlugin_Ctor", (void*)godot_icall_EditorImportPlugin_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorPlugin_Ctor", (void*)godot_icall_EditorPlugin_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorResourcePreview_Ctor", (void*)godot_icall_EditorResourcePreview_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorResourcePreviewGenerator_Dtor", (void*)godot_icall_EditorResourcePreviewGenerator_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorResourcePreviewGenerator_Ctor", (void*)godot_icall_EditorResourcePreviewGenerator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorScenePostImport_Dtor", (void*)godot_icall_EditorScenePostImport_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorScenePostImport_Ctor", (void*)godot_icall_EditorScenePostImport_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorScript_Dtor", (void*)godot_icall_EditorScript_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorScript_Ctor", (void*)godot_icall_EditorScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSelection_Ctor", (void*)godot_icall_EditorSelection_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSettings_Dtor", (void*)godot_icall_EditorSettings_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSettings_Ctor", (void*)godot_icall_EditorSettings_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSpatialGizmo_Dtor", (void*)godot_icall_EditorSpatialGizmo_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EditorSpatialGizmo_Ctor", (void*)godot_icall_EditorSpatialGizmo_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Environment_Dtor", (void*)godot_icall_Environment_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Environment_Ctor", (void*)godot_icall_Environment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EventPlayer_Ctor", (void*)godot_icall_EventPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EventStream_Dtor", (void*)godot_icall_EventStream_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EventStreamChibi_Dtor", (void*)godot_icall_EventStreamChibi_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_EventStreamChibi_Ctor", (void*)godot_icall_EventStreamChibi_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_FileDialog_Ctor", (void*)godot_icall_FileDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_FixedMaterial_Dtor", (void*)godot_icall_FixedMaterial_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_FixedMaterial_Ctor", (void*)godot_icall_FixedMaterial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Font_Dtor", (void*)godot_icall_Font_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_FuncRef_Dtor", (void*)godot_icall_FuncRef_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_FuncRef_Ctor", (void*)godot_icall_FuncRef_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GDFunctionState_Dtor", (void*)godot_icall_GDFunctionState_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GDNativeClass_Dtor", (void*)godot_icall_GDNativeClass_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GDScript_Dtor", (void*)godot_icall_GDScript_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GDScript_Ctor", (void*)godot_icall_GDScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Generic6DOFJoint_Ctor", (void*)godot_icall_Generic6DOFJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Globals_get_singleton", (void*)godot_icall_Globals_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GraphEdit_Ctor", (void*)godot_icall_GraphEdit_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GraphNode_Ctor", (void*)godot_icall_GraphNode_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GridContainer_Ctor", (void*)godot_icall_GridContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GridMap_Ctor", (void*)godot_icall_GridMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_GrooveJoint2D_Ctor", (void*)godot_icall_GrooveJoint2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HBoxContainer_Ctor", (void*)godot_icall_HBoxContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HButtonArray_Ctor", (void*)godot_icall_HButtonArray_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HScrollBar_Ctor", (void*)godot_icall_HScrollBar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HSeparator_Ctor", (void*)godot_icall_HSeparator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HSlider_Ctor", (void*)godot_icall_HSlider_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HSplitContainer_Ctor", (void*)godot_icall_HSplitContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HTTPClient_Dtor", (void*)godot_icall_HTTPClient_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HTTPClient_Ctor", (void*)godot_icall_HTTPClient_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HTTPRequest_Ctor", (void*)godot_icall_HTTPRequest_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_HingeJoint_Ctor", (void*)godot_icall_HingeJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_IP_get_singleton", (void*)godot_icall_IP_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ImageTexture_Dtor", (void*)godot_icall_ImageTexture_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ImageTexture_Ctor", (void*)godot_icall_ImageTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ImmediateGeometry_Ctor", (void*)godot_icall_ImmediateGeometry_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Input_get_singleton", (void*)godot_icall_Input_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InputMap_get_singleton", (void*)godot_icall_InputMap_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_InterpolatedCamera_Ctor", (void*)godot_icall_InterpolatedCamera_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ItemList_Ctor", (void*)godot_icall_ItemList_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_KinematicBody_Ctor", (void*)godot_icall_KinematicBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_KinematicBody2D_Ctor", (void*)godot_icall_KinematicBody2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Label_Ctor", (void*)godot_icall_Label_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LargeTexture_Dtor", (void*)godot_icall_LargeTexture_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LargeTexture_Ctor", (void*)godot_icall_LargeTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Light2D_Ctor", (void*)godot_icall_Light2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LightOccluder2D_Ctor", (void*)godot_icall_LightOccluder2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LineEdit_Ctor", (void*)godot_icall_LineEdit_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LineShape2D_Dtor", (void*)godot_icall_LineShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LineShape2D_Ctor", (void*)godot_icall_LineShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_LinkButton_Ctor", (void*)godot_icall_LinkButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Listener_Ctor", (void*)godot_icall_Listener_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MainLoop_Ctor", (void*)godot_icall_MainLoop_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MarginContainer_Ctor", (void*)godot_icall_MarginContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Material_Dtor", (void*)godot_icall_Material_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MaterialShader_Dtor", (void*)godot_icall_MaterialShader_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MaterialShader_Ctor", (void*)godot_icall_MaterialShader_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MaterialShaderGraph_Dtor", (void*)godot_icall_MaterialShaderGraph_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MaterialShaderGraph_Ctor", (void*)godot_icall_MaterialShaderGraph_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MenuButton_Ctor", (void*)godot_icall_MenuButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Mesh_Dtor", (void*)godot_icall_Mesh_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Mesh_Ctor", (void*)godot_icall_Mesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshDataTool_Dtor", (void*)godot_icall_MeshDataTool_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshDataTool_Ctor", (void*)godot_icall_MeshDataTool_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshInstance_Ctor", (void*)godot_icall_MeshInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshLibrary_Dtor", (void*)godot_icall_MeshLibrary_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MeshLibrary_Ctor", (void*)godot_icall_MeshLibrary_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MultiMesh_Dtor", (void*)godot_icall_MultiMesh_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MultiMesh_Ctor", (void*)godot_icall_MultiMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_MultiMeshInstance_Ctor", (void*)godot_icall_MultiMeshInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Navigation_Ctor", (void*)godot_icall_Navigation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Navigation2D_Ctor", (void*)godot_icall_Navigation2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationMesh_Dtor", (void*)godot_icall_NavigationMesh_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationMesh_Ctor", (void*)godot_icall_NavigationMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationMeshInstance_Ctor", (void*)godot_icall_NavigationMeshInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationPolygon_Dtor", (void*)godot_icall_NavigationPolygon_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationPolygon_Ctor", (void*)godot_icall_NavigationPolygon_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NavigationPolygonInstance_Ctor", (void*)godot_icall_NavigationPolygonInstance_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NetworkedMultiplayerENet_Dtor", (void*)godot_icall_NetworkedMultiplayerENet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NetworkedMultiplayerENet_Ctor", (void*)godot_icall_NetworkedMultiplayerENet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_NetworkedMultiplayerPeer_Dtor", (void*)godot_icall_NetworkedMultiplayerPeer_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Node_Ctor", (void*)godot_icall_Node_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Node2D_Ctor", (void*)godot_icall_Node2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Object_Ctor", (void*)godot_icall_Object_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_OccluderPolygon2D_Dtor", (void*)godot_icall_OccluderPolygon2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_OccluderPolygon2D_Ctor", (void*)godot_icall_OccluderPolygon2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_OmniLight_Ctor", (void*)godot_icall_OmniLight_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_OptionButton_Ctor", (void*)godot_icall_OptionButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PCKPacker_Dtor", (void*)godot_icall_PCKPacker_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PCKPacker_Ctor", (void*)godot_icall_PCKPacker_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PHashTranslation_Dtor", (void*)godot_icall_PHashTranslation_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PHashTranslation_Ctor", (void*)godot_icall_PHashTranslation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PackedDataContainer_Dtor", (void*)godot_icall_PackedDataContainer_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PackedDataContainer_Ctor", (void*)godot_icall_PackedDataContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PackedDataContainerRef_Dtor", (void*)godot_icall_PackedDataContainerRef_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PackedScene_Dtor", (void*)godot_icall_PackedScene_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PackedScene_Ctor", (void*)godot_icall_PackedScene_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PacketPeer_Dtor", (void*)godot_icall_PacketPeer_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PacketPeerStream_Dtor", (void*)godot_icall_PacketPeerStream_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PacketPeerStream_Ctor", (void*)godot_icall_PacketPeerStream_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PacketPeerUDP_Dtor", (void*)godot_icall_PacketPeerUDP_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PacketPeerUDP_Ctor", (void*)godot_icall_PacketPeerUDP_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Panel_Ctor", (void*)godot_icall_Panel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PanelContainer_Ctor", (void*)godot_icall_PanelContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ParallaxBackground_Ctor", (void*)godot_icall_ParallaxBackground_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ParallaxLayer_Ctor", (void*)godot_icall_ParallaxLayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ParticleAttractor2D_Ctor", (void*)godot_icall_ParticleAttractor2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Particles_Ctor", (void*)godot_icall_Particles_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Particles2D_Ctor", (void*)godot_icall_Particles2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Patch9Frame_Ctor", (void*)godot_icall_Patch9Frame_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Path_Ctor", (void*)godot_icall_Path_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Path2D_Ctor", (void*)godot_icall_Path2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PathFollow_Ctor", (void*)godot_icall_PathFollow_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PathFollow2D_Ctor", (void*)godot_icall_PathFollow2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PathRemap_get_singleton", (void*)godot_icall_PathRemap_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Performance_get_singleton", (void*)godot_icall_Performance_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DServer_get_singleton", (void*)godot_icall_Physics2DServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DShapeQueryParameters_Dtor", (void*)godot_icall_Physics2DShapeQueryParameters_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DShapeQueryParameters_Ctor", (void*)godot_icall_Physics2DShapeQueryParameters_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DShapeQueryResult_Dtor", (void*)godot_icall_Physics2DShapeQueryResult_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DTestMotionResult_Dtor", (void*)godot_icall_Physics2DTestMotionResult_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Physics2DTestMotionResult_Ctor", (void*)godot_icall_Physics2DTestMotionResult_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PhysicsServer_get_singleton", (void*)godot_icall_PhysicsServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PhysicsShapeQueryParameters_Dtor", (void*)godot_icall_PhysicsShapeQueryParameters_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PhysicsShapeQueryParameters_Ctor", (void*)godot_icall_PhysicsShapeQueryParameters_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PhysicsShapeQueryResult_Dtor", (void*)godot_icall_PhysicsShapeQueryResult_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PinJoint_Ctor", (void*)godot_icall_PinJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PinJoint2D_Ctor", (void*)godot_icall_PinJoint2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PlaneShape_Dtor", (void*)godot_icall_PlaneShape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PlaneShape_Ctor", (void*)godot_icall_PlaneShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Polygon2D_Ctor", (void*)godot_icall_Polygon2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PolygonPathFinder_Dtor", (void*)godot_icall_PolygonPathFinder_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PolygonPathFinder_Ctor", (void*)godot_icall_PolygonPathFinder_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Popup_Ctor", (void*)godot_icall_Popup_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PopupDialog_Ctor", (void*)godot_icall_PopupDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PopupMenu_Ctor", (void*)godot_icall_PopupMenu_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_PopupPanel_Ctor", (void*)godot_icall_PopupPanel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Portal_Ctor", (void*)godot_icall_Portal_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Position2D_Ctor", (void*)godot_icall_Position2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Position3D_Ctor", (void*)godot_icall_Position3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ProgressBar_Ctor", (void*)godot_icall_ProgressBar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ProximityGroup_Ctor", (void*)godot_icall_ProximityGroup_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Quad_Ctor", (void*)godot_icall_Quad_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Range_Ctor", (void*)godot_icall_Range_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayCast_Ctor", (void*)godot_icall_RayCast_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayCast2D_Ctor", (void*)godot_icall_RayCast2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayShape_Dtor", (void*)godot_icall_RayShape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayShape_Ctor", (void*)godot_icall_RayShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayShape2D_Dtor", (void*)godot_icall_RayShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RayShape2D_Ctor", (void*)godot_icall_RayShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RectangleShape2D_Dtor", (void*)godot_icall_RectangleShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RectangleShape2D_Ctor", (void*)godot_icall_RectangleShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Reference_Dtor", (void*)godot_icall_Reference_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Reference_Ctor", (void*)godot_icall_Reference_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ReferenceFrame_Ctor", (void*)godot_icall_ReferenceFrame_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RegEx_Dtor", (void*)godot_icall_RegEx_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RegEx_Ctor", (void*)godot_icall_RegEx_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RegExMatch_Dtor", (void*)godot_icall_RegExMatch_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RegExMatch_Ctor", (void*)godot_icall_RegExMatch_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RemoteTransform_Ctor", (void*)godot_icall_RemoteTransform_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RemoteTransform2D_Ctor", (void*)godot_icall_RemoteTransform2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RenderTargetTexture_Dtor", (void*)godot_icall_RenderTargetTexture_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Resource_Dtor", (void*)godot_icall_Resource_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Resource_Ctor", (void*)godot_icall_Resource_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ResourceImportMetadata_Dtor", (void*)godot_icall_ResourceImportMetadata_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ResourceImportMetadata_Ctor", (void*)godot_icall_ResourceImportMetadata_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ResourceInteractiveLoader_Dtor", (void*)godot_icall_ResourceInteractiveLoader_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ResourcePreloader_Ctor", (void*)godot_icall_ResourcePreloader_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RichTextLabel_Ctor", (void*)godot_icall_RichTextLabel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RigidBody_Ctor", (void*)godot_icall_RigidBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RigidBody2D_Ctor", (void*)godot_icall_RigidBody2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Room_Ctor", (void*)godot_icall_Room_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RoomBounds_Dtor", (void*)godot_icall_RoomBounds_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_RoomBounds_Ctor", (void*)godot_icall_RoomBounds_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Sample_Dtor", (void*)godot_icall_Sample_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Sample_Ctor", (void*)godot_icall_Sample_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SampleLibrary_Dtor", (void*)godot_icall_SampleLibrary_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SampleLibrary_Ctor", (void*)godot_icall_SampleLibrary_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SamplePlayer_Ctor", (void*)godot_icall_SamplePlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SamplePlayer2D_Ctor", (void*)godot_icall_SamplePlayer2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SceneState_Dtor", (void*)godot_icall_SceneState_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SceneTree_Ctor", (void*)godot_icall_SceneTree_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SceneTreeTimer_Dtor", (void*)godot_icall_SceneTreeTimer_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Script_Dtor", (void*)godot_icall_Script_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ScrollContainer_Ctor", (void*)godot_icall_ScrollContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SegmentShape2D_Dtor", (void*)godot_icall_SegmentShape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SegmentShape2D_Ctor", (void*)godot_icall_SegmentShape2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Shader_Dtor", (void*)godot_icall_Shader_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ShaderGraph_Dtor", (void*)godot_icall_ShaderGraph_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ShaderMaterial_Dtor", (void*)godot_icall_ShaderMaterial_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ShaderMaterial_Ctor", (void*)godot_icall_ShaderMaterial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Shape_Dtor", (void*)godot_icall_Shape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Shape2D_Dtor", (void*)godot_icall_Shape2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ShortCut_Dtor", (void*)godot_icall_ShortCut_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ShortCut_Ctor", (void*)godot_icall_ShortCut_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Skeleton_Ctor", (void*)godot_icall_Skeleton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SliderJoint_Ctor", (void*)godot_icall_SliderJoint_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SoundRoomParams_Ctor", (void*)godot_icall_SoundRoomParams_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Spatial_Ctor", (void*)godot_icall_Spatial_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpatialGizmo_Dtor", (void*)godot_icall_SpatialGizmo_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpatialSamplePlayer_Ctor", (void*)godot_icall_SpatialSamplePlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpatialSound2DServer_get_singleton", (void*)godot_icall_SpatialSound2DServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpatialSoundServer_get_singleton", (void*)godot_icall_SpatialSoundServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpatialStreamPlayer_Ctor", (void*)godot_icall_SpatialStreamPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SphereShape_Dtor", (void*)godot_icall_SphereShape_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SphereShape_Ctor", (void*)godot_icall_SphereShape_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpinBox_Ctor", (void*)godot_icall_SpinBox_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpotLight_Ctor", (void*)godot_icall_SpotLight_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Sprite_Ctor", (void*)godot_icall_Sprite_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Sprite3D_Ctor", (void*)godot_icall_Sprite3D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpriteFrames_Dtor", (void*)godot_icall_SpriteFrames_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SpriteFrames_Ctor", (void*)godot_icall_SpriteFrames_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StaticBody_Ctor", (void*)godot_icall_StaticBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StaticBody2D_Ctor", (void*)godot_icall_StaticBody2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeer_Dtor", (void*)godot_icall_StreamPeer_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerBuffer_Dtor", (void*)godot_icall_StreamPeerBuffer_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerBuffer_Ctor", (void*)godot_icall_StreamPeerBuffer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerSSL_Dtor", (void*)godot_icall_StreamPeerSSL_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerSSL_Ctor", (void*)godot_icall_StreamPeerSSL_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerTCP_Dtor", (void*)godot_icall_StreamPeerTCP_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPeerTCP_Ctor", (void*)godot_icall_StreamPeerTCP_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StreamPlayer_Ctor", (void*)godot_icall_StreamPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBox_Dtor", (void*)godot_icall_StyleBox_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxEmpty_Dtor", (void*)godot_icall_StyleBoxEmpty_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxEmpty_Ctor", (void*)godot_icall_StyleBoxEmpty_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxFlat_Dtor", (void*)godot_icall_StyleBoxFlat_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxFlat_Ctor", (void*)godot_icall_StyleBoxFlat_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxImageMask_Dtor", (void*)godot_icall_StyleBoxImageMask_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxImageMask_Ctor", (void*)godot_icall_StyleBoxImageMask_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxTexture_Dtor", (void*)godot_icall_StyleBoxTexture_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_StyleBoxTexture_Ctor", (void*)godot_icall_StyleBoxTexture_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SurfaceTool_Dtor", (void*)godot_icall_SurfaceTool_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_SurfaceTool_Ctor", (void*)godot_icall_SurfaceTool_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TCP_Server_Dtor", (void*)godot_icall_TCP_Server_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TCP_Server_Ctor", (void*)godot_icall_TCP_Server_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TabContainer_Ctor", (void*)godot_icall_TabContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Tabs_Ctor", (void*)godot_icall_Tabs_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TestCube_Ctor", (void*)godot_icall_TestCube_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextEdit_Ctor", (void*)godot_icall_TextEdit_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Texture_Dtor", (void*)godot_icall_Texture_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextureButton_Ctor", (void*)godot_icall_TextureButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextureFrame_Ctor", (void*)godot_icall_TextureFrame_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TextureProgress_Ctor", (void*)godot_icall_TextureProgress_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Theme_Dtor", (void*)godot_icall_Theme_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Theme_Ctor", (void*)godot_icall_Theme_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TileMap_Ctor", (void*)godot_icall_TileMap_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TileSet_Dtor", (void*)godot_icall_TileSet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TileSet_Ctor", (void*)godot_icall_TileSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Timer_Ctor", (void*)godot_icall_Timer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ToolButton_Ctor", (void*)godot_icall_ToolButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TouchScreenButton_Ctor", (void*)godot_icall_TouchScreenButton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Translation_Dtor", (void*)godot_icall_Translation_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Translation_Ctor", (void*)godot_icall_Translation_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TranslationServer_get_singleton", (void*)godot_icall_TranslationServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Tree_Ctor", (void*)godot_icall_Tree_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TriangleMesh_Dtor", (void*)godot_icall_TriangleMesh_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_TriangleMesh_Ctor", (void*)godot_icall_TriangleMesh_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Tween_Ctor", (void*)godot_icall_Tween_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_UndoRedo_Ctor", (void*)godot_icall_UndoRedo_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VBoxContainer_Ctor", (void*)godot_icall_VBoxContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VButtonArray_Ctor", (void*)godot_icall_VButtonArray_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VScrollBar_Ctor", (void*)godot_icall_VScrollBar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VSeparator_Ctor", (void*)godot_icall_VSeparator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VSlider_Ctor", (void*)godot_icall_VSlider_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VSplitContainer_Ctor", (void*)godot_icall_VSplitContainer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VehicleBody_Ctor", (void*)godot_icall_VehicleBody_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VehicleWheel_Ctor", (void*)godot_icall_VehicleWheel_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VideoPlayer_Ctor", (void*)godot_icall_VideoPlayer_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VideoStream_Dtor", (void*)godot_icall_VideoStream_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VideoStreamTheora_Dtor", (void*)godot_icall_VideoStreamTheora_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VideoStreamTheora_Ctor", (void*)godot_icall_VideoStreamTheora_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VideoStreamWebm_Dtor", (void*)godot_icall_VideoStreamWebm_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VideoStreamWebm_Ctor", (void*)godot_icall_VideoStreamWebm_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Viewport_Ctor", (void*)godot_icall_Viewport_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_ViewportSprite_Ctor", (void*)godot_icall_ViewportSprite_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityEnabler_Ctor", (void*)godot_icall_VisibilityEnabler_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityEnabler2D_Ctor", (void*)godot_icall_VisibilityEnabler2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityNotifier_Ctor", (void*)godot_icall_VisibilityNotifier_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisibilityNotifier2D_Ctor", (void*)godot_icall_VisibilityNotifier2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScript_Dtor", (void*)godot_icall_VisualScript_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScript_Ctor", (void*)godot_icall_VisualScript_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptBasicTypeConstant_Dtor", (void*)godot_icall_VisualScriptBasicTypeConstant_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptBasicTypeConstant_Ctor", (void*)godot_icall_VisualScriptBasicTypeConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptBuiltinFunc_Dtor", (void*)godot_icall_VisualScriptBuiltinFunc_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptBuiltinFunc_Ctor", (void*)godot_icall_VisualScriptBuiltinFunc_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptClassConstant_Dtor", (void*)godot_icall_VisualScriptClassConstant_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptClassConstant_Ctor", (void*)godot_icall_VisualScriptClassConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptComment_Dtor", (void*)godot_icall_VisualScriptComment_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptComment_Ctor", (void*)godot_icall_VisualScriptComment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptCondition_Dtor", (void*)godot_icall_VisualScriptCondition_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptCondition_Ctor", (void*)godot_icall_VisualScriptCondition_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptConstant_Dtor", (void*)godot_icall_VisualScriptConstant_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptConstant_Ctor", (void*)godot_icall_VisualScriptConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptConstructor_Dtor", (void*)godot_icall_VisualScriptConstructor_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptConstructor_Ctor", (void*)godot_icall_VisualScriptConstructor_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptCustomNode_Dtor", (void*)godot_icall_VisualScriptCustomNode_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptCustomNode_Ctor", (void*)godot_icall_VisualScriptCustomNode_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptDeconstruct_Dtor", (void*)godot_icall_VisualScriptDeconstruct_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptDeconstruct_Ctor", (void*)godot_icall_VisualScriptDeconstruct_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptEmitSignal_Dtor", (void*)godot_icall_VisualScriptEmitSignal_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptEmitSignal_Ctor", (void*)godot_icall_VisualScriptEmitSignal_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptEngineSingleton_Dtor", (void*)godot_icall_VisualScriptEngineSingleton_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptEngineSingleton_Ctor", (void*)godot_icall_VisualScriptEngineSingleton_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptExpression_Dtor", (void*)godot_icall_VisualScriptExpression_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptExpression_Ctor", (void*)godot_icall_VisualScriptExpression_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptFunction_Dtor", (void*)godot_icall_VisualScriptFunction_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptFunction_Ctor", (void*)godot_icall_VisualScriptFunction_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptFunctionCall_Dtor", (void*)godot_icall_VisualScriptFunctionCall_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptFunctionCall_Ctor", (void*)godot_icall_VisualScriptFunctionCall_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptFunctionState_Dtor", (void*)godot_icall_VisualScriptFunctionState_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptGlobalConstant_Dtor", (void*)godot_icall_VisualScriptGlobalConstant_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptGlobalConstant_Ctor", (void*)godot_icall_VisualScriptGlobalConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIndexGet_Dtor", (void*)godot_icall_VisualScriptIndexGet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIndexGet_Ctor", (void*)godot_icall_VisualScriptIndexGet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIndexSet_Dtor", (void*)godot_icall_VisualScriptIndexSet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIndexSet_Ctor", (void*)godot_icall_VisualScriptIndexSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptInputAction_Dtor", (void*)godot_icall_VisualScriptInputAction_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptInputAction_Ctor", (void*)godot_icall_VisualScriptInputAction_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptInputFilter_Dtor", (void*)godot_icall_VisualScriptInputFilter_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptInputFilter_Ctor", (void*)godot_icall_VisualScriptInputFilter_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIterator_Dtor", (void*)godot_icall_VisualScriptIterator_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptIterator_Ctor", (void*)godot_icall_VisualScriptIterator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptLocalVar_Dtor", (void*)godot_icall_VisualScriptLocalVar_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptLocalVar_Ctor", (void*)godot_icall_VisualScriptLocalVar_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptLocalVarSet_Dtor", (void*)godot_icall_VisualScriptLocalVarSet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptLocalVarSet_Ctor", (void*)godot_icall_VisualScriptLocalVarSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptMathConstant_Dtor", (void*)godot_icall_VisualScriptMathConstant_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptMathConstant_Ctor", (void*)godot_icall_VisualScriptMathConstant_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptNode_Dtor", (void*)godot_icall_VisualScriptNode_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptOperator_Dtor", (void*)godot_icall_VisualScriptOperator_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptOperator_Ctor", (void*)godot_icall_VisualScriptOperator_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPreload_Dtor", (void*)godot_icall_VisualScriptPreload_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPreload_Ctor", (void*)godot_icall_VisualScriptPreload_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPropertyGet_Dtor", (void*)godot_icall_VisualScriptPropertyGet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPropertyGet_Ctor", (void*)godot_icall_VisualScriptPropertyGet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPropertySet_Dtor", (void*)godot_icall_VisualScriptPropertySet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptPropertySet_Ctor", (void*)godot_icall_VisualScriptPropertySet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptResourcePath_Dtor", (void*)godot_icall_VisualScriptResourcePath_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptResourcePath_Ctor", (void*)godot_icall_VisualScriptResourcePath_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptReturn_Dtor", (void*)godot_icall_VisualScriptReturn_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptReturn_Ctor", (void*)godot_icall_VisualScriptReturn_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSceneNode_Dtor", (void*)godot_icall_VisualScriptSceneNode_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSceneNode_Ctor", (void*)godot_icall_VisualScriptSceneNode_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSceneTree_Dtor", (void*)godot_icall_VisualScriptSceneTree_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSceneTree_Ctor", (void*)godot_icall_VisualScriptSceneTree_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSelf_Dtor", (void*)godot_icall_VisualScriptSelf_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSelf_Ctor", (void*)godot_icall_VisualScriptSelf_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSequence_Dtor", (void*)godot_icall_VisualScriptSequence_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSequence_Ctor", (void*)godot_icall_VisualScriptSequence_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSubCall_Dtor", (void*)godot_icall_VisualScriptSubCall_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSubCall_Ctor", (void*)godot_icall_VisualScriptSubCall_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSwitch_Dtor", (void*)godot_icall_VisualScriptSwitch_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptSwitch_Ctor", (void*)godot_icall_VisualScriptSwitch_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptTypeCast_Dtor", (void*)godot_icall_VisualScriptTypeCast_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptTypeCast_Ctor", (void*)godot_icall_VisualScriptTypeCast_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptVariableGet_Dtor", (void*)godot_icall_VisualScriptVariableGet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptVariableGet_Ctor", (void*)godot_icall_VisualScriptVariableGet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptVariableSet_Dtor", (void*)godot_icall_VisualScriptVariableSet_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptVariableSet_Ctor", (void*)godot_icall_VisualScriptVariableSet_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptWhile_Dtor", (void*)godot_icall_VisualScriptWhile_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptWhile_Ctor", (void*)godot_icall_VisualScriptWhile_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptYield_Dtor", (void*)godot_icall_VisualScriptYield_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptYield_Ctor", (void*)godot_icall_VisualScriptYield_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptYieldSignal_Dtor", (void*)godot_icall_VisualScriptYieldSignal_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualScriptYieldSignal_Ctor", (void*)godot_icall_VisualScriptYieldSignal_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_VisualServer_get_singleton", (void*)godot_icall_VisualServer_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_WeakRef_Dtor", (void*)godot_icall_WeakRef_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_WeakRef_Ctor", (void*)godot_icall_WeakRef_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_WindowDialog_Ctor", (void*)godot_icall_WindowDialog_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_World_Dtor", (void*)godot_icall_World_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_World_Ctor", (void*)godot_icall_World_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_World2D_Dtor", (void*)godot_icall_World2D_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_World2D_Ctor", (void*)godot_icall_World2D_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_WorldEnvironment_Ctor", (void*)godot_icall_WorldEnvironment_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_XMLParser_Dtor", (void*)godot_icall_XMLParser_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_XMLParser_Ctor", (void*)godot_icall_XMLParser_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_YSort_Ctor", (void*)godot_icall_YSort_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Directory_Dtor", (void*)godot_icall_Directory_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Directory_Ctor", (void*)godot_icall_Directory_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_File_Dtor", (void*)godot_icall_File_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_File_Ctor", (void*)godot_icall_File_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__Geometry_get_singleton", (void*)godot_icall__Geometry_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__Marshalls_get_singleton", (void*)godot_icall__Marshalls_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Mutex_Dtor", (void*)godot_icall_Mutex_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Mutex_Ctor", (void*)godot_icall_Mutex_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__OS_get_singleton", (void*)godot_icall__OS_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__ResourceLoader_get_singleton", (void*)godot_icall__ResourceLoader_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall__ResourceSaver_get_singleton", (void*)godot_icall__ResourceSaver_get_singleton);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Semaphore_Dtor", (void*)godot_icall_Semaphore_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Semaphore_Ctor", (void*)godot_icall_Semaphore_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Thread_Dtor", (void*)godot_icall_Thread_Dtor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_Thread_Ctor", (void*)godot_icall_Thread_Ctor);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_0", (void*)godot_icall_0_0);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_1", (void*)godot_icall_3_1);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_2", (void*)godot_icall_1_2);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_3", (void*)godot_icall_1_3);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_4", (void*)godot_icall_1_4);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_5", (void*)godot_icall_2_5);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_6", (void*)godot_icall_2_6);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_7", (void*)godot_icall_0_7);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_8", (void*)godot_icall_1_8);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_9", (void*)godot_icall_1_9);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_10", (void*)godot_icall_2_10);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_11", (void*)godot_icall_2_11);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_12", (void*)godot_icall_0_12);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_13", (void*)godot_icall_1_13);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_14", (void*)godot_icall_0_14);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_15", (void*)godot_icall_3_15);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_16", (void*)godot_icall_1_16);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_17", (void*)godot_icall_1_17);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_18", (void*)godot_icall_1_18);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_19", (void*)godot_icall_0_19);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_20", (void*)godot_icall_1_20);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_21", (void*)godot_icall_1_21);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_22", (void*)godot_icall_0_22);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_23", (void*)godot_icall_1_23);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_24", (void*)godot_icall_0_24);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_25", (void*)godot_icall_1_25);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_26", (void*)godot_icall_0_26);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_27", (void*)godot_icall_2_27);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_28", (void*)godot_icall_1_28);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_29", (void*)godot_icall_1_29);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_30", (void*)godot_icall_2_30);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_31", (void*)godot_icall_1_31);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_32", (void*)godot_icall_2_32);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_33", (void*)godot_icall_1_33);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_34", (void*)godot_icall_5_34);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_35", (void*)godot_icall_4_35);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_36", (void*)godot_icall_2_36);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_37", (void*)godot_icall_3_37);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_38", (void*)godot_icall_3_38);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_39", (void*)godot_icall_2_39);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_40", (void*)godot_icall_3_40);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_41", (void*)godot_icall_2_41);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_42", (void*)godot_icall_3_42);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_43", (void*)godot_icall_2_43);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_44", (void*)godot_icall_2_44);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_45", (void*)godot_icall_1_45);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_46", (void*)godot_icall_0_46);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_47", (void*)godot_icall_2_47);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_48", (void*)godot_icall_2_48);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_49", (void*)godot_icall_1_49);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_50", (void*)godot_icall_1_50);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_51", (void*)godot_icall_0_51);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_52", (void*)godot_icall_1_52);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_53", (void*)godot_icall_3_53);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_54", (void*)godot_icall_2_54);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_55", (void*)godot_icall_4_55);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_56", (void*)godot_icall_2_56);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_57", (void*)godot_icall_1_57);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_58", (void*)godot_icall_0_58);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_59", (void*)godot_icall_2_59);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_60", (void*)godot_icall_1_60);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_61", (void*)godot_icall_2_61);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_62", (void*)godot_icall_2_62);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_63", (void*)godot_icall_1_63);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_64", (void*)godot_icall_2_64);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_65", (void*)godot_icall_2_65);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_66", (void*)godot_icall_3_66);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_67", (void*)godot_icall_1_67);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_68", (void*)godot_icall_2_68);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_69", (void*)godot_icall_2_69);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_70", (void*)godot_icall_1_70);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_71", (void*)godot_icall_2_71);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_72", (void*)godot_icall_3_72);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_73", (void*)godot_icall_2_73);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_74", (void*)godot_icall_3_74);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_75", (void*)godot_icall_3_75);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_76", (void*)godot_icall_1_76);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_77", (void*)godot_icall_0_77);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_78", (void*)godot_icall_0_78);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_79", (void*)godot_icall_1_79);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_80", (void*)godot_icall_0_80);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_81", (void*)godot_icall_1_81);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_82", (void*)godot_icall_0_82);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_83", (void*)godot_icall_3_83);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_84", (void*)godot_icall_2_84);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_85", (void*)godot_icall_1_85);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_86", (void*)godot_icall_1_86);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_87", (void*)godot_icall_1_87);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_88", (void*)godot_icall_2_88);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_89", (void*)godot_icall_2_89);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_90", (void*)godot_icall_1_90);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_91", (void*)godot_icall_2_91);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_92", (void*)godot_icall_0_92);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_93", (void*)godot_icall_2_93);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_94", (void*)godot_icall_2_94);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_95", (void*)godot_icall_4_95);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_96", (void*)godot_icall_5_96);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_97", (void*)godot_icall_3_97);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_98", (void*)godot_icall_2_98);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_99", (void*)godot_icall_1_99);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_100", (void*)godot_icall_1_100);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_101", (void*)godot_icall_1_101);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_102", (void*)godot_icall_0_102);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_103", (void*)godot_icall_1_103);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_104", (void*)godot_icall_0_104);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_105", (void*)godot_icall_2_105);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_106", (void*)godot_icall_1_106);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_107", (void*)godot_icall_2_107);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_108", (void*)godot_icall_1_108);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_109", (void*)godot_icall_2_109);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_110", (void*)godot_icall_3_110);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_111", (void*)godot_icall_5_111);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_112", (void*)godot_icall_1_112);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_113", (void*)godot_icall_2_113);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_114", (void*)godot_icall_3_114);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_115", (void*)godot_icall_2_115);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_116", (void*)godot_icall_1_116);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_117", (void*)godot_icall_0_117);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_118", (void*)godot_icall_1_118);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_119", (void*)godot_icall_1_119);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_120", (void*)godot_icall_1_120);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_121", (void*)godot_icall_3_121);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_122", (void*)godot_icall_0_122);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_123", (void*)godot_icall_0_123);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_124", (void*)godot_icall_0_124);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_125", (void*)godot_icall_1_125);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_126", (void*)godot_icall_0_126);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_127", (void*)godot_icall_5_127);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_128", (void*)godot_icall_2_128);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_129", (void*)godot_icall_3_129);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_130", (void*)godot_icall_3_130);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_131", (void*)godot_icall_5_131);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_132", (void*)godot_icall_5_132);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_133", (void*)godot_icall_2_133);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_134", (void*)godot_icall_5_134);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_135", (void*)godot_icall_4_135);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_136", (void*)godot_icall_4_136);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_137", (void*)godot_icall_5_137);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_138", (void*)godot_icall_5_138);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_139", (void*)godot_icall_3_139);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_140", (void*)godot_icall_1_140);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_141", (void*)godot_icall_0_141);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_142", (void*)godot_icall_0_142);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_143", (void*)godot_icall_1_143);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_144", (void*)godot_icall_1_144);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_145", (void*)godot_icall_0_145);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_146", (void*)godot_icall_2_146);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_147", (void*)godot_icall_0_147);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_148", (void*)godot_icall_2_148);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_149", (void*)godot_icall_2_149);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_150", (void*)godot_icall_1_150);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_151", (void*)godot_icall_1_151);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_152", (void*)godot_icall_2_152);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_153", (void*)godot_icall_2_153);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_154", (void*)godot_icall_1_154);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_155", (void*)godot_icall_1_155);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_156", (void*)godot_icall_1_156);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_157", (void*)godot_icall_0_157);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_158", (void*)godot_icall_0_158);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_159", (void*)godot_icall_2_159);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_160", (void*)godot_icall_2_160);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_161", (void*)godot_icall_1_161);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_162", (void*)godot_icall_1_162);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_163", (void*)godot_icall_1_163);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_164", (void*)godot_icall_0_164);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_165", (void*)godot_icall_1_165);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_166", (void*)godot_icall_0_166);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_167", (void*)godot_icall_1_167);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_168", (void*)godot_icall_0_168);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_169", (void*)godot_icall_3_169);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_170", (void*)godot_icall_3_170);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_171", (void*)godot_icall_2_171);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_172", (void*)godot_icall_1_172);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_173", (void*)godot_icall_1_173);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_174", (void*)godot_icall_0_174);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_175", (void*)godot_icall_2_175);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_176", (void*)godot_icall_3_176);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_177", (void*)godot_icall_0_177);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_178", (void*)godot_icall_0_178);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_179", (void*)godot_icall_2_179);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_180", (void*)godot_icall_2_180);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_181", (void*)godot_icall_2_181);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_182", (void*)godot_icall_2_182);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_183", (void*)godot_icall_2_183);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_184", (void*)godot_icall_1_184);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_185", (void*)godot_icall_1_185);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_186", (void*)godot_icall_2_186);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_187", (void*)godot_icall_2_187);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_188", (void*)godot_icall_1_188);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_189", (void*)godot_icall_4_189);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_190", (void*)godot_icall_2_190);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_191", (void*)godot_icall_1_191);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_192", (void*)godot_icall_2_192);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_193", (void*)godot_icall_1_193);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_194", (void*)godot_icall_2_194);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_195", (void*)godot_icall_2_195);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_196", (void*)godot_icall_4_196);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_197", (void*)godot_icall_2_197);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_198", (void*)godot_icall_2_198);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_199", (void*)godot_icall_1_199);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_200", (void*)godot_icall_2_200);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_201", (void*)godot_icall_2_201);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_202", (void*)godot_icall_0_202);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_203", (void*)godot_icall_1_203);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_204", (void*)godot_icall_0_204);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_205", (void*)godot_icall_0_205);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_206", (void*)godot_icall_1_206);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_207", (void*)godot_icall_1_207);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_208", (void*)godot_icall_2_208);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_209", (void*)godot_icall_2_209);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_210", (void*)godot_icall_4_210);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_211", (void*)godot_icall_0_211);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_212", (void*)godot_icall_0_212);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_213", (void*)godot_icall_2_213);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_214", (void*)godot_icall_0_214);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_215", (void*)godot_icall_0_215);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_216", (void*)godot_icall_0_216);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_217", (void*)godot_icall_4_217);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_218", (void*)godot_icall_4_218);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_219", (void*)godot_icall_1_219);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_220", (void*)godot_icall_1_220);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_221", (void*)godot_icall_3_221);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_222", (void*)godot_icall_3_222);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_223", (void*)godot_icall_2_223);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_224", (void*)godot_icall_3_224);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_225", (void*)godot_icall_2_225);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_226", (void*)godot_icall_0_226);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_227", (void*)godot_icall_1_227);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_228", (void*)godot_icall_5_228);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_229", (void*)godot_icall_5_229);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_230", (void*)godot_icall_1_230);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_231", (void*)godot_icall_1_231);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_232", (void*)godot_icall_1_232);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_233", (void*)godot_icall_1_233);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_234", (void*)godot_icall_4_234);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_235", (void*)godot_icall_4_235);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_236", (void*)godot_icall_4_236);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_9_237", (void*)godot_icall_9_237);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_238", (void*)godot_icall_0_238);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_239", (void*)godot_icall_5_239);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_240", (void*)godot_icall_3_240);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_241", (void*)godot_icall_4_241);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_242", (void*)godot_icall_2_242);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_243", (void*)godot_icall_1_243);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_244", (void*)godot_icall_5_244);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_245", (void*)godot_icall_0_245);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_246", (void*)godot_icall_4_246);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_247", (void*)godot_icall_4_247);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_248", (void*)godot_icall_1_248);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_249", (void*)godot_icall_0_249);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_250", (void*)godot_icall_0_250);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_251", (void*)godot_icall_1_251);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_252", (void*)godot_icall_5_252);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_253", (void*)godot_icall_2_253);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_254", (void*)godot_icall_4_254);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_255", (void*)godot_icall_2_255);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_256", (void*)godot_icall_0_256);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_257", (void*)godot_icall_1_257);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_258", (void*)godot_icall_4_258);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_259", (void*)godot_icall_4_259);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_260", (void*)godot_icall_2_260);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_261", (void*)godot_icall_2_261);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_262", (void*)godot_icall_1_262);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_263", (void*)godot_icall_2_263);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_264", (void*)godot_icall_1_264);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_265", (void*)godot_icall_3_265);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_266", (void*)godot_icall_2_266);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_267", (void*)godot_icall_2_267);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_268", (void*)godot_icall_1_268);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_269", (void*)godot_icall_2_269);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_270", (void*)godot_icall_4_270);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_271", (void*)godot_icall_2_271);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_272", (void*)godot_icall_2_272);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_273", (void*)godot_icall_0_273);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_274", (void*)godot_icall_0_274);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_275", (void*)godot_icall_1_275);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_276", (void*)godot_icall_1_276);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_277", (void*)godot_icall_4_277);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_278", (void*)godot_icall_1_278);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_279", (void*)godot_icall_1_279);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_280", (void*)godot_icall_0_280);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_281", (void*)godot_icall_2_281);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_282", (void*)godot_icall_1_282);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_283", (void*)godot_icall_2_283);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_284", (void*)godot_icall_1_284);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_285", (void*)godot_icall_2_285);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_286", (void*)godot_icall_1_286);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_287", (void*)godot_icall_2_287);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_288", (void*)godot_icall_1_288);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_289", (void*)godot_icall_0_289);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_290", (void*)godot_icall_1_290);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_291", (void*)godot_icall_1_291);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_292", (void*)godot_icall_3_292);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_293", (void*)godot_icall_3_293);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_294", (void*)godot_icall_3_294);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_295", (void*)godot_icall_1_295);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_296", (void*)godot_icall_3_296);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_297", (void*)godot_icall_3_297);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_298", (void*)godot_icall_1_298);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_299", (void*)godot_icall_2_299);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_300", (void*)godot_icall_2_300);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_301", (void*)godot_icall_1_301);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_302", (void*)godot_icall_0_302);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_303", (void*)godot_icall_4_303);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_304", (void*)godot_icall_4_304);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_305", (void*)godot_icall_2_305);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_306", (void*)godot_icall_1_306);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_307", (void*)godot_icall_1_307);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_308", (void*)godot_icall_1_308);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_309", (void*)godot_icall_0_309);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_310", (void*)godot_icall_3_310);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_311", (void*)godot_icall_1_311);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_312", (void*)godot_icall_1_312);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_313", (void*)godot_icall_2_313);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_314", (void*)godot_icall_0_314);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_315", (void*)godot_icall_1_315);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_316", (void*)godot_icall_2_316);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_317", (void*)godot_icall_3_317);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_318", (void*)godot_icall_3_318);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_319", (void*)godot_icall_1_319);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_320", (void*)godot_icall_1_320);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_321", (void*)godot_icall_0_321);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_322", (void*)godot_icall_2_322);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_323", (void*)godot_icall_2_323);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_324", (void*)godot_icall_2_324);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_325", (void*)godot_icall_5_325);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_326", (void*)godot_icall_3_326);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_327", (void*)godot_icall_3_327);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_328", (void*)godot_icall_3_328);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_329", (void*)godot_icall_1_329);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_330", (void*)godot_icall_1_330);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_331", (void*)godot_icall_0_331);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_332", (void*)godot_icall_1_332);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_333", (void*)godot_icall_1_333);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_334", (void*)godot_icall_3_334);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_335", (void*)godot_icall_3_335);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_336", (void*)godot_icall_0_336);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_337", (void*)godot_icall_1_337);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_338", (void*)godot_icall_1_338);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_339", (void*)godot_icall_0_339);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_340", (void*)godot_icall_0_340);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_341", (void*)godot_icall_0_341);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_342", (void*)godot_icall_3_342);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_343", (void*)godot_icall_1_343);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_344", (void*)godot_icall_1_344);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_345", (void*)godot_icall_0_345);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_346", (void*)godot_icall_5_346);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_347", (void*)godot_icall_5_347);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_348", (void*)godot_icall_2_348);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_349", (void*)godot_icall_1_349);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_350", (void*)godot_icall_1_350);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_351", (void*)godot_icall_2_351);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_352", (void*)godot_icall_2_352);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_353", (void*)godot_icall_1_353);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_354", (void*)godot_icall_1_354);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_355", (void*)godot_icall_3_355);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_356", (void*)godot_icall_3_356);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_357", (void*)godot_icall_3_357);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_358", (void*)godot_icall_2_358);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_359", (void*)godot_icall_2_359);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_360", (void*)godot_icall_3_360);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_361", (void*)godot_icall_2_361);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_362", (void*)godot_icall_1_362);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_363", (void*)godot_icall_3_363);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_364", (void*)godot_icall_2_364);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_365", (void*)godot_icall_3_365);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_366", (void*)godot_icall_2_366);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_367", (void*)godot_icall_3_367);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_368", (void*)godot_icall_2_368);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_369", (void*)godot_icall_1_369);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_370", (void*)godot_icall_4_370);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_371", (void*)godot_icall_5_371);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_372", (void*)godot_icall_3_372);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_373", (void*)godot_icall_5_373);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_374", (void*)godot_icall_4_374);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_375", (void*)godot_icall_1_375);
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
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_386", (void*)godot_icall_2_386);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_387", (void*)godot_icall_3_387);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_388", (void*)godot_icall_2_388);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_389", (void*)godot_icall_4_389);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_390", (void*)godot_icall_1_390);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_391", (void*)godot_icall_4_391);
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
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_402", (void*)godot_icall_3_402);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_403", (void*)godot_icall_2_403);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_404", (void*)godot_icall_1_404);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_405", (void*)godot_icall_3_405);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_406", (void*)godot_icall_5_406);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_407", (void*)godot_icall_1_407);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_408", (void*)godot_icall_1_408);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_409", (void*)godot_icall_2_409);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_410", (void*)godot_icall_3_410);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_411", (void*)godot_icall_2_411);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_412", (void*)godot_icall_3_412);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_413", (void*)godot_icall_0_413);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_414", (void*)godot_icall_1_414);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_415", (void*)godot_icall_0_415);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_416", (void*)godot_icall_2_416);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_417", (void*)godot_icall_5_417);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_418", (void*)godot_icall_2_418);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_419", (void*)godot_icall_1_419);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_420", (void*)godot_icall_1_420);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_421", (void*)godot_icall_1_421);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_422", (void*)godot_icall_3_422);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_423", (void*)godot_icall_4_423);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_424", (void*)godot_icall_1_424);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_425", (void*)godot_icall_3_425);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_426", (void*)godot_icall_4_426);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_427", (void*)godot_icall_1_427);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_428", (void*)godot_icall_5_428);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_429", (void*)godot_icall_1_429);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_430", (void*)godot_icall_4_430);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_431", (void*)godot_icall_3_431);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_432", (void*)godot_icall_2_432);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_433", (void*)godot_icall_3_433);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_434", (void*)godot_icall_2_434);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_435", (void*)godot_icall_3_435);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_436", (void*)godot_icall_2_436);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_437", (void*)godot_icall_3_437);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_438", (void*)godot_icall_2_438);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_439", (void*)godot_icall_3_439);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_440", (void*)godot_icall_2_440);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_441", (void*)godot_icall_3_441);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_442", (void*)godot_icall_3_442);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_443", (void*)godot_icall_2_443);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_444", (void*)godot_icall_2_444);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_445", (void*)godot_icall_4_445);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_446", (void*)godot_icall_2_446);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_447", (void*)godot_icall_2_447);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_448", (void*)godot_icall_3_448);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_449", (void*)godot_icall_2_449);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_450", (void*)godot_icall_5_450);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_451", (void*)godot_icall_5_451);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_452", (void*)godot_icall_2_452);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_453", (void*)godot_icall_1_453);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_454", (void*)godot_icall_3_454);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_455", (void*)godot_icall_5_455);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_456", (void*)godot_icall_3_456);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_457", (void*)godot_icall_5_457);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_458", (void*)godot_icall_0_458);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_459", (void*)godot_icall_1_459);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_460", (void*)godot_icall_0_460);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_461", (void*)godot_icall_0_461);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_462", (void*)godot_icall_2_462);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_463", (void*)godot_icall_3_463);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_464", (void*)godot_icall_0_464);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_465", (void*)godot_icall_3_465);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_466", (void*)godot_icall_2_466);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_467", (void*)godot_icall_3_467);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_468", (void*)godot_icall_1_468);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_469", (void*)godot_icall_0_469);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_470", (void*)godot_icall_1_470);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_471", (void*)godot_icall_3_471);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_472", (void*)godot_icall_2_472);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_473", (void*)godot_icall_2_473);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_474", (void*)godot_icall_6_474);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_475", (void*)godot_icall_1_475);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_476", (void*)godot_icall_3_476);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_477", (void*)godot_icall_1_477);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_478", (void*)godot_icall_0_478);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_479", (void*)godot_icall_4_479);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_480", (void*)godot_icall_4_480);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_481", (void*)godot_icall_4_481);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_482", (void*)godot_icall_5_482);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_483", (void*)godot_icall_5_483);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_484", (void*)godot_icall_0_484);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_485", (void*)godot_icall_3_485);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_486", (void*)godot_icall_3_486);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_487", (void*)godot_icall_0_487);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_488", (void*)godot_icall_6_488);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_489", (void*)godot_icall_5_489);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_490", (void*)godot_icall_2_490);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_491", (void*)godot_icall_1_491);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_492", (void*)godot_icall_2_492);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_493", (void*)godot_icall_1_493);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_494", (void*)godot_icall_1_494);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_495", (void*)godot_icall_1_495);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_496", (void*)godot_icall_0_496);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_497", (void*)godot_icall_2_497);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_498", (void*)godot_icall_1_498);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_499", (void*)godot_icall_5_499);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_500", (void*)godot_icall_1_500);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_501", (void*)godot_icall_3_501);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_502", (void*)godot_icall_3_502);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_503", (void*)godot_icall_4_503);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_504", (void*)godot_icall_2_504);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_8_505", (void*)godot_icall_8_505);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_8_506", (void*)godot_icall_8_506);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_9_507", (void*)godot_icall_9_507);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_9_508", (void*)godot_icall_9_508);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_509", (void*)godot_icall_3_509);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_510", (void*)godot_icall_3_510);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_511", (void*)godot_icall_0_511);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_512", (void*)godot_icall_3_512);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_513", (void*)godot_icall_0_513);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_514", (void*)godot_icall_0_514);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_515", (void*)godot_icall_4_515);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_516", (void*)godot_icall_3_516);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_517", (void*)godot_icall_2_517);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_518", (void*)godot_icall_4_518);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_519", (void*)godot_icall_4_519);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_520", (void*)godot_icall_5_520);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_521", (void*)godot_icall_5_521);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_522", (void*)godot_icall_3_522);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_523", (void*)godot_icall_2_523);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_524", (void*)godot_icall_1_524);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_525", (void*)godot_icall_3_525);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_526", (void*)godot_icall_3_526);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_527", (void*)godot_icall_1_527);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_528", (void*)godot_icall_0_528);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_529", (void*)godot_icall_2_529);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_530", (void*)godot_icall_3_530);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_531", (void*)godot_icall_5_531);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_532", (void*)godot_icall_4_532);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_533", (void*)godot_icall_2_533);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_534", (void*)godot_icall_3_534);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_535", (void*)godot_icall_2_535);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_536", (void*)godot_icall_2_536);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_537", (void*)godot_icall_1_537);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_538", (void*)godot_icall_3_538);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_539", (void*)godot_icall_2_539);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_540", (void*)godot_icall_3_540);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_541", (void*)godot_icall_2_541);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_542", (void*)godot_icall_1_542);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_543", (void*)godot_icall_2_543);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_544", (void*)godot_icall_1_544);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_545", (void*)godot_icall_2_545);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_546", (void*)godot_icall_1_546);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_547", (void*)godot_icall_1_547);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_548", (void*)godot_icall_2_548);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_549", (void*)godot_icall_3_549);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_550", (void*)godot_icall_2_550);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_551", (void*)godot_icall_3_551);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_552", (void*)godot_icall_2_552);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_553", (void*)godot_icall_6_553);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_554", (void*)godot_icall_3_554);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_555", (void*)godot_icall_6_555);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_556", (void*)godot_icall_6_556);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_6_557", (void*)godot_icall_6_557);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_558", (void*)godot_icall_4_558);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_559", (void*)godot_icall_2_559);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_560", (void*)godot_icall_4_560);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_561", (void*)godot_icall_2_561);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_562", (void*)godot_icall_2_562);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_563", (void*)godot_icall_4_563);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_564", (void*)godot_icall_3_564);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_565", (void*)godot_icall_2_565);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_0_566", (void*)godot_icall_0_566);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_567", (void*)godot_icall_2_567);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_568", (void*)godot_icall_3_568);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_569", (void*)godot_icall_3_569);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_570", (void*)godot_icall_1_570);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_571", (void*)godot_icall_1_571);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_572", (void*)godot_icall_4_572);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_573", (void*)godot_icall_5_573);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_574", (void*)godot_icall_4_574);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_575", (void*)godot_icall_4_575);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_576", (void*)godot_icall_4_576);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_577", (void*)godot_icall_4_577);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_578", (void*)godot_icall_3_578);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_5_579", (void*)godot_icall_5_579);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_580", (void*)godot_icall_4_580);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_581", (void*)godot_icall_4_581);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_582", (void*)godot_icall_3_582);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_583", (void*)godot_icall_4_583);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_584", (void*)godot_icall_1_584);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_585", (void*)godot_icall_1_585);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_586", (void*)godot_icall_1_586);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_587", (void*)godot_icall_1_587);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_588", (void*)godot_icall_4_588);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_589", (void*)godot_icall_4_589);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_590", (void*)godot_icall_1_590);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_591", (void*)godot_icall_4_591);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_2_592", (void*)godot_icall_2_592);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_593", (void*)godot_icall_3_593);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_594", (void*)godot_icall_1_594);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_3_595", (void*)godot_icall_3_595);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_1_596", (void*)godot_icall_1_596);
	mono_add_internal_call("GodotEngine.NativeCalls::godot_icall_4_597", (void*)godot_icall_4_597);
}
}
