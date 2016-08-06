using System;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    public class Matrix32
    {
        internal Internal elements;

        [StructLayout(LayoutKind.Sequential)]
        public struct Internal
        {
            public Vector2 element0;
            public Vector2 element1;
            public Vector2 element2;
        }

        public Vector2 this[int index]
		{
			get
			{
				switch (index)
				{
					case 0:
						return elements.element0;
					case 1:
						return elements.element1;
					case 2:
						return elements.element2;
				}

				throw new IndexOutOfRangeException();
			}
			set
			{
				switch (index)
				{
					case 0:
						elements.element0 = value;
						return;
					case 1:
                        elements.element1 = value;
                        return;
					case 2:
                        elements.element2 = value;
                        return;
				}

				throw new IndexOutOfRangeException();
			}
		}

        public Matrix32()
        {
            elements.element0.x = 1.0f; // this[0][0] = 1.0f;
            elements.element1.y = 1.0f; // this[1][1] = 1.0f;
        }

        public Matrix32(Internal elements)
        {
            this.elements = elements;
        }
    }
}
