#ifndef GD_MONO_INTERNALS_H
#define GD_MONO_INTERNALS_H

#include <mono/jit/jit.h>

#include "core/object.h"

namespace GDMonoInternals {

void tie_managed_to_unmanaged(MonoObject *managed, Object *unmanaged);
}

#endif // GD_MONO_INTERNALS_H
