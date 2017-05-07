#include "il_opcode_parser.h"

#include <mono/metadata/opcodes.h>

#include "mono_wrapper/gd_mono_class.h"
#include "mono_wrapper/gd_mono_marshal.h"

static _FORCE_INLINE_ uint8_t read8(const unsigned char **p_ptr) {
	uint8_t ret = *reinterpret_cast<const uint8_t *>(*p_ptr);
	*p_ptr += 1;
	return ret;
}

static _FORCE_INLINE_ uint16_t read16(const unsigned char **p_ptr) {
	uint16_t ret = *reinterpret_cast<const uint16_t *>(*p_ptr);
	*p_ptr += 2;
	return ret;
}

static _FORCE_INLINE_ uint32_t read32(const unsigned char **p_ptr) {
	uint32_t ret = *reinterpret_cast<const uint32_t *>(*p_ptr);
	*p_ptr += 4;
	return ret;
}

static _FORCE_INLINE_ uint64_t read64(const unsigned char **p_ptr) {
	uint64_t ret = *reinterpret_cast<const uint64_t *>(*p_ptr);
	*p_ptr += 8;
	return ret;
}

static _FORCE_INLINE_ mono_float readr4(const unsigned char **p_ptr) {
	mono_float ret;
	ret._uint32 = *reinterpret_cast<const uint32_t *>(*p_ptr);
	*p_ptr += 4;
	return ret;
}

static _FORCE_INLINE_ mono_double readr8(const unsigned char **p_ptr) {
	mono_double ret;
	ret._uint64 = *reinterpret_cast<const uint64_t *>(*p_ptr);
	*p_ptr += 8;
	return ret;
}

void ILOpCodeParser::_parse_block(const unsigned char *p_il_code, uint32_t p_code_size) {

	Vector<MonoObject *> data;
	MonoObject *tmp_obj;

	MonoImage *class_image = target_class->get_assembly()->get_image();

	const unsigned char *ip = p_il_code;
	const unsigned char *il_code_end = ip + p_code_size;

	while (ip < il_code_end) {

		uint32_t i = *ip;

		if (*ip == 0xfe) {
			ip++;
			i = *ip + 256;
		}

		ip++;

		const MonoOpcode *opcode = &mono_opcodes[i];

		switch (opcode->argument) {
			case MonoInlineNone: {
				switch (i) {
					case MONO_CEE_LDC_I4_M1:
						data.push_back(BOX_INT32_rvalue(tmp_obj, -1));
						break;
					case MONO_CEE_LDC_I4_0:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 0));
						break;
					case MONO_CEE_LDC_I4_1:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 1));
						break;
					case MONO_CEE_LDC_I4_2:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 2));
						break;
					case MONO_CEE_LDC_I4_3:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 3));
						break;
					case MONO_CEE_LDC_I4_4:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 4));
						break;
					case MONO_CEE_LDC_I4_5:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 5));
						break;
					case MONO_CEE_LDC_I4_6:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 6));
						break;
					case MONO_CEE_LDC_I4_7:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 7));
						break;
					case MONO_CEE_LDC_I4_8:
						data.push_back(BOX_INT32_rvalue(tmp_obj, 8));
						break;
					default: break;
				}
			} break;
			case MonoInlineI: {
				data.push_back(BOX_UINT32_rvalue(tmp_obj, read32(&ip)));
			} break;
			case MonoInlineType: {
				uint32_t token = read32(&ip);
				switch (i) {
					case MONO_CEE_NEWARR: {
						// data: index, value, index, value, ...
						MonoClass *klass = mono_class_get(class_image, token);
						WARN_PRINTS(String() + "newarr Class name: " + mono_class_get_name(klass));
					} break;
					case MONO_CEE_INITOBJ: {
						// inits the fields of a value type to the default value
						// e.g.: new Vector() parameterless
						MonoClass *klass = mono_class_get(class_image, token);
						WARN_PRINTS(String() + "initobj Class name: " + mono_class_get_name(klass));
					} break;
					default: break;
				}
				data.clear();
			} break;
			case MonoInlineTok: {
				data.clear();
				ip += 4;
			} break;
			case MonoInlineSig: {
				data.clear();
				ip += 4;
			} break;
			case MonoInlineField: {
				uint32_t token = read32(&ip);
				MonoClass *klass = NULL;
				MonoClassField *field = mono_field_from_token(class_image, token, &klass, NULL); //mono_class_get_field(target_class->get_raw(), token);
				if (field) {
					switch (i) {
						case MONO_CEE_STFLD: {
							if (klass == target_class->get_raw()) {
								const char *name = mono_field_get_name(field);
								String values_str;
								for (int i = 0; i < data.size(); i++) {
									if (i != 0)
										values_str += " ";
									MonoObject *exc;
									MonoString *monostr = mono_object_to_string(data[i], &exc);
									ERR_CONTINUE(exc);
									values_str += GDMonoMarshal::mono_string_to_godot(monostr);
								}
								WARN_PRINTS(String() + "(MonoObject) Field: " + name + ", Value: " + values_str);
								Array var_values;
								for (int i = 0; i < data.size(); i++) {
									var_values.push_back(GDMonoMarshal::mono_object_to_variant(data[i]));
								}
								fields.set(String(name), var_values);
							}
						} break;
						case MONO_CEE_LDSFLD: {
							// Should we support default values with this?
							// The static field can change its value, but defvals are supposed to be... constant?
							WARN_PRINTS(String() + "ldsfld Field name: " + mono_field_get_name(field));
							//mono_field_static_get_value();
						} break;
						default:
							break;
					}
				} // else {
				// ERR_PRINT("!field");
				//}
				data.clear();
			} break;
			case MonoInlineString: {
				uint32_t token_idx = mono_metadata_token_index(read32(&ip));
				const char *str = mono_metadata_user_string(class_image, token_idx);
				int len = mono_metadata_decode_blob_size(str, (const char **)&str);
				len = (len >> 1);
				if (len <= 15) {
					mono_unichar2 chars[len + 1];
					memcpy(chars, str, len * sizeof(mono_unichar2));
					chars[len] = 0;
					data.push_back((MonoObject *)mono_string_from_utf16(chars));
				} else {
					mono_unichar2 *chars = memnew_arr(mono_unichar2, len + 1);
					memcpy(chars, str, len * sizeof(mono_unichar2));
					chars[len] = 0;
					data.push_back((MonoObject *)mono_string_from_utf16(chars));
					memdelete_arr(chars);
				}
			} break;
			case MonoShortInlineR: {
				data.push_back(BOX_MONO_FLOAT_rvalue(tmp_obj, readr4(&ip)));
			} break;
			case MonoInlineBrTarget: {
				data.clear();
				ip += 4;
			} break;
			case MonoInlineVar: {
				data.push_back(BOX_UINT16_rvalue(tmp_obj, read16(&ip)));
			} break;
			case MonoShortInlineVar: {
				data.push_back(BOX_UINT8_rvalue(tmp_obj, read8(&ip)));
			} break;
			case MonoShortInlineI: {
				data.push_back(BOX_INT8_rvalue(tmp_obj, read8(&ip)));
			} break;
			case MonoShortInlineBrTarget: {
				data.clear();
				ip += 2;
			} break;
			case MonoInlineSwitch: {
				data.clear();
				uint32_t n = read32(&ip);
				ip += 4 * n;
				break;
			}
			case MonoInlineR: {
				data.push_back(BOX_MONO_DOUBLE_rvalue(tmp_obj, readr8(&ip)));
			} break;
			case MonoInlineI8: {
				data.push_back(BOX_UINT64_rvalue(tmp_obj, read64(&ip)));
			} break;
			case MonoInlineMethod: {
				if (i == MONO_CEE_NEWOBJ) {
					MonoMethod *newobj_method = mono_get_method(class_image, read32(&ip), NULL);
					MonoClass *klass = mono_method_get_class(newobj_method);
					const char *class_name = mono_class_get_name(klass);
					WARN_PRINTS(String() + "newobj Class name: " + class_name);
				} else {
					data.clear();
				}
			} break;
			default:
				ERR_EXPLAIN("Unexpected OpCode argument");
				ERR_FAIL();
		}
	}
}

void ILOpCodeParser::parse() {
	void *iter = NULL;
	MonoMethod *raw_method = NULL;
	while ((raw_method = mono_class_get_methods(target_class->get_raw(), &iter)) != NULL) {

		const char *name = mono_method_get_name(raw_method);

		if (strcmp(name, ".ctor") == 0) {
			MonoError error;
			MonoMethodHeader *header = mono_method_get_header_checked(raw_method, &error);

			if (!mono_error_ok(&error)) {
				ERR_PRINT("Failed to get method header!");
				continue;
			}

			uint32_t code_size;
			const unsigned char *code = mono_method_header_get_code(header, &code_size, NULL);
			_parse_block(code, code_size);
		}
	}
	const String *k = NULL;
	while ((k = fields.next(k))) {
		Variant defval = fields.get(*k);
		WARN_PRINTS(String() + "(Variant) Field: " + *k + ", Value: " + defval.operator String());
	}
}

ILOpCodeParser::ILOpCodeParser(GDMonoClass *p_target_class) {
	target_class = p_target_class;
}
