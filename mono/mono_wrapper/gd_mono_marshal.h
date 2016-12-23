#ifndef GDMONOMARSHAL_H
#define GDMONOMARSHAL_H

#include "core/variant.h"
#include "gd_mono_utils.h"

template<unsigned num, unsigned num2>
struct const_sum
{
	enum { value = num + num2 };
};

namespace GDMonoMarshal
{

#define UNBOX_CHAR_PTR( x )	(char*) mono_object_unbox( x )
#define UNBOX_FLOAT_PTR( x )(float*) mono_object_unbox( x )

#define UNBOX_DOUBLE( x )	*(double*)		mono_object_unbox( x )
#define UNBOX_FLOAT( x )	*(float*)		mono_object_unbox( x )
#define UNBOX_INT64( x )	*(int64_t*)		mono_object_unbox( x )
#define UNBOX_INT32( x )	*(int32_t*)		mono_object_unbox( x )
#define UNBOX_INT16( x )	*(int16_t*)		mono_object_unbox( x )
#define UNBOX_INT8( x )		*(int8_t*)		mono_object_unbox( x )
#define UNBOX_UINT64( x )	*(uint64_t*)	mono_object_unbox( x )
#define UNBOX_UINT32( x )	*(uint32_t*)	mono_object_unbox( x )
#define UNBOX_UINT16( x )	*(uint16_t*)	mono_object_unbox( x )
#define UNBOX_UINT8( x )	*(uint8_t*)		mono_object_unbox( x )
#define UNBOX_BOOLEAN( x )	*(MonoBoolean*)	mono_object_unbox( x )
#define UNBOX_CHAR( x )		(CharType*)		mono_object_unbox( x )
#define UNBOX_PTR( x )						mono_object_unbox( x )

#define BOX_DOUBLE( x )		mono_value_box(GDMONO_DOMAIN, mono_get_double_class(),	&x)
#define BOX_FLOAT( x )		mono_value_box(GDMONO_DOMAIN, CACHED_CLASS_RAW(float),	&x)
#define BOX_INT64( x )		mono_value_box(GDMONO_DOMAIN, mono_get_int64_class(),	&x)
#define BOX_INT32( x )		mono_value_box(GDMONO_DOMAIN, CACHED_CLASS_RAW(int32_t),	&x)
#define BOX_INT16( x )		mono_value_box(GDMONO_DOMAIN, mono_get_int16_class(),	&x)
#define BOX_INT8( x )		mono_value_box(GDMONO_DOMAIN, mono_get_sbyte_class(),	&x)
#define BOX_UINT64( x )		mono_value_box(GDMONO_DOMAIN, mono_get_uint64_class(),	&x)
#define BOX_UINT32( x )		mono_value_box(GDMONO_DOMAIN, mono_get_uint32_class(),	&x)
#define BOX_UINT16( x )		mono_value_box(GDMONO_DOMAIN, mono_get_uint16_class(),	&x)
#define BOX_UINT8( x )		mono_value_box(GDMONO_DOMAIN, CACHED_CLASS_RAW(uint8_t),	&x)
#define BOX_BOOLEAN( x )	mono_value_box(GDMONO_DOMAIN, CACHED_CLASS_RAW(double),	&x)
#define BOX_CHAR( x )		mono_value_box(GDMONO_DOMAIN, mono_get_char_class(),	&x)
#define BOX_PTR( x )		mono_value_box(GDMONO_DOMAIN, mono_get_intptr_class(),	x)

// String

String mono_to_utf8_string(MonoString* p_mono_string);
String mono_to_utf16_string(MonoString* p_mono_string);

_FORCE_INLINE_ String mono_string_to_godot(MonoString* p_mono_string)
{
	if (sizeof(CharType) == 2)
		return mono_to_utf16_string(p_mono_string);

	return mono_to_utf8_string(p_mono_string);
}

_FORCE_INLINE_ MonoString* mono_from_utf8_string(const String& p_string)
{
	return mono_string_new(mono_domain_get(), p_string.utf8().get_data());
}

_FORCE_INLINE_ MonoString* mono_from_utf16_string(const String& p_string)
{
	return mono_string_from_utf16((mono_unichar2*)p_string.c_str());
}

_FORCE_INLINE_ MonoString* mono_string_from_godot(const String& p_string)
{
	if (sizeof(CharType) == 2)
		return mono_from_utf16_string(p_string);

	return mono_from_utf8_string(p_string);
}

// Variant

MonoObject* variant_to_mono_object(const Variant* p_var, const ManagedType& p_type);
MonoObject* variant_to_mono_object(const Variant* p_var);

_FORCE_INLINE_ MonoObject* variant_to_mono_object(Variant p_var)
{
	return variant_to_mono_object(&p_var);
}

Variant mono_object_to_variant(MonoObject* p_obj);
Variant mono_object_to_variant(MonoObject* p_obj, const ManagedType& p_type);

// Array

MonoArray* Array_to_mono_array(const Array& p_array);
Array mono_array_to_Array(MonoArray* p_array);

// IntArray

MonoArray* IntArray_to_mono_array(const IntArray& p_array);
IntArray mono_array_to_IntArray(MonoArray* p_array);

// ByteArray

MonoArray* ByteArray_to_mono_array(const ByteArray& p_array);
ByteArray mono_array_to_ByteArray(MonoArray* p_array);

// RealArray

MonoArray* RealArray_to_mono_array(const RealArray& p_array);
RealArray mono_array_to_RealArray(MonoArray* p_array);

// StringArray

MonoArray* StringArray_to_mono_array(const StringArray& p_array);
StringArray mono_array_to_StringArray(MonoArray* p_array);

// ColorArray

MonoArray* ColorArray_to_mono_array(const ColorArray& p_array);
ColorArray mono_array_to_ColorArray(MonoArray* p_array);

// Vector2Array

MonoArray* Vector2Array_to_mono_array(const Vector2Array& p_array);
Vector2Array mono_array_to_Vector2Array(MonoArray* p_array);

// Vector3Array

MonoArray* Vector3Array_to_mono_array(const Vector3Array& p_array);
Vector3Array mono_array_to_Vector3Array(MonoArray* p_array);

// Dictionary

MonoObject* Dictionary_to_mono_object(const Dictionary& p_dict);
Dictionary mono_object_to_Dictionary(MonoObject* p_dict);

#ifdef YOLO_COPY
#define MARSHALLED_OUT(m_t, m_in, m_out) m_t* m_out = (m_t*)&m_in;
#define MARSHALLED_IN(m_t, m_in, m_out) m_t m_out = *reinterpret_cast<m_t*>(m_in);
#else
// Expects m_in to be a char* for InputEvent and float* for all the other the types

#define MARSHALLED_OUT(m_t, m_in, m_out) MARSHALLED_OUT_##m_t(m_in, m_out)
#define MARSHALLED_IN(m_t, m_in, m_out) MARSHALLED_IN_##m_t(m_in, m_out)

// Vector2

#define MARSHALLED_OUT_Vector2(m_in, m_out) real_t m_out[2] = { m_in.x, m_in.y };
#define MARSHALLED_IN_Vector2(m_in, m_out) Vector2 m_out(m_in[0], m_in[1]);

// Rect2

#define MARSHALLED_OUT_Rect2(m_in, m_out) real_t m_out[4] = { m_in.pos.x, m_in.pos.y, m_in.size.width, m_in.size.height };
#define MARSHALLED_IN_Rect2(m_in, m_out) Rect2 m_out(m_in[0], m_in[1], m_in[2], m_in[3]);

// Matrix32

#define MARSHALLED_OUT_Matrix32(m_in, m_out) real_t m_out[6] = { m_in[0].x, m_in[0].y, m_in[1].x, m_in[1].y, m_in[2].x, m_in[2].y };
#define MARSHALLED_IN_Matrix32(m_in, m_out) Matrix32 m_out(m_in[0], m_in[1], m_in[2], m_in[3], m_in[4], m_in[5]);

// Vector3

#define MARSHALLED_OUT_Vector3(m_in, m_out) real_t m_out[3] = { m_in.x, m_in.y, m_in.z };
#define MARSHALLED_IN_Vector3(m_in, m_out) Vector3 m_out(m_in[0], m_in[1], m_in[3]);

// Matrix3

#define MARSHALLED_OUT_Matrix3(m_in, m_out) real_t m_out[9] = { \
		m_in[0].x, m_in[0].y, m_in[0].z, \
		m_in[1].x, m_in[1].y, m_in[1].z, \
		m_in[2].x, m_in[2].y, m_in[2].z \
	};
#define MARSHALLED_IN_Matrix3(m_in, m_out) Matrix3 m_out(m_in[0], m_in[1], m_in[2], m_in[3], m_in[4], m_in[5], m_in[6], m_in[7], m_in[8]);

// Quat

#define MARSHALLED_OUT_Quat(m_in, m_out) real_t m_out[4] = { m_in.x, m_in.y, m_in.z, m_in.w };
#define MARSHALLED_IN_Quat(m_in, m_out) Quat m_out(m_in[0], m_in[1], m_in[2], m_in[3]);

// Transform

#define MARSHALLED_OUT_Transform(m_in, m_out) real_t m_out[12] = { \
		m_in.basis[0].x, m_in.basis[0].y, m_in.basis[0].z, \
		m_in.basis[1].x, m_in.basis[1].y, m_in.basis[1].z, \
		m_in.basis[2].x, m_in.basis[2].y, m_in.basis[2].z, \
		m_in.origin.x, m_in.origin.y, m_in.origin.z \
	};
#define MARSHALLED_IN_Transform(m_in, m_out) Transform m_out( \
		Matrix3(m_in[0], m_in[1], m_in[2], m_in[3], m_in[4], m_in[5], m_in[6], m_in[7], m_in[8]), \
		Vector3(m_in[9], m_in[10], m_in[11]) \
	);

// AABB

#define MARSHALLED_OUT_AABB(m_in, m_out) real_t m_out[6] = { m_in.pos.x, m_in.pos.y, m_in.pos.z, m_in.size.x, m_in.size.y, m_in.size.z };
#define MARSHALLED_IN_AABB(m_in, m_out) AABB m_out(Vector3(m_in[0], m_in[1], m_in[2]), Vector3(m_in[3], m_in[4], m_in[5]));

// Color

#define MARSHALLED_OUT_Color(m_in, m_out) real_t m_out[4] = { m_in.r, m_in.g, m_in.b, m_in.a };
#define MARSHALLED_IN_Color(m_in, m_out) Color m_out(m_in[0], m_in[1], m_in[2], m_in[3]);

// Plane

#define MARSHALLED_OUT_Plane(m_in, m_out) real_t m_out[4] = { m_in.normal.x, m_in.normal.y, m_in.normal.z, m_in.d };
#define MARSHALLED_IN_Plane(m_in, m_out) Plane m_out(m_in[0], m_in[1], m_in[2], m_in[3]);

// InputEvent

// OUT

#define _sizeof_InputEvent sizeof(InputEvent)
#define _sizeof_InputEventBase 12 /* ID, type, device */
#define _sizeof_InputModifierState 4 /* shift, alt, control, meta */
#define _sizeof_InputEventBaseMod const_sum<_sizeof_InputEventBase, _sizeof_InputModifierState>::value /* ID, type, device, InputModifierState */
#define _sizeof_InputEventMouse 24 /* InputModifierState, button_mask, x, y, global_x, global_y, pointer_index */
#define _sizeof_InputEventBaseMouse const_sum<_sizeof_InputEventBaseMod, _sizeof_InputEventMouse>::value /* ID, type, device, InputModifierState, InputEventMouse */

#ifdef APPLE_STYLE_KEYS
#define MARSHALLED_OUT_InputModifierState(m_in, m_out, m_var, m_idx) \
	m_out[m_idx] = m_in.m_var.mod.shift; \
	m_out[const_sum<m_idx, 1>::value] = m_in.m_var.mod.alt; \
	m_out[const_sum<m_idx, 2>::value] = m_in.m_var.mod.meta; \
	m_out[const_sum<m_idx, 3>::value] = m_in.m_var.mod.control;
#else
#define MARSHALLED_OUT_InputModifierState(m_in, m_out, m_var, m_idx) \
	m_out[m_idx] = m_in.m_var.mod.shift; \
	m_out[const_sum<m_idx, 1>::value] = m_in.m_var.mod.alt; \
	m_out[const_sum<m_idx, 2>::value] = m_in.m_var.mod.control; \
	m_out[const_sum<m_idx, 3>::value] = m_in.m_var.mod.meta;
#endif

#define MARSHALLED_OUT_InputEventMouse(m_in, m_out, m_var) \
	MARSHALLED_OUT_InputModifierState(m_in, m_out, m_var, _sizeof_InputEventBase) \
	*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBaseMod) = m_in.m_var.button_mask; \
	*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMod, 4>::value) = m_in.m_var.x; \
	*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMod, 8>::value) = m_in.m_var.y; \
	*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMod, 12>::value) = m_in.m_var.global_x; \
	*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMod, 16>::value) = m_in.m_var.global_y; \
	*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMod, 20>::value) = m_in.m_var.pointer_index;

#define MARSHALLED_OUT_InputEvent(m_in, m_out) char m_out[_sizeof_InputEvent]; \
	*reinterpret_cast<uint32_t*>(m_out + 0) = m_in.ID; \
	*reinterpret_cast<uint32_t*>(m_out + 4) = m_in.type; \
	*reinterpret_cast<uint32_t*>(m_out + 8) = m_in.device; \
	switch (m_in.type) { \
		case InputEvent::KEY: \
			MARSHALLED_OUT_InputModifierState(m_in, m_out, key, _sizeof_InputEventBase) \
			m_out[_sizeof_InputEventBaseMod] = m_in.key.pressed; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMod, 1>::value) = m_in.key.scancode; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMod, 5>::value) = m_in.key.unicode; \
			m_out[const_sum<_sizeof_InputEventBaseMod, 9>::value] = m_in.key.echo; \
			break; \
		case InputEvent::MOUSE_MOTION: \
			MARSHALLED_OUT_InputEventMouse(m_in, m_out, mouse_motion) \
			*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBaseMouse) = m_in.mouse_motion.relative_x; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBaseMouse, 4>::value) = m_in.mouse_motion.relative_y; \
			*reinterpret_cast<float*>(m_out + const_sum<_sizeof_InputEventBaseMouse, 8>::value) = m_in.mouse_motion.speed_x; \
			*reinterpret_cast<float*>(m_out + const_sum<_sizeof_InputEventBaseMouse, 12>::value) = m_in.mouse_motion.speed_y; \
			break; \
		case InputEvent::MOUSE_BUTTON: \
			MARSHALLED_OUT_InputEventMouse(m_in, m_out, mouse_button) \
			*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBaseMouse) = m_in.mouse_button.button_index; \
			m_out[const_sum<_sizeof_InputEventBaseMouse, 4>::value] = m_in.mouse_button.pressed; \
			m_out[const_sum<_sizeof_InputEventBaseMouse, 5>::value] = m_in.mouse_button.doubleclick; \
			break; \
		case InputEvent::JOYSTICK_MOTION: \
			*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBase) = m_in.joy_motion.axis; \
			*reinterpret_cast<float*>(m_out + const_sum<_sizeof_InputEventBase, 4>::value) = m_in.joy_motion.axis_value; \
			break; \
		case InputEvent::JOYSTICK_BUTTON: \
			*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBase) = m_in.joy_button.button_index; \
			m_out[const_sum<_sizeof_InputEventBase, 4>::value] = m_in.joy_button.pressed; \
			*reinterpret_cast<float*>(m_out + const_sum<_sizeof_InputEventBase, 5>::value) = m_in.joy_button.pressure; \
			break; \
		case InputEvent::SCREEN_TOUCH: \
			*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBase) = m_in.screen_touch.index; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBase, 4>::value) = m_in.screen_touch.x; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBase, 8>::value) = m_in.screen_touch.y; \
			m_out[const_sum<_sizeof_InputEventBase, 12>::value] = m_in.screen_touch.pressed; \
			break; \
		case InputEvent::SCREEN_DRAG: \
			*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBase) = m_in.screen_drag.index; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBase, 4>::value) = m_in.screen_drag.x; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBase, 8>::value) = m_in.screen_drag.y; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBase, 12>::value) = m_in.screen_drag.relative_x; \
			*reinterpret_cast<uint32_t*>(m_out + const_sum<_sizeof_InputEventBase, 16>::value) = m_in.screen_drag.relative_y; \
			*reinterpret_cast<float*>(m_out + const_sum<_sizeof_InputEventBase, 20>::value) = m_in.screen_drag.speed_x; \
			*reinterpret_cast<float*>(m_out + const_sum<_sizeof_InputEventBase, 24>::value) = m_in.screen_drag.speed_y; \
			break; \
		case InputEvent::ACTION: \
			*reinterpret_cast<uint32_t*>(m_out + _sizeof_InputEventBase) = m_in.action.action; \
			m_out[const_sum<_sizeof_InputEventBase, 4>::value] = m_in.action.pressed; \
			break; \
		default: break; \
	}

// IN

#define MARSHALLED_IN_InputEventMouse(m_in, m_out, m_var) MARSHALLED_IN_InputModifierState(m_in, m_out, m_var, _sizeof_InputEventBase) \
	m_out.m_var.button_mask = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBaseMod); \
	m_out.m_var.x = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBaseMod, 4>::value); \
	m_out.m_var.y = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBaseMod, 8>::value); \
	m_out.m_var.global_x = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBaseMod, 12>::value); \
	m_out.m_var.global_y = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBaseMod, 16>::value); \
	m_out.m_var.pointer_index = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBaseMod, 20>::value);

#ifdef APPLE_STYLE_KEYS
#define MARSHALLED_IN_InputModifierState(m_in, m_out, m_var, m_idx) \
	m_out.m_var.mod.shift = m_in[m_idx]; \
	m_out.m_var.mod.alt = m_in[const_sum<m_idx, 1>::value]; \
	m_out.m_var.mod.meta = m_in[const_sum<m_idx, 2>::value]; \
	m_out.m_var.mod.control = m_in[const_sum<m_idx, 3>::value];
#else
#define MARSHALLED_IN_InputModifierState(m_in, m_out, m_var, m_idx) \
	m_out.m_var.mod.shift = m_in[m_idx]; \
	m_out.m_var.mod.alt = m_in[const_sum<m_idx, 1>::value]; \
	m_out.m_var.mod.control = m_in[const_sum<m_idx, 2>::value]; \
	m_out.m_var.mod.meta = m_in[const_sum<m_idx, 3>::value];
#endif

#define MARSHALLED_IN_InputEvent(m_in, m_out) InputEvent m_out; \
	m_out.ID = *reinterpret_cast<uint32_t*>(m_in); \
	m_out.type = *reinterpret_cast<int*>(m_in + 4); \
	m_out.device = *reinterpret_cast<int*>(m_in + 8); \
	switch (m_out.type) { \
		case InputEvent::KEY: \
			MARSHALLED_IN_InputModifierState(m_in, m_out, key, _sizeof_InputEventBase) \
			m_out.key.pressed = m_in[_sizeof_InputEventBaseMod]; \
			m_out.key.scancode = *reinterpret_cast<uint32_t*>(m_in + const_sum<_sizeof_InputEventBaseMod, 1>::value); \
			m_out.key.unicode = *reinterpret_cast<uint32_t*>(m_in + const_sum<_sizeof_InputEventBaseMod, 5>::value); \
			m_out.key.echo = m_in[const_sum<_sizeof_InputEventBaseMod, 9>::value]; \
			break; \
		case InputEvent::MOUSE_MOTION: \
			MARSHALLED_IN_InputEventMouse(m_in, m_out, mouse_motion) \
			m_out.mouse_motion.relative_x = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBaseMouse); \
			m_out.mouse_motion.relative_y = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBaseMouse, 4>::value); \
			m_out.mouse_motion.speed_x = *reinterpret_cast<float*>(m_in + const_sum<_sizeof_InputEventBaseMouse, 8>::value); \
			m_out.mouse_motion.speed_y = *reinterpret_cast<float*>(m_in + const_sum<_sizeof_InputEventBaseMouse, 12>::value); \
			break; \
		case InputEvent::MOUSE_BUTTON: \
			MARSHALLED_IN_InputEventMouse(m_in, m_out, mouse_button) \
			m_out.mouse_button.button_index = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBaseMouse); \
			m_out.mouse_button.pressed = m_in[const_sum<_sizeof_InputEventBaseMouse, 4>::value]; \
			m_out.mouse_button.doubleclick = m_in[const_sum<_sizeof_InputEventBaseMouse, 5>::value]; \
			break; \
		case InputEvent::JOYSTICK_MOTION: \
			m_out.joy_motion.axis = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBase); \
			m_out.joy_motion.axis_value = *reinterpret_cast<float*>(m_in + const_sum<_sizeof_InputEventBase, 4>::value); \
			break; \
		case InputEvent::JOYSTICK_BUTTON: \
			m_out.joy_button.button_index = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBase); \
			m_out.joy_button.pressed = m_in[const_sum<_sizeof_InputEventBase, 4>::value]; \
			m_out.joy_button.pressure = *reinterpret_cast<float*>(m_in + const_sum<_sizeof_InputEventBase, 5>::value); \
			break; \
		case InputEvent::SCREEN_TOUCH: \
			m_out.screen_touch.index = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBase); \
			m_out.screen_touch.x = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBase, 4>::value); \
			m_out.screen_touch.y = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBase, 8>::value); \
			m_out.screen_touch.pressed = m_in[const_sum<_sizeof_InputEventBase, 12>::value]; \
			break; \
		case InputEvent::SCREEN_DRAG: \
			m_out.screen_drag.index = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBase); \
			m_out.screen_drag.x = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBase, 4>::value); \
			m_out.screen_drag.y = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBase, 8>::value); \
			m_out.screen_drag.relative_x = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBase, 12>::value); \
			m_out.screen_drag.relative_y = *reinterpret_cast<int*>(m_in + const_sum<_sizeof_InputEventBase, 16>::value); \
			m_out.screen_drag.speed_x = *reinterpret_cast<float*>(m_in + const_sum<_sizeof_InputEventBase, 20>::value); \
			m_out.screen_drag.speed_y = *reinterpret_cast<float*>(m_in + const_sum<_sizeof_InputEventBase, 24>::value); \
			break; \
		case InputEvent::ACTION: \
			m_out.action.action = *reinterpret_cast<int*>(m_in + _sizeof_InputEventBase); \
			m_out.action.pressed = m_in[const_sum<_sizeof_InputEventBase, 4>::value]; \
			break; \
		default: break; \
	}
#endif

}

#endif // GDMONOMARSHAL_H
