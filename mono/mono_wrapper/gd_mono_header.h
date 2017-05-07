/**********************************************************************************/
/* gd_mono_header.h                                                               */
/**********************************************************************************/
/* The MIT License (MIT)                                                          */
/*                                                                                */
/* Copyright (c) 2016 Ignacio Etcheverry                                          */
/*                                                                                */
/* Permission is hereby granted, free of charge, to any person obtaining a copy   */
/* of this software and associated documentation files (the "Software"), to deal  */
/* in the Software without restriction, including without limitation the rights   */
/* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      */
/* copies of the Software, and to permit persons to whom the Software is          */
/* furnished to do so, subject to the following conditions:                       */
/*                                                                                */
/* The above copyright notice and this permission notice shall be included in all */
/* copies or substantial portions of the Software.                                */
/*                                                                                */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     */
/* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       */
/* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    */
/* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         */
/* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  */
/* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  */
/* SOFTWARE.                                                                      */
/**********************************************************************************/
#ifndef GD_MONO_HEADER_H
#define GD_MONO_HEADER_H

#include "int_types.h"

class GDMonoAssembly;
class GDMonoClass;
class GDMonoMethod;
class GDMonoField;

struct ManagedType {
	int type_encoding;
	GDMonoClass *type_class;

	ManagedType() {
		type_class = 0;
	}
};

typedef union {
	uint32_t _uint32;
	float _float;
} mono_float;

typedef union {
	uint64_t _uint64;
	float _double;
} mono_double;

#endif // GD_MONO_HEADER_H
