using System;

namespace GodotEngine
{
    public static class Mathf
    {
        public const float PI = 3.14159274f;

        public static float abs(float s)
        {
            return Math.Abs(s);
        }

        public static float sign(float s)
        {
            return (s < 0f) ? -1f : 1f;
        }

        public static float sin(float s)
        {
            return (float)Math.Sin((double)s);
        }
    }
}
