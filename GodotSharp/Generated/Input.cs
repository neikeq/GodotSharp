using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// A Singleton that deals with inputs. This includes key presses, mouse buttons and movement, joysticks, and input actions.
    /// </summary>
    public static class Input
    {
        /// <summary>
        /// Makes the mouse cursor visible if it is hidden.
        /// </summary>
        public const int MOUSE_MODE_VISIBLE = 0;
        /// <summary>
        /// Makes the mouse cursor hidden if it is visible.
        /// </summary>
        public const int MOUSE_MODE_HIDDEN = 1;
        /// <summary>
        /// Captures the mouse. The mouse will be hidden and unable to leave the game window. But it will still register movement and mouse button presses.
        /// </summary>
        public const int MOUSE_MODE_CAPTURED = 2;

        private const string nativeName = "Input";
        internal static IntPtr ptr = NativeCalls.godot_icall_Input_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_key_pressed");

        /// <summary>
        /// Returns true or false depending on whether the key is pressed or not. You can pass KEY_*, which are pre-defined constants listed in [@Global Scope].
        /// </summary>
        public static bool is_key_pressed(int scancode)
        {
            return NativeCalls.godot_icall_1_33(method_bind_0, ptr, scancode);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_mouse_button_pressed");

        /// <summary>
        /// Returns true or false depending on whether mouse button is pressed or not. You can pass BUTTON_*, which are pre-defined constants listed in [@Global Scope].
        /// </summary>
        public static bool is_mouse_button_pressed(int button)
        {
            return NativeCalls.godot_icall_1_33(method_bind_1, ptr, button);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_joy_button_pressed");

        /// <summary>
        /// Returns if the joystick button at the given index is currently pressed. (see JOY_* constants in [@Global Scope])
        /// </summary>
        public static bool is_joy_button_pressed(int device, int button)
        {
            return NativeCalls.godot_icall_2_6(method_bind_2, ptr, device, button);
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_action_pressed");

        /// <summary>
        /// Returns true or false depending on whether the action event is pressed. Actions and their events can be set in the Project Settings / Input Map tab. Or be set with [InputMap].
        /// </summary>
        public static bool is_action_pressed(string action)
        {
            return NativeCalls.godot_icall_1_49(method_bind_3, ptr, action);
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_action_just_pressed");

        public static bool is_action_just_pressed(string action)
        {
            return NativeCalls.godot_icall_1_49(method_bind_4, ptr, action);
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_action_just_released");

        public static bool is_action_just_released(string action)
        {
            return NativeCalls.godot_icall_1_49(method_bind_5, ptr, action);
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_joy_mapping");

        /// <summary>
        /// Add a new mapping entry (in SDL2 format) to the mapping database. Optionally update already connected devices.
        /// </summary>
        public static void add_joy_mapping(string mapping, bool update_existing = false)
        {
            NativeCalls.godot_icall_2_68(method_bind_6, ptr, mapping, update_existing);
        }

        private static IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_joy_mapping");

        /// <summary>
        /// Removes all mappings from the internal db that match the given uid.
        /// </summary>
        public static void remove_joy_mapping(string guid)
        {
            NativeCalls.godot_icall_1_18(method_bind_7, ptr, guid);
        }

        private static IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_joy_known");

        /// <summary>
        /// Returns if the specified device is known by the system. This means that it sets all button and axis indices exactly as defined in the JOY_* constants (see [@Global Scope]). Unknown joysticks are not expected to match these constants, but you can still retrieve events from them.
        /// </summary>
        public static bool is_joy_known(int device)
        {
            return NativeCalls.godot_icall_1_33(method_bind_8, ptr, device);
        }

        private static IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_axis");

        /// <summary>
        /// Returns the current value of the joystick axis at given index (see JOY_* constants in [@Global Scope])
        /// </summary>
        public static float get_joy_axis(int device, int axis)
        {
            return NativeCalls.godot_icall_2_39(method_bind_9, ptr, device, axis);
        }

        private static IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_name");

        /// <summary>
        /// Returns the name of the joystick at the specified device index
        /// </summary>
        public static string get_joy_name(int device)
        {
            return NativeCalls.godot_icall_1_116(method_bind_10, ptr, device);
        }

        private static IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_guid");

        /// <summary>
        /// Returns a SDL2 compatible device guid on platforms that use gamepad remapping. Returns "Default Gamepad" otherwise.
        /// </summary>
        public static string get_joy_guid(int device)
        {
            return NativeCalls.godot_icall_1_116(method_bind_11, ptr, device);
        }

        private static IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connected_joysticks");

        /// <summary>
        /// Returns an [Array] containing the device IDs of all currently connected joysticks.
        /// </summary>
        public static List<object> get_connected_joysticks()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_12, ptr);
            return new List<object>(ret);
        }

        private static IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_vibration_strength");

        /// <summary>
        /// Returns the strength of the joystick vibration: x is the strength of the weak motor, and y is the strength of the strong motor.
        /// </summary>
        public static Vector2 get_joy_vibration_strength(int device)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_13, ptr, device);
            return (Vector2)ret;
        }

        private static IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_vibration_duration");

        /// <summary>
        /// Returns the duration of the current vibration effect in seconds.
        /// </summary>
        public static float get_joy_vibration_duration(int device)
        {
            return NativeCalls.godot_icall_1_3(method_bind_14, ptr, device);
        }

        private static IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_button_string");

        public static string get_joy_button_string(int button_index)
        {
            return NativeCalls.godot_icall_1_116(method_bind_15, ptr, button_index);
        }

        private static IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_button_index_from_string");

        public static int get_joy_button_index_from_string(string button)
        {
            return NativeCalls.godot_icall_1_63(method_bind_16, ptr, button);
        }

        private static IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_axis_string");

        public static string get_joy_axis_string(int axis_index)
        {
            return NativeCalls.godot_icall_1_116(method_bind_17, ptr, axis_index);
        }

        private static IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_joy_axis_index_from_string");

        public static int get_joy_axis_index_from_string(string axis)
        {
            return NativeCalls.godot_icall_1_63(method_bind_18, ptr, axis);
        }

        private static IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "start_joy_vibration");

        /// <summary>
        /// Starts to vibrate the joystick. Joysticks usually come with two rumble motors, a strong and a weak one. weak_magnitude is the strength of the weak motor (between 0 and 1) and strong_magnitude is the strength of the strong motor (between 0 and 1). duration is the duration of the effect in seconds (a duration of 0 will try to play the vibration indefinitely).
        /// Note that not every hardware is compatible with long effect durations, it is recommended to restart an effect if in need to play it for more than a few seconds.
        /// </summary>
        public static void start_joy_vibration(int device, float weak_magnitude, float strong_magnitude, float duration = 0)
        {
            NativeCalls.godot_icall_4_259(method_bind_19, ptr, device, weak_magnitude, strong_magnitude, duration);
        }

        private static IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_joy_vibration");

        /// <summary>
        /// Stops the vibration of the joystick.
        /// </summary>
        public static void stop_joy_vibration(int device)
        {
            NativeCalls.godot_icall_1_4(method_bind_20, ptr, device);
        }

        private static IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_accelerometer");

        /// <summary>
        /// If the device has an accelerometer, this will return the movement.
        /// </summary>
        public static Vector3 get_accelerometer()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_21, ptr);
            return (Vector3)ret;
        }

        private static IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_magnetometer");

        /// <summary>
        /// If the device has a magnetometer, this will return the magnetic field strength in micro-Tesla for all axes.
        /// </summary>
        public static Vector3 get_magnetometer()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_22, ptr);
            return (Vector3)ret;
        }

        private static IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gyroscope");

        /// <summary>
        /// If the device has a gyroscope, this will return the rate of rotation in rad/s around a device's x, y, and z axis.
        /// </summary>
        public static Vector3 get_gyroscope()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_23, ptr);
            return (Vector3)ret;
        }

        private static IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mouse_speed");

        /// <summary>
        /// Returns the mouse speed for the last time the cursor was moved, and this until the next frame where the mouse moves. This means that even if the mouse is not moving, this function will still return the value of the last motion.
        /// </summary>
        public static Vector2 get_mouse_speed()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_24, ptr);
            return (Vector2)ret;
        }

        private static IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mouse_button_mask");

        /// <summary>
        /// Returns mouse buttons as a bitmask. If multiple mouse buttons are pressed at the same time the bits are added together.
        /// </summary>
        public static int get_mouse_button_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_25, ptr);
        }

        private static IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mouse_mode");

        /// <summary>
        /// Set the mouse mode. See the constants for more information.
        /// </summary>
        public static void set_mouse_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_26, ptr, mode);
        }

        private static IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mouse_mode");

        /// <summary>
        /// Return the mouse mode. See the constants for more information.
        /// </summary>
        public static int get_mouse_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_27, ptr);
        }

        private static IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "warp_mouse_pos");

        /// <summary>
        /// Sets the mouse position to the specified vector.
        /// </summary>
        public static void warp_mouse_pos(Vector2 to)
        {
            NativeCalls.godot_icall_1_23(method_bind_28, ptr, ref to);
        }

        private static IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "action_press");

        /// <summary>
        /// This will simulate pressing the specificed action.
        /// </summary>
        public static void action_press(string action)
        {
            NativeCalls.godot_icall_1_18(method_bind_29, ptr, action);
        }

        private static IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "action_release");

        /// <summary>
        /// If the specified action is already pressed, this will release it.
        /// </summary>
        public static void action_release(string action)
        {
            NativeCalls.godot_icall_1_18(method_bind_30, ptr, action);
        }

        private static IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_mouse_cursor");

        /// <summary>
        /// Set a custom mouse cursor image, which is only visible inside the game window. The hotspot can also be specified.
        /// <param name="hotspot">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public static void set_custom_mouse_cursor(Texture image, Nullable<Vector2> hotspot = null)
        {
            Vector2 hotspot_in = hotspot.HasValue ? hotspot.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_2_105(method_bind_31, ptr, Object.GetPtr(image), ref hotspot_in);
        }
    }
}
