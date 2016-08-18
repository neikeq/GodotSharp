using System;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    [StructLayout(LayoutKind.Sequential)]
    public struct Matrix3 : IEquatable<Matrix3>
    {
        private static readonly Matrix3 identity = new Matrix3
        (
            new Vector3(1f, 0f, 0f),
            new Vector3(0f, 1f, 0f),
            new Vector3(0f, 0f, 1f)
        );

        private static readonly Matrix3[] orthoBases = new Matrix3[24]
        {
            new Matrix3(1f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 1f),
            new Matrix3(0f, -1f, 0f, 1f, 0f, 0f, 0f, 0f, 1f),
            new Matrix3(-1f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 1f),
            new Matrix3(0f, 1f, 0f, -1f, 0f, 0f, 0f, 0f, 1f),
            new Matrix3(1f, 0f, 0f, 0f, 0f, -1f, 0f, 1f, 0f),
            new Matrix3(0f, 0f, 1f, 1f, 0f, 0f, 0f, 1f, 0f),
            new Matrix3(-1f, 0f, 0f, 0f, 0f, 1f, 0f, 1f, 0f),
            new Matrix3(0f, 0f, -1f, -1f, 0f, 0f, 0f, 1f, 0f),
            new Matrix3(1f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, -1f),
            new Matrix3(0f, 1f, 0f, 1f, 0f, 0f, 0f, 0f, -1f),
            new Matrix3(-1f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, -1f),
            new Matrix3(0f, -1f, 0f, -1f, 0f, 0f, 0f, 0f, -1f),
            new Matrix3(1f, 0f, 0f, 0f, 0f, 1f, 0f, -1f, 0f),
            new Matrix3(0f, 0f, -1f, 1f, 0f, 0f, 0f, -1f, 0f),
            new Matrix3(-1f, 0f, 0f, 0f, 0f, -1f, 0f, -1f, 0f),
            new Matrix3(0f, 0f, 1f, -1f, 0f, 0f, 0f, -1f, 0f),
            new Matrix3(0f, 0f, 1f, 0f, 1f, 0f, -1f, 0f, 0f),
            new Matrix3(0f, -1f, 0f, 0f, 0f, 1f, -1f, 0f, 0f),
            new Matrix3(0f, 0f, -1f, 0f, -1f, 0f, -1f, 0f, 0f),
            new Matrix3(0f, 1f, 0f, 0f, 0f, -1f, -1f, 0f, 0f),
            new Matrix3(0f, 0f, 1f, 0f, -1f, 0f, 1f, 0f, 0f),
            new Matrix3(0f, 1f, 0f, 0f, 0f, 1f, 1f, 0f, 0f),
            new Matrix3(0f, 0f, -1f, 0f, 1f, 0f, 1f, 0f, 0f),
            new Matrix3(0f, -1f, 0f, 0f, 0f, -1f, 1f, 0f, 0f)
        };

        public Vector3 x;
        public Vector3 y;
        public Vector3 z;

        public Vector3 this[int index]
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
                    case 2:
                        return z[axis];
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
                    case 2:
                        z[axis] = value;
                        return;
                    default:
                        throw new IndexOutOfRangeException();
                }
            }
        }

        public static Matrix3 CreateFromAxes(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis)
        {
            return new Matrix3
            (
                new Vector3(xAxis.x, yAxis.x, zAxis.x),
                new Vector3(xAxis.y, yAxis.y, zAxis.y),
                new Vector3(xAxis.z, yAxis.z, zAxis.z)
            );
        }

        public float Determinant()
        {
            return this[0, 0] * (this[1, 1] * this[2, 2] - this[2, 1] * this[1, 2]) -
                    this[1, 0] * (this[0, 1] * this[2, 2] - this[2, 1] * this[0, 2]) +
                    this[2, 0] * (this[0, 1] * this[1, 2] - this[1, 1] * this[0, 2]);
        }

        public Vector3 GetAxis(int axis)
        {
            return new Vector3(this[0, axis], this[1, axis], this[2, axis]);
        }

        public Vector3 GetEuler()
        {
            Matrix3 m = this.Orthonormalized();

            Vector3 euler;

            euler.y = Mathf.Asin(m.x[2]);

            if (euler.y < Mathf.PI * 0.5f)
            {
                if (euler.y > -Mathf.PI * 0.5f)
                {
                    euler.x = Mathf.Atan2(-m.y[2], m.z[2]);
                    euler.z = Mathf.Atan2(-m.x[1], m.x[0]);
                }
                else
                {
                    euler.z = 0.0f;
                    euler.x = euler.z - Mathf.Atan2(m.y[0], m.y[1]);
                }
            }
            else
            {
                euler.z = 0f;
                euler.x = Mathf.Atan2(m.x[1], m.y[1]) - euler.z;
            }

            return euler;
        }

        public int GetOrthogonalIndex()
        {
            Matrix3 orth = this;

            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    float v = orth[i, j];

                    if (v > 0.5f)
                        v = 1.0f;
                    else if (v < -0.5f)
                        v = -1.0f;
                    else
                        v = 0f;

                    orth[i, j] = v;
                }
            }

            for (int i = 0; i < 24; i++)
            {
                if (orthoBases[i] == orth)
                    return i;
            }

            return 0;
        }

        public Vector3 GetScale()
        {
            return new Vector3
            (
                new Vector3(this[0, 0], this[1, 0], this[2, 0]).Length(),
                new Vector3(this[0, 1], this[1, 1], this[2, 1]).Length(),
                new Vector3(this[0, 2], this[1, 2], this[2, 2]).Length()
            );
        }

        public Matrix3 Inverse()
        {
            Matrix3 inv = this;

            float[] co = new float[3]
            {
                inv[1, 1] * inv[2, 2] - inv[1, 2] * inv[2, 1],
                inv[1, 2] * inv[2, 0] - inv[1, 0] * inv[2, 2],
                inv[1, 0] * inv[2, 1] - inv[1, 1] * inv[2, 0]
            };

            float det = inv[0, 0] * co[0] + inv[0, 1] * co[1] + inv[0, 2] * co[2];

            if (det == 0)
            {
                return new Matrix3
                (
                    float.NaN, float.NaN, float.NaN,
                    float.NaN, float.NaN, float.NaN,
                    float.NaN, float.NaN, float.NaN
                );
            }

            float s = 1.0f / det;

            inv = new Matrix3
            (
                co[0] * s,
                inv[0, 2] * inv[2, 1] - inv[0, 1] * inv[2, 2] * s,
                inv[0, 1] * inv[1, 2] - inv[0, 2] * inv[1, 1] * s,
                co[1] * s,
                inv[0, 0] * inv[2, 2] - inv[0, 2] * inv[2, 0] * s,
                inv[0, 2] * inv[1, 0] - inv[0, 0] * inv[1, 2] * s,
                co[2] * s,
                inv[0, 1] * inv[2, 0] - inv[0, 0] * inv[2, 1] * s,
                inv[0, 0] * inv[1, 1] - inv[0, 1] * inv[1, 0] * s
            );

            return inv;
        }

        public Matrix3 Orthonormalized()
        {
            Vector3 xAxis = GetAxis(0);
            Vector3 yAxis = GetAxis(1);
            Vector3 zAxis = GetAxis(2);

            xAxis.Normalize();
            yAxis = (yAxis - xAxis * (xAxis.Dot(yAxis)));
            yAxis.Normalize();
            zAxis = (zAxis - xAxis * (xAxis.Dot(zAxis)) - yAxis * (yAxis.Dot(zAxis)));
            zAxis.Normalize();

            return Matrix3.CreateFromAxes(xAxis, yAxis, zAxis);
        }

        public Matrix3 Rotated(Vector3 axis, float phi)
        {
            return this * new Matrix3(axis, phi);
        }

        public Matrix3 Scaled(Vector3 scale)
        {
            Matrix3 m = this;

            m[0, 0] *= scale.x;
            m[1, 0] *= scale.x;
            m[2, 0] *= scale.x;
            m[0, 1] *= scale.y;
            m[1, 1] *= scale.y;
            m[2, 1] *= scale.y;
            m[0, 2] *= scale.z;
            m[1, 2] *= scale.z;
            m[2, 2] *= scale.z;

            return m;
        }

        public float TDotX(Vector3 with)
        {
            return this[0, 0] * with[0] + this[1, 0] * with[1] + this[2, 0] * with[2];
        }

        public float TDotY(Vector3 with)
        {
            return this[0, 1] * with[0] + this[1, 1] * with[1] + this[2, 1] * with[2];
        }

        public float TDotZ(Vector3 with)
        {
            return this[0, 2] * with[0] + this[1, 2] * with[1] + this[2, 2] * with[2];
        }

        public Matrix3 Transposed()
        {
            Matrix3 tr = this;

            float temp = this[0, 1];
            this[0, 1] = this[1, 0];
            this[1, 0] = temp;

            temp = this[0, 2];
            this[0, 2] = this[2, 0];
            this[2, 0] = temp;

            temp = this[1, 2];
            this[1, 2] = this[2, 1];
            this[2, 1] = temp;

            return tr;
        }

        public Vector3 XForm(Vector3 v)
        {
            return new Vector3
            (
                this[0].Dot(v),
                this[1].Dot(v),
                this[2].Dot(v)
            );
        }

        public Vector3 XFormInv(Vector3 v)
        {
            return new Vector3
            (
                (this[0, 0] * v.x) + (this[1, 0] * v.y) + (this[2, 0] * v.z),
                (this[0, 1] * v.x) + (this[1, 1] * v.y) + (this[2, 1] * v.z),
                (this[0, 2] * v.x) + (this[1, 2] * v.y) + (this[2, 2] * v.z)
            );
        }

        public Matrix3(Quat quat)
        {
            float s = 2.0f / quat.LengthSquared();

            float xs = quat.x * s;
            float ys = quat.y * s;
            float zs = quat.z * s;
            float wx = quat.w * xs;
            float wy = quat.w * ys;
            float wz = quat.w * zs;
            float xx = quat.x * xs;
            float xy = quat.x * ys;
            float xz = quat.x * zs;
            float yy = quat.y * ys;
            float yz = quat.y * zs;
            float zz = quat.z * zs;

            this.x = new Vector3(1.0f - (yy + zz), xy - wz, xz + wy);
            this.y = new Vector3(xy + wz, 1.0f - (xx + zz), yz - wx);
            this.z = new Vector3(xz - wy, yz + wx, 1.0f - (xx + yy));
        }

        public Matrix3(Vector3 axis, float phi)
        {
            Vector3 axis_sq = new Vector3(axis.x * axis.x, axis.y * axis.y, axis.z * axis.z);

            float cosine = Mathf.Cos(phi);
            float sine = Mathf.Sin(phi);

            this.x = new Vector3
            (
                axis_sq.x + cosine * (1.0f - axis_sq.x),
                axis.x * axis.y * (1.0f - cosine) + axis.z * sine,
                axis.z * axis.x * (1.0f - cosine) - axis.y * sine
            );

            this.y = new Vector3
            (
                axis.x * axis.y * (1.0f - cosine) - axis.z * sine,
                axis_sq.y + cosine * (1.0f - axis_sq.y),
                axis.y * axis.z * (1.0f - cosine) + axis.x * sine
            );

            this.z = new Vector3
            (
                axis.z * axis.x * (1.0f - cosine) + axis.y * sine,
                axis.y * axis.z * (1.0f - cosine) - axis.x * sine,
                axis_sq.z + cosine * (1.0f - axis_sq.z)
            );
        }

        public Matrix3(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis)
        {
            this.x = xAxis;
            this.y = yAxis;
            this.z = zAxis;
        }

        public Matrix3(float xx, float xy, float xz, float yx, float yy, float yz, float zx, float zy, float zz)
        {
            this.x = new Vector3(xx, xy, xz);
            this.y = new Vector3(yx, yy, yz);
            this.z = new Vector3(zx, zy, zz);
        }

        public static Matrix3 operator *(Matrix3 left, Matrix3 right)
        {
            return new Matrix3
            (
                right.TDotX(left[0]), right.TDotY(left[0]), right.TDotZ(left[0]),
                right.TDotX(left[1]), right.TDotY(left[1]), right.TDotZ(left[1]),
                right.TDotX(left[2]), right.TDotY(left[2]), right.TDotZ(left[2])
            );
        }

        public static bool operator ==(Matrix3 left, Matrix3 right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(Matrix3 left, Matrix3 right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is Matrix3)
            {
                return Equals((Matrix3)obj);
            }

            return false;
        }

        public bool Equals(Matrix3 other)
        {
            return x.Equals(other.x) && y.Equals(other.y) && z.Equals(other.z);
        }

        public override int GetHashCode()
        {
            return x.GetHashCode() ^ y.GetHashCode() ^ z.GetHashCode();
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
