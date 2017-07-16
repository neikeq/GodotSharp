#include "signal_awaiter_utils.h"

#include "mono_wrapper/gd_mono_utils.h"

namespace SignalAwaiterUtils {

Error connect_signal_awaiter(Object *p_source, const String &p_signal, Object *p_target, MonoObject *p_awaiter) {

	ERR_FAIL_NULL_V(p_source, ERR_INVALID_DATA);
	ERR_FAIL_NULL_V(p_target, ERR_INVALID_DATA);

	uint32_t awaiter_handle = MonoGCHandle::make_strong_handle(p_awaiter);
	Ref<SignalAwaiterHandle> sa_con = memnew(SignalAwaiterHandle(awaiter_handle));
	Vector<Variant> binds;
	binds.push_back(sa_con);
	Error err = p_source->connect(p_signal, p_target, "_AwaitedSignalCallback", binds, Object::CONNECT_ONESHOT);

	if (err != OK) {
		// set it as completed to prevent it from calling the failure callback when deleted
		// the awaiter will be aware of the failure by checking the returned error
		sa_con->set_completed(true);
	}

	return err;
}
}

SignalAwaiterHandle::SignalAwaiterHandle(uint32_t p_handle)
	: MonoGCHandle(p_handle) {
}

SignalAwaiterHandle::~SignalAwaiterHandle() {
	if (!completed) {
		GDMonoUtils::SignalAwaiter_FailureCallback thunk = CACHED_METHOD_THUNK(SignalAwaiter, FailureCallback);

		MonoObject *awaiter = get_target();

		if (awaiter) {
			MonoObject *exc = NULL;
			thunk(awaiter, &exc);

			if (exc) {
				mono_print_unhandled_exception(exc);
			}
		}
	}
}
