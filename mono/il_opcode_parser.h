#ifndef IL_OPCODE_PARSER_H
#define IL_OPCODE_PARSER_H

#include "hash_map.h"
#include "ustring.h"

#include "mono_wrapper/gd_mono.h"

class ILOpCodeParser {

	struct Locals {
		MonoType **types;
		uint32_t count;
		mono_bool init_to_zero;

		Locals() {
			types = NULL;
			count = 0;
			init_to_zero = false;
		}
	};

	// if a variable is missing, init to default. e.g:
	// int varint1 = 0; Object varObj1 = null;
	// int varint2; Object varObj2;
	// the compiler generates il in the .ctor for the first two fields
	// the last two have the same initial value, but the compiler won't generate the il
	HashMap<String, Variant> fields;
	GDMonoClass *target_class;

	void _parse_block(const unsigned char *p_il_code, uint32_t p_code_size, const Locals &p_locals);

public:
	void parse();

	ILOpCodeParser(GDMonoClass *p_class);
};

#endif // IL_OPCODE_PARSER_H
