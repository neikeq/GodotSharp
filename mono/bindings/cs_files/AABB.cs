using System;

namespace GodotEngine
{
    public struct AABB : IEquatable<AABB>
    {
        public Vector3 pos;
        public Vector3 size;

        public Vector3 End
        {
            get
            {
                return pos + size;
            }
        }

        public bool encloses(AABB with)
        {
            Vector3 src_min = pos;
            Vector3 src_max = pos + size;
            Vector3 dst_min = with.pos;
            Vector3 dst_max = with.pos + with.size;

            return (src_min.x <= dst_min.x) &&
            (src_max.x > dst_max.x) &&
            (src_min.y <= dst_min.y) &&
            (src_max.y > dst_max.y) &&
            (src_min.z <= dst_min.z) &&
            (src_max.z > dst_max.z);
        }

        public AABB expand(Vector3 to_point)
        {
            Vector3 begin = pos;
            Vector3 end = pos + size;

            if (to_point.x < begin.x)
                begin.x = to_point.x;
            if (to_point.y < begin.y)
                begin.y = to_point.y;
            if (to_point.z < begin.z)
                begin.z = to_point.z;

            if (to_point.x > end.x)
                end.x = to_point.x;
            if (to_point.y > end.y)
                end.y = to_point.y;
            if (to_point.z > end.z)
                end.z = to_point.z;

            return new AABB(begin, end - begin);
        }

        public float get_area()
        {
            return size.x * size.y * size.z;
        }

        public Vector3 get_end_point(int idx)
        {
            switch (idx)
            {
                case 0:
                    return new Vector3(pos.x, pos.y, pos.z);
                case 1:
                    return new Vector3(pos.x, pos.y, pos.z + size.z);
                case 2:
                    return new Vector3(pos.x, pos.y + size.y, pos.z);
                case 3:
                    return new Vector3(pos.x, pos.y + size.y, pos.z + size.z);
                case 4:
                    return new Vector3(pos.x + size.x, pos.y, pos.z);
                case 5:
                    return new Vector3(pos.x + size.x, pos.y, pos.z + size.z);
                case 6:
                    return new Vector3(pos.x + size.x, pos.y + size.y, pos.z);
                case 7:
                    return new Vector3(pos.x + size.x, pos.y + size.y, pos.z + size.z);
                default:
                    throw new ArgumentOutOfRangeException("Index is " + idx + ", but a value from 0 to 7 is expected.");
            }
            ;
        }

        public Vector3 get_longest_axis()
        {
            Vector3 axis = new Vector3(1f, 0f, 0f);
            float max_size = size.x;

            if (size.y > max_size)
            {
                axis = new Vector3(0f, 1f, 0f);
                max_size = size.y;
            }

            if (size.z > max_size)
            {
                axis = new Vector3(0f, 0f, 1f);
                max_size = size.z;
            }

            return axis;
        }

        public int get_longest_axis_index()
        {
            int axis = 0;
            float max_size = size.x;

            if (size.y > max_size)
            {
                axis = 1;
                max_size = size.y;
            }

            if (size.z > max_size)
            {
                axis = 2;
                max_size = size.z;
            }

            return axis;
        }

        public float get_longest_axis_size()
        {
            float max_size = size.x;

            if (size.y > max_size)
                max_size = size.y;

            if (size.z > max_size)
                max_size = size.z;

            return max_size;
        }

        public Vector3 get_shortest_axis()
        {
            Vector3 axis = new Vector3(1f, 0f, 0f);
            float max_size = size.x;

            if (size.y < max_size)
            {
                axis = new Vector3(0f, 1f, 0f);
                max_size = size.y;
            }

            if (size.z < max_size)
            {
                axis = new Vector3(0f, 0f, 1f);
                max_size = size.z;
            }

            return axis;
        }

        public int get_shortest_axis_index()
        {
            int axis = 0;
            float max_size = size.x;

            if (size.y < max_size)
            {
                axis = 1;
                max_size = size.y;
            }

            if (size.z < max_size)
            {
                axis = 2;
                max_size = size.z;
            }

            return axis;
        }

        public float get_shortest_axis_size()
        {
            float max_size = size.x;

            if (size.y < max_size)
                max_size = size.y;

            if (size.z < max_size)
                max_size = size.z;

            return max_size;
        }

        public Vector3 get_support(Vector3 dir)
        {
            Vector3 half_extents = size * 0.5f;
            Vector3 ofs = pos + half_extents;

            return ofs + new Vector3(
                (dir.x > 0f) ? -half_extents.x : half_extents.x,
                (dir.y > 0f) ? -half_extents.y : half_extents.y,
                (dir.z > 0f) ? -half_extents.z : half_extents.z);
        }

        public AABB grow(float by)
        {
            AABB res = this;

            res.pos.x -= by;
            res.pos.y -= by;
            res.pos.z -= by;
            res.size.x += 2.0f * by;
            res.size.y += 2.0f * by;
            res.size.z += 2.0f * by;

            return res;
        }

        public bool has_no_area()
        {
            return size.x <= Mathf.Epsilon || size.y <= Mathf.Epsilon || size.z <= Mathf.Epsilon;
        }

        public bool has_no_surface()
        {
            return size.x <= Mathf.Epsilon && size.y <= Mathf.Epsilon && size.z <= Mathf.Epsilon;
        }

        public bool has_point(Vector3 point)
        {
            if (point.x < pos.x)
                return false;
            if (point.y < pos.y)
                return false;
            if (point.z < pos.z)
                return false;
            if (point.x > pos.x + size.x)
                return false;
            if (point.y > pos.y + size.y)
                return false;
            if (point.z > pos.z + size.z)
                return false;

            return true;
        }

        public AABB intersection(AABB with)
        {
            Vector3 src_min = pos;
            Vector3 src_max = pos + size;
            Vector3 dst_min = with.pos;
            Vector3 dst_max = with.pos + with.size;

            Vector3 min, max;

            if (src_min.x > dst_max.x || src_max.x < dst_min.x)
            {
                return new AABB();
            }
            else
            {
                min.x = (src_min.x > dst_min.x) ? src_min.x : dst_min.x;
                max.x = (src_max.x < dst_max.x) ? src_max.x : dst_max.x;
            }

            if (src_min.y > dst_max.y || src_max.y < dst_min.y)
            {
                return new AABB();
            }
            else
            {
                min.y = (src_min.y > dst_min.y) ? src_min.y : dst_min.y;
                max.y = (src_max.y < dst_max.y) ? src_max.y : dst_max.y;
            }

            if (src_min.z > dst_max.z || src_max.z < dst_min.z)
            {
                return new AABB();
            }
            else
            {
                min.z = (src_min.z > dst_min.z) ? src_min.z : dst_min.z;
                max.z = (src_max.z < dst_max.z) ? src_max.z : dst_max.z;
            }

            return new AABB(min, max - min);
        }

        public bool intersects(AABB with)
        {
            if (pos.x >= (with.pos.x + with.size.x))
                return false;
            if ((pos.x + size.x) <= with.pos.x)
                return false;
            if (pos.y >= (with.pos.y + with.size.y))
                return false;
            if ((pos.y + size.y) <= with.pos.y)
                return false;
            if (pos.z >= (with.pos.z + with.size.z))
                return false;
            if ((pos.z + size.z) <= with.pos.z)
                return false;

            return true;
        }

        public bool intersects_plane(Plane plane)
        {
            Vector3[] points =
            {
                new Vector3(pos.x, pos.y, pos.z),
                new Vector3(pos.x, pos.y, pos.z + size.z),
                new Vector3(pos.x, pos.y + size.y, pos.z),
                new Vector3(pos.x, pos.y + size.y, pos.z + size.z),
                new Vector3(pos.x + size.x, pos.y, pos.z),
                new Vector3(pos.x + size.x, pos.y, pos.z + size.z),
                new Vector3(pos.x + size.x, pos.y + size.y, pos.z),
                new Vector3(pos.x + size.x, pos.y + size.y, pos.z + size.z),
            };

            bool over = false;
            bool under = false;

            for (int i = 0; i < 8; i++)
            {
                if (plane.distance_to(points[i]) > 0)
                    over = true;
                else
                    under = true;
            }

            return under && over;
        }

        public bool intersects_segment(Vector3 from, Vector3 to)
        {
            float min = 0f;
            float max = 1f;
            int axis = 0;
            float sign = 0f;

            for (int i = 0; i < 3; i++)
            {
                float seg_from = from[i];
                float seg_to = to[i];
                float box_begin = pos[i];
                float box_end = box_begin + size[i];
                float cmin, cmax;
                float csign;

                if (seg_from < seg_to)
                {
                    if (seg_from > box_end || seg_to < box_begin)
                        return false;

                    float length = seg_to - seg_from;
                    cmin = seg_from < box_begin ? (box_begin - seg_from) / length : 0f;
                    cmax = seg_to > box_end ? (box_end - seg_from) / length : 1f;
                    csign = -1.0f;
                }
                else
                {
                    if (seg_to > box_end || seg_from < box_begin)
                        return false;

                    float length = seg_to - seg_from;
                    cmin = seg_from > box_end ? (box_end - seg_from) / length : 0f;
                    cmax = seg_to < box_begin ? (box_begin - seg_from) / length : 1f;
                    csign = 1.0f;
                }

                if (cmin > min)
                {
                    min = cmin;
                    axis = i;
                    sign = csign;
                }

                if (cmax < max)
                    max = cmax;
                if (max < min)
                    return false;
            }

            return true;
        }

        public AABB merge(AABB with)
        {
            Vector3 beg_1 = pos;
            Vector3 beg_2 = with.pos;
            Vector3 end_1 = new Vector3(size.x, size.y, size.z) + beg_1;
            Vector3 end_2 = new Vector3(with.size.x, with.size.y, with.size.z) + beg_2;

            Vector3 min = new Vector3(
                              (beg_1.x < beg_2.x) ? beg_1.x : beg_2.x,
                              (beg_1.y < beg_2.y) ? beg_1.y : beg_2.y,
                              (beg_1.z < beg_2.z) ? beg_1.z : beg_2.z
                          );

            Vector3 max = new Vector3(
                              (end_1.x > end_2.x) ? end_1.x : end_2.x,
                              (end_1.y > end_2.y) ? end_1.y : end_2.y,
                              (end_1.z > end_2.z) ? end_1.z : end_2.z
                          );

            return new AABB(min, max - min);
        }

        public AABB(Vector3 pos, Vector3 size)
        {
            this.pos = pos;
            this.size = size;
        }

        public static bool operator ==(AABB left, AABB right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(AABB left, AABB right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is AABB)
            {
                return Equals((AABB)obj);
            }

            return false;
        }

        public bool Equals(AABB other)
        {
            return pos == other.pos && size == other.size;
        }

        public override int GetHashCode()
        {
            return pos.GetHashCode() ^ size.GetHashCode();
        }

        public override string ToString()
        {
            return String.Format("{0} - {1}", new object[]
                {
                    this.pos.ToString(),
                    this.size.ToString()
                });
        }

        public string ToString(string format)
        {
            return String.Format("{0} - {1}", new object[]
                {
                    this.pos.ToString(format),
                    this.size.ToString(format)
                });
        }
    }
}
