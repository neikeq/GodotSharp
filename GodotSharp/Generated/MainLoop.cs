using System;

namespace GodotEngine
{
    /// <summary>
    /// Main loop is the abstract main loop base class. All other main loop classes are derived from it. Upon application start, a [MainLoop] has to be provided to OS, else the application will exit. This happens automatically (and a [SceneTree] is created), unless a main [Script] is supplied, which may or not create and return a [MainLoop].
    /// </summary>
    public class MainLoop : Object
    {
        public const int NOTIFICATION_WM_MOUSE_ENTER = 3;
        public const int NOTIFICATION_WM_MOUSE_EXIT = 4;
        public const int NOTIFICATION_WM_FOCUS_IN = 5;
        public const int NOTIFICATION_WM_FOCUS_OUT = 6;
        public const int NOTIFICATION_WM_QUIT_REQUEST = 7;
        public const int NOTIFICATION_WM_UNFOCUS_REQUEST = 8;
        public const int NOTIFICATION_OS_MEMORY_WARNING = 9;

        private const string nativeName = "MainLoop";

        public MainLoop() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_MainLoop_Ctor(this);
        }

        internal MainLoop(bool memoryOwn) : base(memoryOwn) {}

        ~MainLoop()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "input_event");

        public void input_event(InputEvent ev)
        {
            NativeCalls.godot_icall_1_275(method_bind_0, Object.GetPtr(this), ref ev);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "input_text");

        public void input_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_1, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "init");

        public void init()
        {
            NativeCalls.godot_icall_0_7(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "iteration");

        public bool iteration(float delta)
        {
            return NativeCalls.godot_icall_1_276(method_bind_3, Object.GetPtr(this), delta);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "idle");

        public bool idle(float delta)
        {
            return NativeCalls.godot_icall_1_276(method_bind_4, Object.GetPtr(this), delta);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "finish");

        public void finish()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }
    }
}
