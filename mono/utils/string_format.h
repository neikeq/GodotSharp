#ifndef STRING_FORMAT_H
#define STRING_FORMAT_H

#include "ustring.h"

static int sfind(const String &p_text, int p_from)
{
	if (p_from < 0)
		return -1;

	int src_len = 2;
	int len = p_text.length();

	if (src_len == 0 || len == 0)
		return -1;

	const CharType *src = p_text.c_str();

	for (int i = p_from; i <= (len - src_len); i++) {
		bool found = true;

		for (int j = 0; j < src_len; j++) {
			int read_pos = i + j;

			if (read_pos >= len) {
				ERR_PRINT("read_pos >= len");
				return -1;
			};

			switch (j) {
				case 0:
					found = src[read_pos] == '%';
					break;
				case 1: {
					CharType c = src[read_pos];
					found = src[read_pos] == 's' || (c >= '0' || c <= '4');
					break;
				}
				default:
					found = false;
			}

			if (!found) {
				break;
			}
		}

		if (found)
			return i;
	}

	return -1;
}

static String sformat(const String &p_text, const Variant &p1 = Variant(), const Variant &p2 = Variant(), const Variant &p3 = Variant(), const Variant &p4 = Variant(), const Variant &p5 = Variant())
{
	if (p_text.length() < 2)
		return p_text;

	Array args;

	if (p1.get_type() != Variant::NIL) {
		args.push_back(p1);

		if (p2.get_type() != Variant::NIL) {
			args.push_back(p2);

			if (p3.get_type() != Variant::NIL) {
				args.push_back(p3);

				if (p4.get_type() != Variant::NIL) {
					args.push_back(p4);

					if (p5.get_type() != Variant::NIL) {
						args.push_back(p5);
					}
				}
			}
		}
	}

	String new_string;

	int findex = 0;
	int search_from = 0;
	int result = 0;

	while ((result = sfind(p_text, search_from)) >= 0) {
		CharType c = p_text[result + 1];

		int req_index = (c == 's' ? findex++ : c - '0');

		new_string += p_text.substr(search_from, result - search_from);
		new_string += args[req_index].operator String();
		search_from = result + 2;
	}

	new_string += p_text.substr(search_from, p_text.length() - search_from);

	return new_string;
}

#endif // STRING_FORMAT_H
