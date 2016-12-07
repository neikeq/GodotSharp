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
        internal void normalize()
        {
            float length = this.length();

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

        public Vector3 abs()
        {
            return new Vector3(Mathf.abs(x), Mathf.abs(y), Mathf.abs(z));
        }

        public Vector3 ceil()
        {
            return new Vector3(Mathf.ceil(x), Mathf.ceil(y), Mathf.ceil(z));
        }

        public Vector3 cross(Vector3 b)
        {
            return new Vector3
            (
                (y * b.z) - (z * b.y),
                (z * b.x) - (x * b.z),
                (x * b.y) - (y * b.x)
            );
        }

        public Vector3 cubic_interpolate(Vector3 b, Vector3 preA, Vector3 postB, float t)
        {
            float t2 = t * t;
            float t3 = t2 * t;

            return 0.5f * (
                        (this * 2.0f) + (-preA + b) * t +
                        (2.0f * preA - 5.0f * this + 4f * b - postB) * t2 +
                        (-preA + 3.0f * this - 3.0f * b + postB) * t3
                    );
        }

        public float distance_squared_to(Vector3 b)
        {
            return (b - this).length_squared();
        }

        public float distance_to(Vector3 b)
        {
            return (b - this).length();
        }

        public float dot(Vector3 b)
        {
            return x * b.x + y * b.y + z * b.z;
        }

        public Vector3 floor()
        {
            return new Vector3(Mathf.floor(x), Mathf.floor(y), Mathf.floor(z));
        }

        public Vector3 inverse()
        {
            return new Vector3(1.0f / x, 1.0f / y, 1.0f / z);
        }

        public float length()
        {
            float x2 = x * x;
            float y2 = y * y;
            float z2 = z * z;

            return Mathf.sqrt(x2 + y2 + z2);
        }

        public float length_squared()
        {
            float x2 = x * x;
            float y2 = y * y;
            float z2 = z * z;

            return x2 + y2 + z2;
        }

        public Vector3 linear_interpolate(Vector3 b, float t)
        {
            return new Vector3
            (
                x + (t * (b.x - x)),
                y + (t * (b.y - y)),
                z + (t * (b.z - z))
            );
        }

        public Axis max_axis()
        {
            return x < y ? (y < z ? Axis.Z : Axis.Y) : (x < z ? Axis.Z : Axis.X);
        }

        public Axis min_axis()
        {
            return x < y ? (x < z ? Axis.X : Axis.Z) : (y < z ? Axis.Y : Axis.Z);
        }

        public Vector3 normalized()
        {
            Vector3 v = this;
            v.normalize();
            return v;
        }

        public Vector3 reflect(Vector3 by)
        {
            return by - this * this.dot(by) * 2.0f;
        }

        public Vector3 rotated(Vector3 axis, float phi)
        {
            return new Matrix3(axis, phi).xform(this);
        }

        public Vector3 slide(Vector3 by)
        {
            return by - this * this.dot(by) * 2.0f;
        }

        public Vector3 snapped(float by)
        {
            return new Vector3
            (
                Mathf.stepify(x, by),
                Mathf.stepify(y, by),
                Mathf.stepify(z, by)
            );
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
            return String.Format("({0}, {1}, {2})", new object[]
            {
                this.x.ToString(),
                this.y.ToString(),
                this.z.ToString()
            });
        }

        public string ToString(string format)
        {
            return String.Format("({0}, {1}, {2})", new object[]
            {
                this.x.ToString(format),
                this.y.ToString(format),
                this.z.ToString(format)
            });
        }
    }
}
