using System;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    [StructLayout(LayoutKind.Sequential)]
    public struct Vector2 : IEquatable<Vector2>
    {
        public float x;
        public float y;

        public float width
        {
            get
            {
                return x;
            }
            set
            {
                x = value;
            }
        }

        public float height
        {
            get
            {
                return y;
            }
            set
            {
                y = value;
            }
        }

        public float this[int index]
        {
            get
            {
                switch (index)
                {
                    case 0:
                        return x;
                    case 1:
                        return y;
                }

                throw new IndexOutOfRangeException();
            }
            set
            {
                switch (index)
                {
                    case 0:
                        x = value;
                        return;
                    case 1:
                        y = value;
                        return;
                }

                throw new IndexOutOfRangeException();
            }
        }

        public Vector2(float x, float y)
        {
            this.x = x;
            this.y = y;
        }

        public static float dot(Vector2 left, Vector2 right)
		{
			return left.x * right.x + left.y * right.y;
		}

		public static Vector2 operator +(Vector2 left, Vector2 right)
		{
			left.x += right.x;
			left.y += right.y;
			return left;
		}

		public static Vector2 operator -(Vector2 left, Vector2 right)
		{
			left.x -= right.x;
			left.y -= right.y;
			return left;
		}

		public static Vector2 operator -(Vector2 vec)
		{
			vec.x = -vec.x;
			vec.y = -vec.y;
			return vec;
		}

		public static Vector2 operator *(Vector2 vec, float scale)
		{
			vec.x *= scale;
			vec.y *= scale;
			return vec;
		}

		public static Vector2 operator *(float scale, Vector2 vec)
		{
			vec.x *= scale;
			vec.y *= scale;
			return vec;
		}

		public static Vector2 operator *(Vector2 left, Vector2 right)
		{
            left.x *= right.x;
			left.y *= right.y;
			return left;
		}

		public static Vector2 operator /(Vector2 vec, float scale)
		{
			float mult = 1.0f / scale;
			vec.x *= mult;
			vec.y *= mult;
			return vec;
		}

		public static Vector2 operator /(Vector2 left, Vector2 right)
		{
            left.x /= right.x;
			left.y /= right.y;
			return left;
		}

		public static bool operator ==(Vector2 left, Vector2 right)
		{
			return left.Equals(right);
		}

		public static bool operator !=(Vector2 left, Vector2 right)
		{
			return !left.Equals(right);
		}

        public override bool Equals(object obj)
		{
			if (!(obj is Vector2))
				return false;

			return this.Equals((Vector2)obj);
		}

        public bool Equals(Vector2 other)
		{
			return x == other.x && y == other.y;
		}
    }
}
