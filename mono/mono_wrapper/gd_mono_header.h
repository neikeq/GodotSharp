#ifndef GD_MONO_HEADER_H
#define GD_MONO_HEADER_H

class GDMonoUtils;
class GDMonoAssembly;
class GDMonoClass;
class GDMonoMethod;
class GDMonoField;

struct ManagedType
{
	int type_encoding;
	GDMonoClass* type_class;

	ManagedType()
	{
		type_class = 0;
	}
};

#endif // GD_MONO_HEADER_H
