using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Object that holds the project-independent editor settings. These settings are generally visible in the Editor Settings menu.
    /// Accessing the settings is done by using the regular [Object] API, such as:
    /// [codeblock]
    /// settings.set(prop,value)
    /// settings.get(prop)
    /// list_of_settings = settings.get_property_list()
    /// [/codeblock]
    /// </summary>
    public class EditorSettings : Resource
    {
        private const string nativeName = "EditorSettings";

        public EditorSettings() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorSettings_Ctor(this);
        }

        internal EditorSettings(bool memoryOwn) : base(memoryOwn) {}

        ~EditorSettings()
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
                    NativeCalls.godot_icall_EditorSettings_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase");

        /// <summary>
        /// Erase a given setting (pass full property path).
        /// </summary>
        public void erase(string property)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), property);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_settings_path");

        /// <summary>
        /// Get the global settings path for the engine. Inside this path you can find some standard paths such as:
        /// settings/tmp - used for temporary storage of files
        /// settings/templates - where export templates are located
        /// </summary>
        public string get_settings_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_project_settings_path");

        /// <summary>
        /// Get the specific project settings path. Projects all have an unique sub-directory inside the settings path where project specific settings are saved.
        /// </summary>
        public string get_project_settings_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_property_info");

        /// <summary>
        /// Add a custom property info to a property. The dictionary must contain: name:[String](the name of the property) and type:[int](see TYPE_* in [@Global Scope]), and optionally hint:[int](see PROPERTY_HINT_* in [@Global Scope]), hint_string:[String].
        /// Example:[codeblock]
        /// editor_settings.set("category/property_name", 0)
        /// var property_info = {
        /// "name": "category/property_name",
        /// "type": TYPE_INT,
        /// "hint": PROPERTY_HINT_ENUM,
        /// "hint_string": "one,two,three"
        /// }
        /// editor_settings.add_property_info(property_info)[/codeblock]
        /// </summary>
        public void add_property_info(Dictionary<object, object> info)
        {
            NativeCalls.godot_icall_1_219(method_bind_3, Object.GetPtr(this), info);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_favorite_dirs");

        /// <summary>
        /// Set the list of favorite directories for this project.
        /// </summary>
        public void set_favorite_dirs(List<string> dirs)
        {
            NativeCalls.godot_icall_1_220(method_bind_4, Object.GetPtr(this), dirs.ToArray());
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_favorite_dirs");

        /// <summary>
        /// Get the list of favorite directories for this project.
        /// </summary>
        public List<string> get_favorite_dirs()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_5, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_recent_dirs");

        /// <summary>
        /// Set the list of recently visited folders in the file dialog for this project.
        /// </summary>
        public void set_recent_dirs(List<string> dirs)
        {
            NativeCalls.godot_icall_1_220(method_bind_6, Object.GetPtr(this), dirs.ToArray());
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_recent_dirs");

        /// <summary>
        /// Get the list of recently visited folders in the file dialog for this project.
        /// </summary>
        public List<string> get_recent_dirs()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_7, Object.GetPtr(this));
            return new List<string>(ret);
        }
    }
}
