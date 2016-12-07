using System;

namespace GodotEngine
{
    /// <summary>
    /// Node useful for animations with unknown start and end points, procedural animations, making one node follow another, and other simple behavior.
    /// Because it is easy to get it wrong, here is a quick usage example:
    /// [codeblock]
    /// var tween = get_node("Tween")
    /// tween.interpolate_property(get_node("Node2D_to_move"), "transform/pos", Vector2(0,0), Vector2(100,100), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
    /// tween.start()
    /// [/codeblock]
    /// Some of the methods of this class require a property name. You can get the property name by hovering over the property in the inspector of the editor.
    /// Many of the methods accept [code]trans_type[/code] and [code]ease_type[/code]. The first accepts an TRANS_* constant, and refers to the way the timing of the animation is handled (you might want to see [code]http://easings.net/[/code] for some examples). The second accepts an EASE_* constant, and controls the where [code]trans_type[/code] is applied to the interpolation (in the begining, the end, or both). If you don't know which transision and easing to pick, you can try different TRANS_* constants with EASE_IN_OUT, and use the one that looks best.
    /// </summary>
    public class Tween : Node
    {
        /// <summary>
        /// The [Tween] should use [code]_fixed_process[/code] for timekeeping when this is enabled.
        /// </summary>
        public const int TWEEN_PROCESS_FIXED = 0;
        /// <summary>
        /// The [Tween] should use [code]_process[/code] for timekeeping when this is enabled (default).
        /// </summary>
        public const int TWEEN_PROCESS_IDLE = 1;
        /// <summary>
        /// Means that the animation is interpolated linearly.
        /// </summary>
        public const int TRANS_LINEAR = 0;
        /// <summary>
        /// Means that the animation is interpolated using a sine wave.
        /// </summary>
        public const int TRANS_SINE = 1;
        /// <summary>
        /// Means that the animation is interpolated with a quinary (to the power of 5) function.
        /// </summary>
        public const int TRANS_QUINT = 2;
        /// <summary>
        /// Means that the animation is interpolated with a quartic (to the power of 4) function.
        /// </summary>
        public const int TRANS_QUART = 3;
        /// <summary>
        /// Means that the animation is interpolated with a quadratic (to the power of 2) function.
        /// </summary>
        public const int TRANS_QUAD = 4;
        /// <summary>
        /// Means that the animation is interpolated with a exponential (some number to the power of x) function.
        /// </summary>
        public const int TRANS_EXPO = 5;
        /// <summary>
        /// Means that the animation is interpolated with elasticity, wiggling around the edges.
        /// </summary>
        public const int TRANS_ELASTIC = 6;
        /// <summary>
        /// Means that the animation is interpolated with a cubic (to the power of 3) function.
        /// </summary>
        public const int TRANS_CUBIC = 7;
        /// <summary>
        /// Means that the animation is interpolated with a function using square roots.
        /// </summary>
        public const int TRANS_CIRC = 8;
        /// <summary>
        /// Means that the animation is interpolated by bouncing at, but never surpassing, the end.
        /// </summary>
        public const int TRANS_BOUNCE = 9;
        /// <summary>
        /// Means that the animation is interpolated backing out at edges.
        /// </summary>
        public const int TRANS_BACK = 10;
        /// <summary>
        /// Signifies that the interpolation should be focused in the beginning.
        /// </summary>
        public const int EASE_IN = 0;
        /// <summary>
        /// Signifies that the interpolation should be focused in the end.
        /// </summary>
        public const int EASE_OUT = 1;
        /// <summary>
        /// Signifies that the interpolation should be focused in both ends.
        /// </summary>
        public const int EASE_IN_OUT = 2;
        /// <summary>
        /// Signifies that the interpolation should be focused in both ends, but they should be switched (a bit hard to explain, try it for yourself to be sure).
        /// </summary>
        public const int EASE_OUT_IN = 3;

        private const string nativeName = "Tween";

        public Tween() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Tween_Ctor(this);
        }

        internal Tween(bool memoryOwn) : base(memoryOwn) {}

        ~Tween()
        {
            Dispose();
        }

        public override void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    if (memoryOwn)
                    {
                        memoryOwn = false;
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_active");

        /// <summary>
        /// Returns true if any tweens are currently running, and false otherwise. Note that this method doesn't consider tweens that have ended.
        /// </summary>
        public bool is_active()
        {
            return NativeCalls.godot_icall_0_14(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_active");

        /// <summary>
        /// Activate/deactivate the tween. You can use this for pausing animations, though [method stop_all] and [method resume_all] might be more fit for this.
        /// </summary>
        public void set_active(bool active)
        {
            NativeCalls.godot_icall_1_13(method_bind_1, Object.GetPtr(this), active);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_repeat");

        /// <summary>
        /// Returns true if repeat has been set from editor GUI or [method set_repeat].
        /// </summary>
        public bool is_repeat()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_repeat");

        /// <summary>
        /// Make the tween repeat after all tweens have finished.
        /// </summary>
        public void set_repeat(bool repeat)
        {
            NativeCalls.godot_icall_1_13(method_bind_3, Object.GetPtr(this), repeat);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_speed");

        /// <summary>
        /// Set the speed multiplier of the tween. Set it to 1 for normal speed, 2 for two times nromal speed, and 0.5 for half of the normal speed. Setting it to 0 would pause the animation, but you might consider using [method set_active] or [method stop_all] and [method resume_all] for this.
        /// </summary>
        public void set_speed(float speed)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), speed);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_speed");

        /// <summary>
        /// Returns the speed that has been set from editor GUI or [method set_repeat].
        /// </summary>
        public float get_speed()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tween_process_mode");

        /// <summary>
        /// Set whether the Tween uses [code]_process[/code] or [code]_fixed_process[/code] (accepts TWEEN_PROCESS_IDLE and TWEEN_PROCESS_FIXED constants, respectively).
        /// </summary>
        public void set_tween_process_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tween_process_mode");

        /// <summary>
        /// Returns the process mode that has been set from editor GUI or [method set_tween_process_mode]
        /// </summary>
        public int get_tween_process_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "start");

        /// <summary>
        /// Start the tween node. You can define tweens both before and after this.
        /// </summary>
        public bool start()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "reset");

        /// <summary>
        /// Resets a tween to the initial value (the one given, not the one before the tween), given its object and property/method pair. Passing empty String as key will reset all tweens for given object.
        /// </summary>
        public bool reset(Object @object, string key = "")
        {
            return NativeCalls.godot_icall_2_504(method_bind_9, Object.GetPtr(this), Object.GetPtr(@object), key);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "reset_all");

        /// <summary>
        /// Resets all tweens to their initial values (the ones given, not those before the tween).
        /// </summary>
        public bool reset_all()
        {
            return NativeCalls.godot_icall_0_14(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop animating a tween, given its object and property/method pair. Passing empty String as key will stop all tweens for given object.
        /// </summary>
        public bool stop(Object @object, string key = "")
        {
            return NativeCalls.godot_icall_2_504(method_bind_11, Object.GetPtr(this), Object.GetPtr(@object), key);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_all");

        /// <summary>
        /// Stop animating all tweens.
        /// </summary>
        public bool stop_all()
        {
            return NativeCalls.godot_icall_0_14(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resume");

        /// <summary>
        /// Continue animating a stopped tween, given its object and property/method pair. Passing empty String as key will resume all tweens for given object.
        /// </summary>
        public bool resume(Object @object, string key = "")
        {
            return NativeCalls.godot_icall_2_504(method_bind_13, Object.GetPtr(this), Object.GetPtr(@object), key);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resume_all");

        /// <summary>
        /// Continue animating all stopped tweens.
        /// </summary>
        public bool resume_all()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove");

        /// <summary>
        /// Stop animating and completely remove a tween, given its object and property/method pair. Passing empty String as key will remove all tweens for given object.
        /// </summary>
        public bool @remove(Object @object, string key = "")
        {
            return NativeCalls.godot_icall_2_504(method_bind_15, Object.GetPtr(this), Object.GetPtr(@object), key);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_all");

        /// <summary>
        /// Stop animating and completely remove all tweens.
        /// </summary>
        public bool remove_all()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek");

        /// <summary>
        /// Seek the animation to the given [code]time[/code] in seconds.
        /// </summary>
        public bool seek(float time)
        {
            return NativeCalls.godot_icall_1_276(method_bind_17, Object.GetPtr(this), time);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tell");

        /// <summary>
        /// Returns the current time of the tween.
        /// </summary>
        public float tell()
        {
            return NativeCalls.godot_icall_0_46(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_runtime");

        /// <summary>
        /// Returns the time needed for all tweens to end in seconds, measured from the start. Thus, if you have two tweens, one ending 10 seconds after the start and the other - 20 seconds, it would return 20 seconds, as by that time all tweens would have finished.
        /// </summary>
        public float get_runtime()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "interpolate_property");

        /// <summary>
        /// Animate [code]property[/code] of [code]object[/code] from [code]initial_val[/code] to [code]final_val[/code] for [code]times_in_sec[/code] seconds, [code]delay[/code] seconds later.
        /// [code]trans_type[/code] accepts TRANS_* constants, and is the way the animation is interpolated, while [code]ease_type[/code] accepts EASE_* constants, and controls the place of the interpolation (the begining, the end, or both). You can read more about them in the class description.
        /// </summary>
        public bool interpolate_property(Object @object, string property, object initial_val, object final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0)
        {
            return NativeCalls.godot_icall_8_505(method_bind_20, Object.GetPtr(this), Object.GetPtr(@object), property, initial_val, final_val, times_in_sec, trans_type, ease_type, delay);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "interpolate_method");

        /// <summary>
        /// Animate [code]method[/code] of [code]object[/code] from [code]initial_val[/code] to [code]final_val[/code] for [code]times_in_sec[/code] seconds, [code]delay[/code] seconds later. Methods are animated by calling them with consecuitive values.
        /// [code]trans_type[/code] accepts TRANS_* constants, and is the way the animation is interpolated, while [code]ease_type[/code] accepts EASE_* constants, and controls the place of the interpolation (the begining, the end, or both). You can read more about them in the class description.
        /// </summary>
        public bool interpolate_method(Object @object, string method, object initial_val, object final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0)
        {
            return NativeCalls.godot_icall_8_505(method_bind_21, Object.GetPtr(this), Object.GetPtr(@object), method, initial_val, final_val, times_in_sec, trans_type, ease_type, delay);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "interpolate_callback");

        /// <summary>
        /// Call [code]callback[/code] of [code]object[/code] after [code]times_in_sec[/code]. [code]arg1[/code]-[code]arg5[/code] are arguments to be passed to the callback.
        /// </summary>
        public bool interpolate_callback(Object @object, float times_in_sec, string callback, object arg1 = null, object arg2 = null, object arg3 = null, object arg4 = null, object arg5 = null)
        {
            return NativeCalls.godot_icall_8_506(method_bind_22, Object.GetPtr(this), Object.GetPtr(@object), times_in_sec, callback, arg1, arg2, arg3, arg4, arg5);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "interpolate_deferred_callback");

        /// <summary>
        /// Call [code]callback[/code] of [code]object[/code] after [code]times_in_sec[/code] on the main thread (similar to [methog Object.call_deferred). [code]arg1[/code]-[code]arg5[/code] are arguments to be passed to the callback.
        /// </summary>
        public bool interpolate_deferred_callback(Object @object, float times_in_sec, string callback, object arg1 = null, object arg2 = null, object arg3 = null, object arg4 = null, object arg5 = null)
        {
            return NativeCalls.godot_icall_8_506(method_bind_23, Object.GetPtr(this), Object.GetPtr(@object), times_in_sec, callback, arg1, arg2, arg3, arg4, arg5);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "follow_property");

        /// <summary>
        /// Follow [code]property[/code] of [code]object[/code] and apply it on [code]target_property[/code] of [code]target[/code], beginning from [code]initial_val[/code] for [code]times_in_sec[/code] seconds, [code]delay[/code] seconds later. Note that [code]target:target_property[/code] would equal [code]object:property[/code] at the end of the tween.
        /// [code]trans_type[/code] accepts TRANS_* constants, and is the way the animation is interpolated, while [code]ease_type[/code] accepts EASE_* constants, and controls the place of the interpolation (the begining, the end, or both). You can read more about them in the class description.
        /// </summary>
        public bool follow_property(Object @object, string property, object initial_val, Object target, string target_property, float times_in_sec, int trans_type, int ease_type, float delay = 0)
        {
            return NativeCalls.godot_icall_9_507(method_bind_24, Object.GetPtr(this), Object.GetPtr(@object), property, initial_val, Object.GetPtr(target), target_property, times_in_sec, trans_type, ease_type, delay);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "follow_method");

        /// <summary>
        /// Follow [code]method[/code] of [code]object[/code] and apply the returned value on [code]target_method[/code] of [code]target[/code], beginning from [code]initial_val[/code] for [code]times_in_sec[/code] seconds, [code]delay[/code] later. Methods are animated by calling them with consequitive values.
        /// [code]trans_type[/code] accepts TRANS_* constants, and is the way the animation is interpolated, while [code]ease_type[/code] accepts EASE_* constants, and controls the place of the interpolation (the begining, the end, or both). You can read more about them in the class description.
        /// </summary>
        public bool follow_method(Object @object, string method, object initial_val, Object target, string target_method, float times_in_sec, int trans_type, int ease_type, float delay = 0)
        {
            return NativeCalls.godot_icall_9_507(method_bind_25, Object.GetPtr(this), Object.GetPtr(@object), method, initial_val, Object.GetPtr(target), target_method, times_in_sec, trans_type, ease_type, delay);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "targeting_property");

        /// <summary>
        /// Animate [code]property[/code] of [code]object[/code] from the current value of the [code]initial_val[/code] property of [code]initial[/code] to [code]final_val[/code] for [code]times_in_sec[/code] seconds, [code]delay[/code] seconds later.
        /// [code]trans_type[/code] accepts TRANS_* constants, and is the way the animation is interpolated, while [code]ease_type[/code] accepts EASE_* constants, and controls the place of the interpolation (the begining, the end, or both). You can read more about them in the class description.
        /// </summary>
        public bool targeting_property(Object @object, string property, Object initial, string initial_val, object final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0)
        {
            return NativeCalls.godot_icall_9_508(method_bind_26, Object.GetPtr(this), Object.GetPtr(@object), property, Object.GetPtr(initial), initial_val, final_val, times_in_sec, trans_type, ease_type, delay);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "targeting_method");

        /// <summary>
        /// Animate [code]method[/code] of [code]object[/code] from the value returned by [code]initial.initial_method[/code] to [code]final_val[/code] for [code]times_in_sec[/code] seconds, [code]delay[/code] seconds later. Methods are animated by calling them with consecuitive values.
        /// [code]trans_type[/code] accepts TRANS_* constants, and is the way the animation is interpolated, while [code]ease_type[/code] accepts EASE_* constants, and controls the place of the interpolation (the begining, the end, or both). You can read more about them in the class description.
        /// </summary>
        public bool targeting_method(Object @object, string method, Object initial, string initial_method, object final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0)
        {
            return NativeCalls.godot_icall_9_508(method_bind_27, Object.GetPtr(this), Object.GetPtr(@object), method, Object.GetPtr(initial), initial_method, final_val, times_in_sec, trans_type, ease_type, delay);
        }
    }
}
