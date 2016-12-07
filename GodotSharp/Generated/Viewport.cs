using System;

namespace GodotEngine
{
    /// <summary>
    /// A Viewport creates a different view into the screen, or a sub-view inside another viewport. Children 2D Nodes will display on it, and children Camera 3D nodes will render on it too.
    /// Optionally, a viewport can have its own 2D or 3D world, so they don't share what they draw with other viewports.
    /// If a viewport is a child of a [Control], it will automatically take up its same rect and position, otherwise they must be set manually.
    /// Viewports can also choose to be audio listeners, so they generate positional audio depending on a 2D or 3D camera child of it.
    /// Also, viewports can be assigned to different screens in case the devices have multiple screens.
    /// Finally, viewports can also behave as render targets, in which case they will not be visible unless the associated texture is used to draw.
    /// </summary>
    public class Viewport : Node
    {
        /// <summary>
        /// Do not update the render target.
        /// </summary>
        public const int RENDER_TARGET_UPDATE_DISABLED = 0;
        /// <summary>
        /// Update the render target once, then switch to [code]RENDER_TARGET_UPDATE_DISABLED[/code]
        /// </summary>
        public const int RENDER_TARGET_UPDATE_ONCE = 1;
        /// <summary>
        /// Update the render target only when it is visible. This is the default value.
        /// </summary>
        public const int RENDER_TARGET_UPDATE_WHEN_VISIBLE = 2;
        /// <summary>
        /// Update the render target always.
        /// </summary>
        public const int RENDER_TARGET_UPDATE_ALWAYS = 3;

        private const string nativeName = "Viewport";

        public Viewport() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Viewport_Ctor(this);
        }

        internal Viewport(bool memoryOwn) : base(memoryOwn) {}

        ~Viewport()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rect");

        /// <summary>
        /// Set the viewport rect. If the viewport is child of a control, it will use the same rect as the parent.
        /// </summary>
        public void set_rect(Rect2 rect)
        {
            NativeCalls.godot_icall_1_81(method_bind_0, Object.GetPtr(this), ref rect);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rect");

        /// <summary>
        /// Return the viewport rect. If the viewport is child of a control, it will use the same rect as the parent. Otherwise, if the rect is empty, the viewport will use all the allowed space.
        /// </summary>
        public Rect2 get_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_1, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_world_2d");

        public void set_world_2d(World2D world_2d)
        {
            NativeCalls.godot_icall_1_21(method_bind_2, Object.GetPtr(this), Object.GetPtr(world_2d));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_world_2d");

        public World2D get_world_2d()
        {
            return NativeCalls.godot_icall_0_147(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_world_2d");

        /// <summary>
        /// Return the 2D world of the viewport.
        /// </summary>
        public World2D find_world_2d()
        {
            return NativeCalls.godot_icall_0_147(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_world");

        /// <summary>
        /// Change the 3D world of the viewport.
        /// </summary>
        public void set_world(World world)
        {
            NativeCalls.godot_icall_1_21(method_bind_5, Object.GetPtr(this), Object.GetPtr(world));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_world");

        /// <summary>
        /// Return the 3D world of the viewport.
        /// </summary>
        public World get_world()
        {
            return NativeCalls.godot_icall_0_460(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_world");

        /// <summary>
        /// Return the 3D world of the viewport, or if no such present, the one of the parent viewport.
        /// </summary>
        public World find_world()
        {
            return NativeCalls.godot_icall_0_460(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_canvas_transform");

        /// <summary>
        /// Set the canvas transform of the viewport, useful for changing the on-screen positions of all child [CanvasItem]s. This is relative to the global canvas transform of the viewport.
        /// </summary>
        public void set_canvas_transform(Matrix32 xform)
        {
            NativeCalls.godot_icall_1_140(method_bind_8, Object.GetPtr(this), ref xform);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_canvas_transform");

        /// <summary>
        /// Get the canvas transform of the viewport.
        /// </summary>
        public Matrix32 get_canvas_transform()
        {
            object ret = NativeCalls.godot_icall_0_141(method_bind_9, Object.GetPtr(this));
            return (Matrix32)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_canvas_transform");

        /// <summary>
        /// Set the global canvas transform of the viewport. The canvas transform is relative to this.
        /// </summary>
        public void set_global_canvas_transform(Matrix32 xform)
        {
            NativeCalls.godot_icall_1_140(method_bind_10, Object.GetPtr(this), ref xform);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_canvas_transform");

        /// <summary>
        /// Get the global canvas transform of the viewport.
        /// </summary>
        public Matrix32 get_global_canvas_transform()
        {
            object ret = NativeCalls.godot_icall_0_141(method_bind_11, Object.GetPtr(this));
            return (Matrix32)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_final_transform");

        /// <summary>
        /// Get the total transform of the viewport.
        /// </summary>
        public Matrix32 get_final_transform()
        {
            object ret = NativeCalls.godot_icall_0_141(method_bind_12, Object.GetPtr(this));
            return (Matrix32)ret;
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visible_rect");

        /// <summary>
        /// Return the final, visible rect in global screen coordinates.
        /// </summary>
        public Rect2 get_visible_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_13, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transparent_background");

        /// <summary>
        /// If this viewport is a child of another viewport, keep the previously drawn background visible.
        /// </summary>
        public void set_transparent_background(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_transparent_background");

        /// <summary>
        /// Return whether the viewport lets whatever is behind it to show.
        /// </summary>
        public bool has_transparent_background()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_size_override");

        /// <summary>
        /// Set the size of the viewport. If the enable parameter is true, it would use the override, otherwise it would use the default size. If the size parameter is equal to [code](-1, -1)[/code], it won't update the size.
        /// <param name="size">If the param is null, then the default value is new Vector2(-1, -1)</param>
        /// <param name="margin">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public void set_size_override(bool enable, Nullable<Vector2> size = null, Nullable<Vector2> margin = null)
        {
            Vector2 size_in = size.HasValue ? size.Value : new Vector2(-1, -1);
            Vector2 margin_in = margin.HasValue ? margin.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_3_512(method_bind_16, Object.GetPtr(this), enable, ref size_in, ref margin_in);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_size_override");

        /// <summary>
        /// Get the size override set with [method set_size_override].
        /// </summary>
        public Vector2 get_size_override()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_17, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_size_override_enabled");

        /// <summary>
        /// Get the enabled status of the size override set with [method set_size_override].
        /// </summary>
        public bool is_size_override_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_size_override_stretch");

        /// <summary>
        /// Set whether the size override affects stretch as well.
        /// </summary>
        public void set_size_override_stretch(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_19, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_size_override_stretch_enabled");

        /// <summary>
        /// Get the enabled status of the size strech override set with [method set_size_override_stretch].
        /// </summary>
        public bool is_size_override_stretch_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue_screen_capture");

        /// <summary>
        /// Queue a multithreaded screenshot, you can retrive it at a later frame via [method get_screen_capture].
        /// </summary>
        public void queue_screen_capture()
        {
            NativeCalls.godot_icall_0_7(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_screen_capture");

        /// <summary>
        /// Return the captured screenshot after [method queue_screen_capture]. You might need to check more than one frame untill the right image is returned.
        /// </summary>
        public Image get_screen_capture()
        {
            IntPtr ret = NativeCalls.godot_icall_0_256(method_bind_22, Object.GetPtr(this));
            return new Image(ret);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_as_render_target");

        /// <summary>
        /// Set the viewport's render target mode.
        /// </summary>
        public void set_as_render_target(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_23, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_set_as_render_target");

        /// <summary>
        /// Return whether the viewport is set as a render target by [method set_as_render_target].
        /// </summary>
        public bool is_set_as_render_target()
        {
            return NativeCalls.godot_icall_0_14(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_render_target_vflip");

        /// <summary>
        /// Set whether the render target should be flipped on the Y axis.
        /// </summary>
        public void set_render_target_vflip(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_25, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_render_target_vflip");

        /// <summary>
        /// Set whether the render target is flipped on the Y axis.
        /// </summary>
        public bool get_render_target_vflip()
        {
            return NativeCalls.godot_icall_0_14(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_render_target_clear_on_new_frame");

        /// <summary>
        /// Enable/disable automatic clearing of the render target on each frame. You might find it better to disable this if you are using the viewport for rarely updated textures. To clear manually, check [method render_target_clear]
        /// </summary>
        public void set_render_target_clear_on_new_frame(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_27, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_render_target_clear_on_new_frame");

        /// <summary>
        /// Return whether automatic clearing of the render target on each frame is enabled.
        /// </summary>
        public bool get_render_target_clear_on_new_frame()
        {
            return NativeCalls.godot_icall_0_14(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "render_target_clear");

        /// <summary>
        /// Clear the render target manually.
        /// </summary>
        public void render_target_clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_render_target_filter");

        /// <summary>
        /// Set whether the rendered texture should have filters enabled. Disable if you want the texture's pixels be visible.
        /// </summary>
        public void set_render_target_filter(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_30, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_render_target_filter");

        /// <summary>
        /// Get whether the rendered texture has filters enabled.
        /// </summary>
        public bool get_render_target_filter()
        {
            return NativeCalls.godot_icall_0_14(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_render_target_gen_mipmaps");

        /// <summary>
        /// Set whether the rendered texture should have mipmaps generated. Mipmaps allow the texture to have better antialiasing from far away.
        /// </summary>
        public void set_render_target_gen_mipmaps(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_32, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_render_target_gen_mipmaps");

        /// <summary>
        /// Get whether the rendered texture will have mipmaps generated.
        /// </summary>
        public bool get_render_target_gen_mipmaps()
        {
            return NativeCalls.godot_icall_0_14(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_render_target_update_mode");

        /// <summary>
        /// Set when the render target should be updated, has to be one of the [code]RENDER_TARGET_UPDATE_*[/code] constants.
        /// </summary>
        public void set_render_target_update_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_34, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_render_target_update_mode");

        /// <summary>
        /// Get when the render target would be updated, will be one of the [code]RENDER_TARGET_UPDATE_*[/code] constants.
        /// </summary>
        public int get_render_target_update_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_render_target_texture");

        /// <summary>
        /// Get the render target's texture, for use with various objects that you want to texture with the viewport.
        /// </summary>
        public RenderTargetTexture get_render_target_texture()
        {
            return NativeCalls.godot_icall_0_513(method_bind_36, Object.GetPtr(this));
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_physics_object_picking");

        /// <summary>
        /// Enable/disable picking for all physics objects inside the viewport.
        /// </summary>
        public void set_physics_object_picking(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_37, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_physics_object_picking");

        /// <summary>
        /// Get whether picking for all physics objects inside the viewport is enabled.
        /// </summary>
        public bool get_physics_object_picking()
        {
            return NativeCalls.godot_icall_0_14(method_bind_38, Object.GetPtr(this));
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_viewport");

        /// <summary>
        /// Get the viewport RID from the visual server.
        /// </summary>
        public RID get_viewport()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_39, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "input");

        public void input(InputEvent local_event)
        {
            NativeCalls.godot_icall_1_275(method_bind_40, Object.GetPtr(this), ref local_event);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unhandled_input");

        public void unhandled_input(InputEvent local_event)
        {
            NativeCalls.godot_icall_1_275(method_bind_41, Object.GetPtr(this), ref local_event);
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "update_worlds");

        /// <summary>
        /// Force update of the 2D and 3D worlds.
        /// </summary>
        public void update_worlds()
        {
            NativeCalls.godot_icall_0_7(method_bind_42, Object.GetPtr(this));
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_own_world");

        /// <summary>
        /// Make the viewport use a world separate from the parent viewport's world.
        /// </summary>
        public void set_use_own_world(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_43, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_own_world");

        /// <summary>
        /// Return whether the viewport is using a world separate from the parent viewport's world.
        /// </summary>
        public bool is_using_own_world()
        {
            return NativeCalls.godot_icall_0_14(method_bind_44, Object.GetPtr(this));
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_camera");

        /// <summary>
        /// Return the active 3D camera.
        /// </summary>
        public Camera get_camera()
        {
            return NativeCalls.godot_icall_0_514(method_bind_45, Object.GetPtr(this));
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_as_audio_listener");

        /// <summary>
        /// Makes the viewport send sounds to the speakers.
        /// </summary>
        public void set_as_audio_listener(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_46, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_audio_listener");

        /// <summary>
        /// Returns whether the viewport sends sounds to the speakers.
        /// </summary>
        public bool is_audio_listener()
        {
            return NativeCalls.godot_icall_0_14(method_bind_47, Object.GetPtr(this));
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_as_audio_listener_2d");

        /// <summary>
        /// Makes the viewport send sounds from 2D emitters to the speakers.
        /// </summary>
        public void set_as_audio_listener_2d(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_48, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_audio_listener_2d");

        /// <summary>
        /// Returns whether the viewport sends soundsfrom 2D emitters to the speakers.
        /// </summary>
        public bool is_audio_listener_2d()
        {
            return NativeCalls.godot_icall_0_14(method_bind_49, Object.GetPtr(this));
        }

        private IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_render_target_to_screen_rect");

        /// <summary>
        /// Map a part of the screen to the render target directly.
        /// </summary>
        public void set_render_target_to_screen_rect(Rect2 rect)
        {
            NativeCalls.godot_icall_1_81(method_bind_50, Object.GetPtr(this), ref rect);
        }

        private IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mouse_pos");

        /// <summary>
        /// Get the mouse position, relative to the viewport.
        /// </summary>
        public Vector2 get_mouse_pos()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_51, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "warp_mouse");

        /// <summary>
        /// Warp the mouse to a position, relative to the viewport.
        /// </summary>
        public void warp_mouse(Vector2 to_pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_52, Object.GetPtr(this), ref to_pos);
        }

        private IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "gui_has_modal_stack");

        /// <summary>
        /// Returs whether there are shown modals on-screen.
        /// </summary>
        public bool gui_has_modal_stack()
        {
            return NativeCalls.godot_icall_0_14(method_bind_53, Object.GetPtr(this));
        }

        private IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "gui_get_drag_data");

        /// <summary>
        /// Returs the drag data from the GUI, that was previously returned by [method Control.get_drag_data].
        /// </summary>
        public object gui_get_drag_data()
        {
            return NativeCalls.godot_icall_0_126(method_bind_54, Object.GetPtr(this));
        }

        private IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_disable_input");

        /// <summary>
        /// Set whether input to the viewport is disabled.
        /// </summary>
        public void set_disable_input(bool disable)
        {
            NativeCalls.godot_icall_1_13(method_bind_55, Object.GetPtr(this), disable);
        }

        private IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_input_disabled");

        /// <summary>
        /// Return whether input to the viewport is disabled.
        /// </summary>
        public bool is_input_disabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_56, Object.GetPtr(this));
        }
    }
}
