using System;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    [StructLayout(LayoutKind.Sequential)]
    public struct Transform : IEquatable<Transform>
    {
        public Matrix3 basis;
        public Vector3 origin;

        public Transform AffineInverse()
        {
            Matrix3 basisInv = basis.Inverse();
            return new Transform(basisInv, basisInv.XForm(-origin));
        }

        public Transform Inverse()
        {
            Matrix3 basisTr = basis.Transposed();
            return new Transform(basisTr, basisTr.XForm(-origin));
        }

        public Transform LookingAt(Vector3 target, Vector3 up)
        {
            Transform t = this;
            t.SetLookAt(origin, target, up);
            return t;
        }

        public Transform Orthonormalized()
        {
            return new Transform(basis.Orthonormalized(), origin);
        }

        public Transform Rotated(Vector3 axis, float phi)
        {
            return this * new Transform(new Matrix3(axis, phi), new Vector3());
        }

        public Transform Scaled(Vector3 scale)
        {
            return new Transform(basis.Scaled(scale), origin * scale);
        }

        public void SetLookAt(Vector3 eye, Vector3 target, Vector3 up)
        {
            // Make rotation matrix
            // Z vector
            Vector3 zAxis = eye - target;

            zAxis.Normalize();

            Vector3 yAxis = up;

            Vector3 xAxis = yAxis.Cross(zAxis);

            // Recompute Y = Z cross X
            yAxis = zAxis.Cross(xAxis);

            xAxis.Normalize();
            yAxis.Normalize();

            basis = Matrix3.CreateFromAxes(xAxis, yAxis, zAxis);

            origin = eye;
        }

        public Transform Translated(Vector3 ofs)
        {
            return new Transform(basis, new Vector3
            (
                origin[0] += basis[0].Dot(ofs),
                origin[1] += basis[1].Dot(ofs),
                origin[2] += basis[2].Dot(ofs)
            ));
        }

        public Vector3 XForm(Vector3 v)
        {
            return new Vector3
            (
                basis[0].Dot(v) + origin.x,
                basis[1].Dot(v) + origin.y,
                basis[2].Dot(v) + origin.z
            );
        }

        public Vector3 XFormInv(Vector3 v)
        {
            Vector3 vInv = v - origin;

            return new Vector3
            (
                (basis[0, 0] * vInv.x) + (basis[1, 0] * vInv.y) + (basis[2, 0] * vInv.z),
                (basis[0, 1] * vInv.x) + (basis[1, 1] * vInv.y) + (basis[2, 1] * vInv.z),
                (basis[0, 2] * vInv.x) + (basis[1, 2] * vInv.y) + (basis[2, 2] * vInv.z)
            );
        }

        public Transform(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis, Vector3 origin)
        {
            this.basis = Matrix3.CreateFromAxes(xAxis, yAxis, zAxis);
            this.origin = origin;
        }

        public Transform(Matrix3 basis, Vector3 origin)
        {
            this.basis = basis;
            this.origin = origin;
        }

        public static Transform operator *(Transform left, Transform right)
        {
            left.origin = left.XForm(right.origin);
            left.basis *= right.basis;
            return left;
        }

        public static bool operator ==(Transform left, Transform right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(Transform left, Transform right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is Transform)
            {
                return Equals((Transform)obj);
            }

            return false;
        }

        public bool Equals(Transform other)
        {
            return basis.Equals(other.basis) && origin.Equals(other.origin);
        }

        public override int GetHashCode()
        {
            return basis.GetHashCode() ^ origin.GetHashCode();
        }

        public override string ToString()
        {
            return String.Format("{1} - {2}", new object[]
            {
                this.basis.ToString(),
                this.origin.ToString()
            });
        }

        public string ToString(string format)
        {
            return String.Format("{1} - {2}", new object[]
            {
                this.basis.ToString(format),
                this.origin.ToString(format)
            });
        }
    }
}
