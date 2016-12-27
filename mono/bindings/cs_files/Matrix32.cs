using System;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    [StructLayout(LayoutKind.Sequential)]
    public struct Matrix32 : IEquatable<Matrix32>
    {
        private static readonly Matrix32 identity = new Matrix32
        (
            new Vector2(1f, 0f),
            new Vector2(0f, 1f),
            new Vector2(0f, 0f)
        );

        public Vector2 x;
        public Vector2 y;
        public Vector2 o;

        public static Matrix32 Identity
        {
            get { return identity; }
        }

        public Vector2 Origin
        {
            get { return o; }
        }

        public float Rotation
        {
            get { return Mathf.atan2(y.x, o.y); }
        }

        public Vector2 Scale
        {
            get { return new Vector2(x.length(), y.length()); }
        }

        public Vector2 this[int index]
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
                        return o;
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
                        o = value;
                        return;
                    default:
                        throw new IndexOutOfRangeException();
                }
            }
        }


        public float this[int index, int axis]
        {
            get
            {
                switch (index)
                {
                    case 0:
                        return x[axis];
                    case 1:
                        return y[axis];
                    default:
                        throw new IndexOutOfRangeException();
                }
            }
            set
            {
                switch (index)
                {
                    case 0:
                        x[axis] = value;
                        return;
                    case 1:
                        y[axis] = value;
                        return;
                    default:
                        throw new IndexOutOfRangeException();
                }
            }
        }

        public Matrix32 affine_inverse()
        {
            Matrix32 inv = this;

            float det = this[0, 0] * this[1, 1] - this[1, 0] * this[0, 1];

            if (det == 0)
            {
                return new Matrix32
                (
                    float.NaN, float.NaN,
                    float.NaN, float.NaN,
                    float.NaN, float.NaN
                );
            }

            float idet = 1.0f / det;

            float temp = this[0, 0];
            this[0, 0] = this[1, 1];
            this[1, 1] = temp;

            this[0] *= new Vector2(idet, -idet);
            this[1] *= new Vector2(-idet, idet);

            this[2] = basis_xform(-this[2]);

            return inv;
        }

        public Vector2 basis_xform(Vector2 v)
        {
            return new Vector2(tdotx(v), tdoty(v));
        }

        public Vector2 basis_xform_inv(Vector2 v)
        {
            return new Vector2(x.dot(v), y.dot(v));
        }

        public Matrix32 interpolate_with(Matrix32 m, float c)
        {
            float r1 = Rotation;
            float r2 = m.Rotation;

            Vector2 s1 = Scale;
            Vector2 s2 = m.Scale;

            // Slerp rotation
            Vector2 v1 = new Vector2(Mathf.cos(r1), Mathf.sin(r1));
            Vector2 v2 = new Vector2(Mathf.cos(r2), Mathf.sin(r2));

            float dot = v1.dot(v2);

            // Clamp dot to [-1, 1]
            dot = (dot < -1.0f) ? -1.0f : ((dot > 1.0f) ? 1.0f : dot);

            Vector2 v = new Vector2();

            if (dot > 0.9995f)
            {
                // Linearly interpolate to avoid numerical precision issues
                v = v1.linear_interpolate(v2, c).normalized();
            }
            else
            {
                float angle = c * Mathf.acos(dot);
                Vector2 v3 = (v2 - v1 * dot).normalized();
                v = v1 * Mathf.cos(angle) + v3 * Mathf.sin(angle);
            }

            // Extract parameters
            Vector2 p1 = Origin;
            Vector2 p2 = m.Origin;

            // Construct matrix
            Matrix32 res = new Matrix32(Mathf.atan2(v.y, v.x), p1.linear_interpolate(p2, c));
            Vector2 scale = s1.linear_interpolate(s2, c);
            res.x *= scale;
            res.y *= scale;

            return res;
        }

        public Matrix32 inverse()
        {
            Matrix32 inv = this;

            // Swap
            float temp = inv.x.y;
            inv.x.y = inv.y.x;
            inv.y.x = temp;

            inv.o = inv.basis_xform(-inv.o);

            return inv;
        }

        public Matrix32 orthonormalized()
        {
            Matrix32 on = this;

            Vector2 onX = on.x;
            Vector2 onY = on.y;

            onX.normalize();
            onY = onY - onX * (onX.dot(onY));
            onY.normalize();

            on.x = onX;
            on.y = onY;

            return on;
        }

        public Matrix32 rotated(float phi)
        {
            return this * new Matrix32(phi, new Vector2());
        }

        public Matrix32 scaled(Vector2 scale)
        {
            Matrix32 copy = this;
            copy.x *= scale;
            copy.y *= scale;
            copy.o *= scale;
            return copy;
        }

        private float tdotx(Vector2 with)
        {
            return this[0, 0] * with[0] + this[1, 0] * with[1];
        }

        private float tdoty(Vector2 with)
        {
            return this[0, 1] * with[0] + this[1, 1] * with[1];
        }

        public Matrix32 translated(Vector2 offset)
        {
            Matrix32 copy = this;
            copy.o += copy.basis_xform(offset);
            return copy;
        }

        public Vector2 xform(Vector2 v)
        {
            return new Vector2(tdotx(v), tdoty(v)) + o;
        }

        public Vector2 xform_inv(Vector2 v)
        {
            Vector2 vInv = v - o;
            return new Vector2(x.dot(vInv), y.dot(vInv));
        }

        public Matrix32(Vector2 xAxis, Vector2 yAxis, Vector2 origin)
        {
            this.x = xAxis;
            this.y = yAxis;
            this.o = origin;
        }
        public Matrix32(float xx, float xy, float yx, float yy, float ox, float oy)
        {
            this.x = new Vector2(xx, xy);
            this.y = new Vector2(yx, yy);
            this.o = new Vector2(ox, oy);
        }

        public Matrix32(float rot, Vector2 pos)
        {
            float cr = Mathf.cos(rot);
            float sr = Mathf.sin(rot);
            x.x = cr;
            y.y = cr;
            x.y = -sr;
            y.x = sr;
            o = pos;
        }

        public static Matrix32 operator *(Matrix32 left, Matrix32 right)
        {
            left.o = left.xform(right.o);

            float x0, x1, y0, y1;

            x0 = left.tdotx(right.x);
            x1 = left.tdoty(right.x);
            y0 = left.tdotx(right.y);
            y1 = left.tdoty(right.y);

            left.x.x = x0;
            left.x.y = x1;
            left.y.x = y0;
            left.y.y = y1;

            return left;
        }

        public static bool operator ==(Matrix32 left, Matrix32 right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(Matrix32 left, Matrix32 right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is Matrix32)
            {
                return Equals((Matrix32)obj);
            }

            return false;
        }

        public bool Equals(Matrix32 other)
        {
            return x.Equals(other.x) && y.Equals(other.y) && o.Equals(other.o);
        }

        public override int GetHashCode()
        {
            return x.GetHashCode() ^ y.GetHashCode() ^ o.GetHashCode();
        }

        public override string ToString()
        {
            return String.Format("({0}, {1}, {2})", new object[]
            {
                this.x.ToString(),
                this.y.ToString(),
                this.o.ToString()
            });
        }

        public string ToString(string format)
        {
            return String.Format("({0}, {1}, {2})", new object[]
            {
                this.x.ToString(format),
                this.y.ToString(format),
                this.o.ToString(format)
            });
        }
    }
}
