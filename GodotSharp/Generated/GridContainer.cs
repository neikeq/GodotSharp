using System;

namespace GodotEngine
{
    /// <summary>
    /// Grid container will arrange its children in a grid like structure, the grid columns are specified using the [method set_columns] method and the number of rows will be equal to the number of children in the container divided by the number of columns, for example: if the container has 5 children, and 2 columns, there will be 3 rows in the container. Notice that grid layout will preserve the columns and rows for every size of the container.
    /// </summary>
    public class GridContainer : Container
    {
        private const string nativeName = "GridContainer";

        public GridContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_GridContainer_Ctor(this);
        }

        internal GridContainer(bool memoryOwn) : base(memoryOwn) {}

        ~GridContainer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_columns");

        /// <summary>
        /// Sets the numbers of columns in the container, then reorder its children to accommodate the new layout
        /// </summary>
        public void set_columns(int columns)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), columns);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_columns");

        /// <summary>
        /// Returns the number of columns in this container
        /// </summary>
        public int get_columns()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }
    }
}
