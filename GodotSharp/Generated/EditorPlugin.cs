using System;

namespace GodotEngine
{
    /// <summary>
    /// Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins.
    /// </summary>
    public class EditorPlugin : Node
    {
        public const int CONTAINER_TOOLBAR = 0;
        public const int CONTAINER_SPATIAL_EDITOR_MENU = 1;
        public const int CONTAINER_SPATIAL_EDITOR_SIDE = 2;
        public const int CONTAINER_SPATIAL_EDITOR_BOTTOM = 3;
        public const int CONTAINER_CANVAS_EDITOR_MENU = 4;
        public const int CONTAINER_CANVAS_EDITOR_SIDE = 5;
        public const int CONTAINER_PROPERTY_EDITOR_BOTTOM = 7;
        public const int DOCK_SLOT_LEFT_UL = 0;
        public const int DOCK_SLOT_LEFT_BL = 1;
        public const int DOCK_SLOT_LEFT_UR = 2;
        public const int DOCK_SLOT_LEFT_BR = 3;
        public const int DOCK_SLOT_RIGHT_UL = 4;
        public const int DOCK_SLOT_RIGHT_BL = 5;
        public const int DOCK_SLOT_RIGHT_UR = 6;
        public const int DOCK_SLOT_RIGHT_BR = 7;
        public const int DOCK_SLOT_MAX = 8;

        private const string nativeName = "EditorPlugin";

        public EditorPlugin() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorPlugin_Ctor(this);
        }

        internal EditorPlugin(bool memoryOwn) : base(memoryOwn) {}

        ~EditorPlugin()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_control_to_container");

        /// <summary>
        /// Add a custom control to a container (see CONTAINER_* enum). There are many locations where custom controls can be added in the editor UI.
        /// Please remember that you have to manage the visibility of your custom controls yourself (and likely hide it after adding it).
        /// If your plugin is being removed, also make sure to remove your custom controls too.
        /// </summary>
        public void add_control_to_container(int container, Control control)
        {
            NativeCalls.godot_icall_2_208(method_bind_0, Object.GetPtr(this), container, Object.GetPtr(control));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_control_to_bottom_panel");

        /// <summary>
        /// Add a control to the bottom panel (together with Output, Debug, Animation, etc). Returns a reference to the button added. It's up to you to hide/show the button when needed. If your plugin is being removed, also make sure to remove your control by calling [method remove_control_from_bottom_panel].
        /// </summary>
        public ToolButton add_control_to_bottom_panel(Control control, string title)
        {
            return NativeCalls.godot_icall_2_209(method_bind_1, Object.GetPtr(this), Object.GetPtr(control), title);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_control_to_dock");

        /// <summary>
        /// Add the control to a specific dock slot (see DOCK_* enum for options).
        /// If the dock is repositioned and as long as the plugin is active, the editor will save the dock position on further sessions.
        /// If your plugin is being removed, also make sure to remove your control by calling [method remove_control_from_docks].
        /// </summary>
        public void add_control_to_dock(int slot, Control control)
        {
            NativeCalls.godot_icall_2_208(method_bind_2, Object.GetPtr(this), slot, Object.GetPtr(control));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_control_from_docks");

        /// <summary>
        /// Remove the control from the dock. Don't forget to call this if you added one, so the editor can save the layout and remove it cleanly.
        /// </summary>
        public void remove_control_from_docks(Control control)
        {
            NativeCalls.godot_icall_1_20(method_bind_3, Object.GetPtr(this), Object.GetPtr(control));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_control_from_bottom_panel");

        /// <summary>
        /// Remove the control from the bottom panel. Don't forget to call this if you added one, so the editor can remove it cleanly.
        /// </summary>
        public void remove_control_from_bottom_panel(Control control)
        {
            NativeCalls.godot_icall_1_20(method_bind_4, Object.GetPtr(this), Object.GetPtr(control));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_custom_type");

        /// <summary>
        /// Add a custom type, which will appear in the list of nodes or resources. An icon can be optionally passed.
        /// When given node or resource is selected, the base type will be instanced (ie, "Spatial", "Control", "Resource"), then the script will be loaded and set to this object.
        /// You can use the [method EditorPlugin.handles] to check if your custom object is being edited by checking the script or using 'extends' keyword.
        /// During run-time, this will be a simple object with a script so this function does not need to be called then.
        /// </summary>
        public void add_custom_type(string type, string @base, Script script, Texture icon)
        {
            NativeCalls.godot_icall_4_210(method_bind_5, Object.GetPtr(this), type, @base, Object.GetPtr(script), Object.GetPtr(icon));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_custom_type");

        /// <summary>
        /// Remove a custom type added by [method EditorPlugin.add_custom_type]
        /// </summary>
        public void remove_custom_type(string type)
        {
            NativeCalls.godot_icall_1_18(method_bind_6, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_editor_viewport");

        /// <summary>
        /// Get the main editor control. Use this as a parent for main screens.
        /// </summary>
        public Control get_editor_viewport()
        {
            return NativeCalls.godot_icall_0_177(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_import_plugin");

        /// <summary>
        /// Add an import plugin. These plugins manage importing external content (from outside the project) into formats the engine can understand.
        /// On exit, don't forget to remove the plugin by calling [method remove_import_plugin]
        /// </summary>
        public void add_import_plugin(EditorImportPlugin plugin)
        {
            NativeCalls.godot_icall_1_21(method_bind_8, Object.GetPtr(this), Object.GetPtr(plugin));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_import_plugin");

        /// <summary>
        /// Remove the import plugin, don't forget to call this on exit.
        /// </summary>
        public void remove_import_plugin(EditorImportPlugin plugin)
        {
            NativeCalls.godot_icall_1_21(method_bind_9, Object.GetPtr(this), Object.GetPtr(plugin));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_export_plugin");

        /// <summary>
        /// Add an export plugin. Plugins of this kind can change files being exported. On exit don't forget to call [method remove_export_plugin].
        /// </summary>
        public void add_export_plugin(EditorExportPlugin plugin)
        {
            NativeCalls.godot_icall_1_21(method_bind_10, Object.GetPtr(this), Object.GetPtr(plugin));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_export_plugin");

        /// <summary>
        /// Remove the export plugin, don't forget to call this on exit.
        /// </summary>
        public void remove_export_plugin(EditorExportPlugin plugin)
        {
            NativeCalls.godot_icall_1_21(method_bind_11, Object.GetPtr(this), Object.GetPtr(plugin));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resource_previewer");

        /// <summary>
        /// Get tool for generating resource previews.
        /// </summary>
        public EditorResourcePreview get_resource_previewer()
        {
            return NativeCalls.godot_icall_0_211(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resource_filesystem");

        /// <summary>
        /// Get the filesystem cache for all resources in the project.
        /// </summary>
        public EditorFileSystem get_resource_filesystem()
        {
            return NativeCalls.godot_icall_0_212(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "inspect_object");

        /// <summary>
        /// Inspect an object in the inspector.
        /// </summary>
        public void inspect_object(Object @object, string for_property = "")
        {
            NativeCalls.godot_icall_2_213(method_bind_14, Object.GetPtr(this), Object.GetPtr(@object), for_property);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "update_canvas");

        /// <summary>
        /// Updates the control used to draw the edited scene over the 2D canvas. This is used together with [method forward_canvas_input_event].
        /// </summary>
        public void update_canvas()
        {
            NativeCalls.godot_icall_0_7(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_bottom_panel_item_visible");

        public void make_bottom_panel_item_visible(Control item)
        {
            NativeCalls.godot_icall_1_20(method_bind_16, Object.GetPtr(this), Object.GetPtr(item));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "hide_bottom_panel");

        public void hide_bottom_panel()
        {
            NativeCalls.godot_icall_0_7(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_base_control");

        /// <summary>
        /// Get a base control where it's safe to place dialogs. Many plugins open dialogs and they need a control as a base to make sure they use the editor icons and theme.
        /// </summary>
        public Control get_base_control()
        {
            return NativeCalls.godot_icall_0_177(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_undo_redo");

        /// <summary>
        /// Get the undo/redo object. Most actions in the editor can be undoable, so use this object to make sure this happens when it's worth it.
        /// </summary>
        public UndoRedo get_undo_redo()
        {
            return NativeCalls.godot_icall_0_214(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selection");

        /// <summary>
        /// Get the object that handles the selection of nodes in the Scene Tree editor.
        /// </summary>
        public EditorSelection get_selection()
        {
            return NativeCalls.godot_icall_0_215(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_editor_settings");

        /// <summary>
        /// Get the general settings for the editor (the same window that appears in the Settings menu).
        /// </summary>
        public EditorSettings get_editor_settings()
        {
            return NativeCalls.godot_icall_0_216(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue_save_layout");

        /// <summary>
        /// Queue save the project's editor layout.
        /// </summary>
        public void queue_save_layout()
        {
            NativeCalls.godot_icall_0_7(method_bind_22, Object.GetPtr(this));
        }
    }
}
