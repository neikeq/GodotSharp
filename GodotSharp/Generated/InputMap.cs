using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Singleton that manages actions. InputMap has a list of the actions used in InputEvent, which can be modified.
    /// </summary>
    public static class InputMap
    {
        private const string nativeName = "InputMap";
        internal static IntPtr ptr = NativeCalls.godot_icall_InputMap_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_action");

        /// <summary>
        /// Whether this InputMap has a registered action with the given name.
        /// </summary>
        public static bool has_action(string action)
        {
            return NativeCalls.godot_icall_1_49(method_bind_0, ptr, action);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_action_id");

        /// <summary>
        /// Return the identifier of the given action.
        /// </summary>
        public static int get_action_id(string action)
        {
            return NativeCalls.godot_icall_1_63(method_bind_1, ptr, action);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_action_from_id");

        /// <summary>
        /// Return the action corresponding to the identifier.
        /// </summary>
        public static string get_action_from_id(int id)
        {
            return NativeCalls.godot_icall_1_116(method_bind_2, ptr, id);
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_actions");

        /// <summary>
        /// Return an array of all actions in the [InputMap].
        /// </summary>
        public static List<object> get_actions()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_3, ptr);
            return new List<object>(ret);
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_action");

        /// <summary>
        /// Add an (empty) action to the [InputMap]. An [InputEvent] can then be added to this action with [method action_add_event].
        /// </summary>
        public static void add_action(string action)
        {
            NativeCalls.godot_icall_1_18(method_bind_4, ptr, action);
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase_action");

        /// <summary>
        /// Remove an action from the [InputMap].
        /// </summary>
        public static void erase_action(string action)
        {
            NativeCalls.godot_icall_1_18(method_bind_5, ptr, action);
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "action_add_event");

        /// <summary>
        /// Add an [InputEvent] to an action. This [InputEvent] will trigger the action.
        /// </summary>
        public static void action_add_event(string action, InputEvent @event)
        {
            NativeCalls.godot_icall_2_260(method_bind_6, ptr, action, ref @event);
        }

        private static IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "action_has_event");

        /// <summary>
        /// Whether an action has an [InputEvent] associated with it.
        /// </summary>
        public static bool action_has_event(string action, InputEvent @event)
        {
            return NativeCalls.godot_icall_2_261(method_bind_7, ptr, action, ref @event);
        }

        private static IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "action_erase_event");

        /// <summary>
        /// Remove an [InputEvent] from an action.
        /// </summary>
        public static void action_erase_event(string action, InputEvent @event)
        {
            NativeCalls.godot_icall_2_260(method_bind_8, ptr, action, ref @event);
        }

        private static IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_action_list");

        /// <summary>
        /// Return an array of InputEvents associated with a given action.
        /// </summary>
        public static List<object> get_action_list(string action)
        {
            object[] ret = NativeCalls.godot_icall_1_262(method_bind_9, ptr, action);
            return new List<object>(ret);
        }

        private static IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "event_is_action");

        /// <summary>
        /// Return whether the given event is part of an existing action. This method ignores keyboard modifiers if the given [InputEvent] is not pressed (for proper release detection). See [method action_has_event] if you don't want this behavior.
        /// </summary>
        public static bool event_is_action(InputEvent @event, string action)
        {
            return NativeCalls.godot_icall_2_263(method_bind_10, ptr, ref @event, action);
        }

        private static IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "load_from_globals");

        /// <summary>
        /// Clear the [InputMap] and load it anew from [Globals].
        /// </summary>
        public static void load_from_globals()
        {
            NativeCalls.godot_icall_0_7(method_bind_11, ptr);
        }
    }
}
