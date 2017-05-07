#ifndef IL_OPCODE_PARSER_H
#define IL_OPCODE_PARSER_H

#include "hash_map.h"
#include "ustring.h"

#include "mono_wrapper/gd_mono.h"

class ILOpCodeParser {

	HashMap<String, Variant> fields;
	GDMonoClass *target_class;

	void _parse_block(const unsigned char* p_il_code, uint32_t p_code_size);

public:
	void parse();

	ILOpCodeParser(GDMonoClass *p_class);
};

#endif // IL_OPCODE_PARSER_H
