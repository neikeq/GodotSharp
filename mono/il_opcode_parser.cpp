#include "il_opcode_parser.h"

#include <mono/metadata/opcodes.h>
#include <mono/metadata/tokentype.h>

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

void ILOpCodeParser::_parse_block(const unsigned char *p_il_code, uint32_t p_code_size, const Locals &p_locals) {

	MonoImage *image = target_class->get_assembly()->get_image();

	MonoObject *locals[p_locals.count + 1];

	if (p_locals.count && p_locals.init_to_zero) {
		// alright champs, let's do this
		int max_size = 0;
		for (uint32_t i = 0; i < p_locals.count; i++) {
			int size = mono_type_size(p_locals.types[i], NULL);
			if (size > max_size)
				max_size = size;
		}

		uint8_t tmp[max_size];
		zeromem(tmp, sizeof(tmp));

		for (uint32_t i = 0; i < p_locals.count; i++) {
			if (mono_type_is_reference(p_locals.types[i])) {
				locals[i] = NULL;
			} else {
				MonoType *type = p_locals.types[i];
				locals[i] = mono_value_box(SCRIPT_DOMAIN, mono_type_get_class(type), tmp);
			}
		}
	}

	List<MonoObject *> eval_stack;

	const unsigned char *ip = p_il_code;
	const unsigned char *il_code_end = ip + p_code_size;

	while (ip < il_code_end) {

		uint32_t i = *ip;

		if (i == 0xfe) {
			ip++;
			i = *ip + 256;
		}

		ip++;

		const MonoOpcode *opcode = &mono_opcodes[i];

		switch (opcode->argument) {
			case MonoInlineNone: {
				switch (i) {
					case MONO_CEE_LDC_I4_M1: {
						int32_t val = -1;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_0: {
						int32_t val = 0;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_1: {
						int32_t val = 1;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_2: {
						int32_t val = 2;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_3: {
						int32_t val = 3;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_4: {
						int32_t val = 4;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_5: {
						int32_t val = 5;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_6: {
						int32_t val = 6;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_7: {
						int32_t val = 7;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDC_I4_8: {
						int32_t val = 8;
						eval_stack.push_back(BOX_INT32(val));
					} break;
					case MONO_CEE_LDNULL: {
						eval_stack.push_back(NULL);
					} break;
					default: {
					} break;
				}
			} break;
			case MonoInlineType: {
				uint32_t token = read32(&ip);
				switch (i) {
					case MONO_CEE_NEWARR: {
						// data: index, value, index, value, ...
						MonoClass *klass = mono_class_get(image, token);
						WARN_PRINTS(String() + "newarr Class name: " + mono_class_get_name(klass));
					} break;
					case MONO_CEE_INITOBJ: {
						// inits the fields of a value type to the default value
						// e.g.: new Vector() parameterless
						MonoClass *klass = mono_class_get(image, token);
						WARN_PRINTS(String() + "initobj Class name: " + mono_class_get_name(klass));
					} break;
					default: break;
				}
				eval_stack.clear();
			} break;
			case MonoInlineTok: {
				// MONO_CEE_LDTOKEN
				uint32_t token = read32(&ip);
				uint32_t token_code = mono_metadata_token_code(token);
				if (token_code == MONO_TOKEN_FIELD_DEF) {
					MonoClass *klass = NULL;
					MonoClassField *field = mono_field_from_token(image, token, &klass, NULL);
					const char *field_data = mono_field_get_data(field); // rva
					// TODO
				}
				eval_stack.clear();
				//ip += 4;
			} break;
			case MonoInlineSig: {
				eval_stack.clear();
				ip += 4;
			} break;
			case MonoInlineField: {
				uint32_t token = read32(&ip);
				MonoClass *klass = NULL;
				MonoClassField *field = mono_field_from_token(image, token, &klass, NULL); //mono_class_get_field(target_class->get_raw(), token);
				if (field) {
					switch (i) {
						case MONO_CEE_STFLD: {
							if (klass == target_class->get_raw()) {
								const char *name = mono_field_get_name(field);
								String values_str;
								for (List<MonoObject *>::Element *E = eval_stack.front(); E; E = E->next()) {
									if (E != eval_stack.front())
										values_str += " ";
									MonoObject *exc = NULL;
									MonoString *monostr = mono_object_to_string(E->get(), &exc);
									ERR_CONTINUE(exc);
									values_str += GDMonoMarshal::mono_string_to_godot(monostr);
								}
								WARN_PRINTS(String() + "(MonoObject) Field: " + name + ", Value: " + values_str);
								Array var_values;
								for (List<MonoObject *>::Element *E = eval_stack.front(); E; E = E->next()) {
									var_values.push_back(GDMonoMarshal::mono_object_to_variant(E->get()));
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
				eval_stack.clear();
			} break;
			case MonoInlineMethod: {
				uint32_t token = read32(&ip);

				if (i == MONO_CEE_NEWOBJ) {
					// `new ReferenceType()`

					MonoMethod *method = mono_get_method(image, token, NULL);
					MonoClass *klass = mono_method_get_class(method);
					const char *class_name = mono_class_get_name(klass);
					WARN_PRINTS(String() + "newobj Class name: " + class_name);
					MonoMethodSignature *sig = mono_method_signature(method);
					char *desc = mono_signature_get_desc(sig, false);
					WARN_PRINTS(String() + "newobj Method signature: " + desc);
					mono_metadata_free_method_signature(sig);

				} else if (i == MONO_CEE_CALL) {

					MonoMethod *method = mono_get_method(image, token, NULL);
					const char *method_name = mono_method_get_name(method);

					if (strcmp(method_name, "InitializeArray") == 0) {

						// TODO

					} else if (strcmp(method_name, ".ctor") == 0) {
						// must be a call to the base .ctor
						// which means the end of the auto-generated part of our .ctor
						// so we are done analyzing
						return;
					}
					eval_stack.clear();
				}
			} break;
			case MonoInlineString: {
				// MONO_CEE_LDSTR
				uint32_t token_idx = mono_metadata_token_index(read32(&ip));
				const char *str = mono_metadata_user_string(image, token_idx);
				int len = mono_metadata_decode_blob_size(str, (const char **)&str);
				len = (len >> 1);
				if (len <= 15) {
					mono_unichar2 chars[len + 1];
					memcpy(chars, str, len * sizeof(mono_unichar2));
					chars[len] = 0;
					MonoString *val = mono_string_from_utf16(chars);
					eval_stack.push_back((MonoObject *)val);
				} else {
					mono_unichar2 *chars = memnew_arr(mono_unichar2, len + 1);
					memcpy(chars, str, len * sizeof(mono_unichar2));
					chars[len] = 0;
					MonoString *val = mono_string_from_utf16(chars);
					eval_stack.push_back((MonoObject *)val);
					memdelete_arr(chars);
				}
			} break;
			case MonoShortInlineR: {
				// MONO_CEE_LDC_R4
				mono_float val = readr4(&ip);
				eval_stack.push_back(BOX_FLOAT(val));
			} break;
			case MonoInlineR: {
				// MONO_CEE_LDC_R8
				mono_double val = readr8(&ip);
				eval_stack.push_back(BOX_DOUBLE(val));
			} break;
			case MonoShortInlineVar: {
				uint8_t val = read8(&ip);
				eval_stack.push_back(BOX_UINT8(val));
			} break;
			case MonoInlineVar: {
				uint16_t val = read16(&ip);
				eval_stack.push_back(BOX_UINT16(val));
			} break;
			case MonoShortInlineI: {
				int8_t val = read8(&ip);
				eval_stack.push_back(BOX_INT8(val));
			} break;
			case MonoInlineI: {
				uint32_t val = read32(&ip);
				eval_stack.push_back(BOX_UINT32(val));
			} break;
			case MonoInlineI8: {
				// MONO_CEE_LDC_I8
				uint64_t val = read64(&ip);
				eval_stack.push_back(BOX_UINT64(val));
			} break;
			case MonoShortInlineBrTarget: {
				eval_stack.clear();
				ip += 2;
			} break;
			case MonoInlineBrTarget: {
				eval_stack.clear();
				ip += 4;
			} break;
			case MonoInlineSwitch: {
				// MONO_CEE_SWITCH
				eval_stack.clear();
				uint32_t n = read32(&ip);
				ip += 4 * n;
				break;
			}
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

			if (!code_size)
				continue;

			Locals locals;
			locals.types = mono_method_header_get_locals(header, &locals.count, &locals.init_to_zero);

			_parse_block(code, code_size, locals);
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
