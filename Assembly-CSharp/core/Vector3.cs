using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    [StructLayout(LayoutKind.Sequential)]
    public struct Vector3 : IEquatable<Vector3>
    {
        public enum Axis
        {
            X = 0,
            Y,
            Z
        }

        public float x;
        public float y;
        public float z;

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
                    case 2:
                        return z;
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
                    case 2:
                        z = value;
                        return;
                    default:
                        throw new IndexOutOfRangeException();
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        internal void Normalize()
        {
            float length = this.Length();

            if (length == 0f)
            {
                x = y = z = 0f;
            }
            else
            {
                x /= length;
                y /= length;
                z /= length;
            }
        }

        public Vector3 Abs()
        {
            return new Vector3(Mathf.Abs(x), Mathf.Abs(y), Mathf.Abs(z));
        }

        public Vector3 Ceil()
        {
            return new Vector3(Mathf.Ceil(x), Mathf.Ceil(y), Mathf.Ceil(z));
        }

        public Vector3 Cross(Vector3 b)
        {
            Vector3 ret = new Vector3
            (
                (y * b.z) - (z * b.y),
                (z * b.x) - (x * b.z),
                (x * b.y) - (y * b.x)
            );

            return ret;
        }

        public Vector3 CubicInterpolate(Vector3 b, Vector3 preA, Vector3 postB, float t)
        {
            float t2 = t * t;
            float t3 = t2 * t;

            Vector3 ret = 0.5f * ((this * 2.0f) + (-preA + b) * t +
                    (2.0f * preA - 5.0f * this + 4f * b - postB) * t2 +
                    (-preA + 3.0f * this - 3.0f * b + postB) * t3);

            return ret;
        }

        public float DistanceSquaredTo(Vector3 b)
        {
            return (b - this).LengthSquared();
        }

        public float DistanceTo(Vector3 b)
        {
            return (b - this).Length();
        }

        public float Dot(Vector3 b)
        {
            return x * b.x + y * b.y + z * b.z;
        }

        public Vector3 Floor()
        {
            return new Vector3(Mathf.Floor(x), Mathf.Floor(y), Mathf.Floor(z));
        }

        public Vector3 Inverse()
        {
            return new Vector3(1.0f / x, 1.0f / y, 1.0f / z);
        }

        public float Length()
        {
            float x2 = x * x;
            float y2 = y * y;
            float z2 = z * z;

            return Mathf.Sqrt(x2 + y2 + z2);
        }

        public float LengthSquared()
        {
            float x2 = x * x;
            float y2 = y * y;
            float z2 = z * z;

            return x2 + y2 + z2;
        }

        public Vector3 LinearInterpolate(Vector3 b, float t)
        {
            return new Vector3
            (
                x + (t * (b.x - x)),
                y + (t * (b.y - y)),
                z + (t * (b.z - z))
            );
        }

        public Axis MaxAxis()
        {
            return x < y ? (y < z ? Axis.Z : Axis.Y) : (x < z ? Axis.Z : Axis.X);
        }

        public Axis MinAxis()
        {
            return x < y ? (x < z ? Axis.X : Axis.Z) : (y < z ? Axis.Y : Axis.Z);
        }

        public Vector3 Normalized()
        {
            Vector3 v = this;
            v.Normalize();
            return v;
        }

        public Vector3 Reflect(Vector3 by)
        {
            return by - this * this.Dot(by) * 2.0f;
        }

        public Vector3 Rotated(Vector3 axis, float phi)
        {
            return new Matrix3(axis, phi).XForm(this);
        }

        public Vector3 Slide(Vector3 by)
        {
            return by - this * this.Dot(by) * 2.0f;
        }

        public Vector3 Snapped(float by)
        {
            Vector3 v = this;

            x += by / 2.0f;
            x -= x % by;
            y += by / 2.0f;
            y -= y % by;
            z += by / 2.0f;
            z -= z % by;

            return v;
        }

        public Vector3(float x, float y, float z)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }

        public static Vector3 operator +(Vector3 left, Vector3 right)
        {
            left.x += right.x;
            left.y += right.y;
            left.z += right.z;
            return left;
        }

        public static Vector3 operator -(Vector3 left, Vector3 right)
        {
            left.x -= right.x;
            left.y -= right.y;
            left.z -= right.z;
            return left;
        }

        public static Vector3 operator -(Vector3 vec)
        {
            vec.x = -vec.x;
            vec.y = -vec.y;
            vec.z = -vec.z;
            return vec;
        }

        public static Vector3 operator *(Vector3 vec, float scale)
        {
            vec.x *= scale;
            vec.y *= scale;
            vec.z *= scale;
            return vec;
        }

        public static Vector3 operator *(float scale, Vector3 vec)
        {
            vec.x *= scale;
            vec.y *= scale;
            vec.z *= scale;
            return vec;
        }

        public static Vector3 operator *(Vector3 left, Vector3 right)
        {
            left.x *= right.x;
            left.y *= right.y;
            left.z *= right.z;
            return left;
        }

        public static Vector3 operator /(Vector3 vec, float scale)
        {
            vec.x /= scale;
            vec.y /= scale;
            vec.z /= scale;
            return vec;
        }

        public static Vector3 operator /(Vector3 left, Vector3 right)
        {
            left.x /= right.x;
            left.y /= right.y;
            left.z /= right.z;
            return left;
        }

        public static bool operator ==(Vector3 left, Vector3 right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(Vector3 left, Vector3 right)
        {
            return !left.Equals(right);
        }

        public static bool operator <(Vector3 left, Vector3 right)
        {
            if (left.x == right.x)
            {
                if (left.y == right.y)
                    return left.z < right.z;
                else
                    return left.y < right.y;
            }

            return left.x < right.x;
        }

        public static bool operator >(Vector3 left, Vector3 right)
        {
            if (left.x == right.x)
            {
                if (left.y == right.y)
                    return left.z > right.z;
                else
                    return left.y > right.y;
            }

            return left.x > right.x;
        }

        public static bool operator <=(Vector3 left, Vector3 right)
        {
            if (left.x == right.x)
            {
                if (left.y == right.y)
                    return left.z <= right.z;
                else
                    return left.y < right.y;
            }

            return left.x < right.x;
        }

        public static bool operator >=(Vector3 left, Vector3 right)
        {
            if (left.x == right.x)
            {
                if (left.y == right.y)
                    return left.z >= right.z;
                else
                    return left.y > right.y;
            }

            return left.x > right.x;
        }

        public override bool Equals(object obj)
        {
            if (obj is Vector3)
            {
                return Equals((Vector3)obj);
            }

            return false;
        }

        public bool Equals(Vector3 other)
        {
            return x == other.x && y == other.y && z == other.z;
        }

        public override int GetHashCode()
        {
            return y.GetHashCode() ^ x.GetHashCode() ^ z.GetHashCode();
        }

        public override string ToString()
        {
            return String.Format("({1}, {2}, {3})", new object[]
            {
                this.x.ToString(),
                this.y.ToString(),
                this.z.ToString()
            });
        }

        public string ToString(string format)
        {
            return String.Format("({1}, {2}, {3})", new object[]
            {
                this.x.ToString(format),
                this.y.ToString(format),
                this.z.ToString(format)
            });
        }
    }
}
