using System;
using System.Runtime.CompilerServices;
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
                    default:
                        throw new IndexOutOfRangeException();
                }
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
                    default:
                        throw new IndexOutOfRangeException();
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        internal void Normalize()
        {
            float length = x * x + y * y;

            if (length != 0f)
            {
                length = Mathf.Sqrt(length);
                x /= length;
                y /= length;
            }
        }

        public Vector2 Abs()
        {
            return new Vector2(Mathf.Abs(x), Mathf.Abs(y));
        }

        public float Angle()
        {
            return Mathf.Atan2(x, y);
        }

        public float AngleTo(Vector2 to)
        {
            return Mathf.Atan2(Tangent().Dot(to), Dot(to));
        }

        public float AngleToPoint(Vector2 to)
        {
            return Mathf.Atan2(x - to.x, y - to.y);
        }

        public Vector2 CubicInterpolate(Vector2 b, Vector2 preA, Vector2 postB, float t)
        {
            float t2 = t * t;
            float t3 = t2 * t;

            Vector2 ret = 0.5f * ((this * 2.0f) + (-preA + b) * t +
                    (2.0f * preA - 5.0f * this + 4f * b - postB) * t2 +
                    (-preA + 3.0f * this - 3.0f * b + postB) * t3);

            return ret;
        }

        public float DistanceSquaredTo(Vector2 to)
        {
            return (x - to.x) * (x - to.x) + (y - to.y) * (y - to.y);
        }

        public float DistanceTo(Vector2 to)
        {
            return Mathf.Sqrt((x - to.x) * (x - to.x) + (y - to.y) * (y - to.y));
        }

        public float Dot(Vector2 with)
        {
            return x * with.x + y * with.y;
        }

        public Vector2 Floor()
        {
            return new Vector2(Mathf.Floor(x), Mathf.Floor(y));
        }

        public float GetAspect()
        {
            return x / y;
        }

        public float Length()
        {
            return Mathf.Sqrt(x * x + y * y);
        }

        public float LengthSquared()
        {
            return x * x + y * y;
        }

        public Vector2 LinearInterpolate(Vector2 b, float t)
        {
            return this + new Vector2(t * (b.x - x), t * (b.y - y));
        }

        public Vector2 Normalized()
        {
            Vector2 result = new Vector2();
            result.Normalize();
            return result;
        }

        public Vector2 Reflect(Vector2 vec)
        {
            return vec - this * Dot(vec) * 2.0f;
        }

        public Vector2 Rotated(float phi)
        {
            float rads = Angle() + phi;
            return new Vector2(Mathf.Sin(rads), Mathf.Cos(rads)) * Length();
        }

        public Vector2 Slide(Vector2 vec)
        {
            return vec - this * Dot(vec);
        }

        public Vector2 Snapped(Vector2 by)
        {
            return new Vector2(Mathf.Stepify(x, by.x), Mathf.Stepify(y, by.y));
        }

        public Vector2 Tangent()
        {
            return new Vector2(y, -x);
        }

        public Vector2(float x, float y)
        {
            this.x = x;
            this.y = y;
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
            vec.x /= scale;
            vec.y /= scale;
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

        public static bool operator <(Vector2 left, Vector2 right)
        {
            if (left.x.Equals(right.x))
            {
                return left.y < right.y;
            }
            else
            {
                return left.x < right.x;
            }
        }

        public static bool operator >(Vector2 left, Vector2 right)
        {
            if (left.x.Equals(right.x))
            {
                return left.y > right.y;
            }
            else
            {
                return left.x > right.x;
            }
        }

        public static bool operator <=(Vector2 left, Vector2 right)
        {
            if (left.x.Equals(right.x))
            {
                return left.y <= right.y;
            }
            else
            {
                return left.x <= right.x;
            }
        }

        public static bool operator >=(Vector2 left, Vector2 right)
        {
            if (left.x.Equals(right.x))
            {
                return left.y >= right.y;
            }
            else
            {
                return left.x >= right.x;
            }
        }

        public override bool Equals(object obj)
        {
            if (obj is Vector2)
            {
                return Equals((Vector2)obj);
            }

            return false;
        }

        public bool Equals(Vector2 other)
        {
            return x == other.x && y == other.y;
        }

        public override int GetHashCode()
        {
            return y.GetHashCode() ^ x.GetHashCode();
        }

        public override string ToString()
        {
            return String.Format("({0}, {1})", new object[]
            {
                this.x.ToString(),
                this.y.ToString()
            });
        }

        public string ToString(string format)
        {
            return String.Format("({0}, {1})", new object[]
            {
                this.x.ToString(format),
                this.y.ToString(format)
            });
        }
    }
}
