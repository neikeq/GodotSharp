/*************************************************************************/
/*  il_opcode_parser.h                                                   */
/*************************************************************************/
/*                       This file is part of:                           */
/*                           GODOT ENGINE                                */
/*                      https://godotengine.org                          */
/*************************************************************************/
/* Copyright (c) 2007-2017 Juan Linietsky, Ariel Manzur.                 */
/* Copyright (c) 2014-2017 Godot Engine contributors (cf. AUTHORS.md)    */
/*                                                                       */
/* Permission is hereby granted, free of charge, to any person obtaining */
/* a copy of this software and associated documentation files (the       */
/* "Software"), to deal in the Software without restriction, including   */
/* without limitation the rights to use, copy, modify, merge, publish,   */
/* distribute, sublicense, and/or sell copies of the Software, and to    */
/* permit persons to whom the Software is furnished to do so, subject to */
/* the following conditions:                                             */
/*                                                                       */
/* The above copyright notice and this permission notice shall be        */
/* included in all copies or substantial portions of the Software.       */
/*                                                                       */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.*/
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY  */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                */
/*************************************************************************/
#ifndef IL_OPCODE_PARSER_H
#define IL_OPCODE_PARSER_H

#include "hash_map.h"
#include "ustring.h"

#include "mono_gd/gd_mono.h"

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
