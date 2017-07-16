#ifndef SIGNAL_AWAITER_UTILS_H
#define SIGNAL_AWAITER_UTILS_H

#include "mono_gc_handle.h"
#include "reference.h"

namespace SignalAwaiterUtils {

Error connect_signal_awaiter(Object *p_source, const String &p_signal, Object *p_target, MonoObject *p_awaiter);
}

class SignalAwaiterHandle : public MonoGCHandle {

	bool completed;

public:
	_FORCE_INLINE_ bool is_completed() { return completed; }
	_FORCE_INLINE_ void set_completed(bool p_completed) { completed = p_completed; }

	SignalAwaiterHandle(uint32_t p_handle);
	~SignalAwaiterHandle();
};

#endif // SIGNAL_AWAITER_UTILS_H
