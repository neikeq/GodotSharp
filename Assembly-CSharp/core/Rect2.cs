using System;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    [StructLayout(LayoutKind.Sequential)]
    public struct Rect2 : IEquatable<Rect2>
    {
        public Vector2 pos;
        public Vector2 size;

        public Vector2 End
        {
            get { return pos + size; }
        }

        public Rect2 Clip(Rect2 b)
        {
            Rect2 newRect = b;

            if (!Intersects(newRect))
            {
                newRect.pos.x = Mathf.Max(b.pos.x, pos.x);
                newRect.pos.y = Mathf.Max(b.pos.y, pos.y);

                Vector2 bEnd = b.End;
                Vector2 end = End;

                newRect.size.width = Mathf.Min(bEnd.x, end.x) - newRect.pos.x;
                newRect.size.height = Mathf.Min(bEnd.y, end.y) - newRect.pos.y;

                return newRect;
            }

            return new Rect2();
        }

        public bool Encloses(Rect2 b)
        {
            return (b.pos.x >= pos.x) &&
                    (b.pos.y >= pos.y) &&
                    ((b.pos.x + b.size.width) < (pos.x + size.width)) &&
                    ((b.pos.y + b.size.height) < (pos.y + size.height));
        }

        public Rect2 Expand(Vector2 b)
        {
            Rect2 expanded = this;

            Vector2 begin = expanded.pos;
            Vector2 end = expanded.End;

            if (b.x < begin.x)
                begin.x = b.x;
            if (b.y < begin.y)
                begin.y = b.y;

            if (b.x > end.x)
                end.x = b.x;
            if (b.y > end.y)
                end.y = b.y;

            expanded.pos = begin;
            expanded.size = end - begin;

            return expanded;
        }

        public float GetArea()
        {
            return size.width * size.height;
        }

        public Rect2 Grow(float by)
        {
            Rect2 g = this;

            g.pos.x -= by;
            g.pos.y -= by;
            g.size.width += by * 2;
            g.size.height += by * 2;

            return g;
        }

        public bool HasNoArea()
        {
            return size.width <= 0 || size.height <= 0;
        }

        public bool HasPoint(Vector2 point)
        {
            return point.x >= pos.x &&
                    point.y >= pos.y &&
                    point.x < (pos.x + size.width) &&
                    point.y < (pos.y + size.height);
        }

        public bool Intersects(Rect2 b)
        {
            return pos.x < (b.pos.x + b.size.width) &&
                    b.pos.x < (pos.x + size.width) &&
                    pos.y < (b.pos.y + b.size.height) &&
                    b.pos.y < (pos.y + size.height);
        }

        public Rect2 Merge(Rect2 b)
        {
            Rect2 newRect;

            newRect.pos.x = Mathf.Min(b.pos.x, pos.x);
            newRect.pos.y = Mathf.Min(b.pos.y, pos.y);


            newRect.size.x = Mathf.Max(b.pos.x + b.size.width, pos.x + size.width);
            newRect.size.y = Mathf.Max(b.pos.y + b.size.height, pos.y + size.height);

            // Make relative again
            newRect.size = newRect.size - newRect.pos;

            return newRect;
        }

        public Rect2(Vector2 pos, Vector2 size)
        {
            this.pos = pos;
            this.size = size;
        }

        public Rect2(float x, float y, float width, float height)
        {
            this.pos = new Vector2(x, y);
            this.size = new Vector2(width, height);
        }

        public static bool operator ==(Rect2 left, Rect2 right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(Rect2 left, Rect2 right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is Rect2)
            {
                return Equals((Rect2)obj);
            }

            return false;
        }

        public bool Equals(Rect2 other)
        {
            return pos.Equals(other.pos) && size.Equals(other.size);
        }

        public override int GetHashCode()
        {
            return pos.GetHashCode() ^ size.GetHashCode();
        }

        public override string ToString()
        {
            return String.Format("({1}, {2})", new object[]
            {
                this.pos.ToString(),
                this.size.ToString()
            });
        }

        public string ToString(string format)
        {
            return String.Format("({1}, {2})", new object[]
            {
                this.pos.ToString(format),
                this.size.ToString(format)
            });
        }
    }
}