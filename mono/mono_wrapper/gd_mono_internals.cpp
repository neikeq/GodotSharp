#include "gd_mono_internals.h"

#include "../csharp_script.h"
#include "../mono_gc_handle.h"
#include "gd_mono_utils.h"

namespace GDMonoInternals {

void tie_managed_to_unmanaged(MonoObject *managed, Object *unmanaged) {

	// This method should not fail

	CRASH_COND(!unmanaged);

	// All mono objects created from the managed world (e.g.: `new Player()`)
	// need to have a CSharpScript in order for their methods to be callable from the unmanaged side

	Reference *ref = Object::cast_to<Reference>(unmanaged);

	GDMonoClass *klass = GDMonoUtils::get_object_class(managed);

	CRASH_COND(!klass);

	Ref<MonoGCHandle> gchandle = ref ? MonoGCHandle::create_weak(managed) :
									   MonoGCHandle::create_strong(managed);

	Ref<CSharpScript> script = CSharpScript::create_for_managed_type(klass);

	CRASH_COND(script.is_null());

	ScriptInstance *si = CSharpInstance::create_for_managed_type(unmanaged, script.ptr(), gchandle);

	unmanaged->set_script_and_instance(script.get_ref_ptr(), si);

	if (ref) {
		// Unsafe refcount decrement here! We assume this method was called
		// on a newly created Reference with refcount 1
		ref->unreference();

		CRASH_COND(ref->reference_get_count() != 0);
	}

	return;
}
}
