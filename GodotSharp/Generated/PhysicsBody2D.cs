using System;

namespace GodotEngine
{
    /// <summary>
    /// PhysicsBody2D is an abstract base class for implementing a physics body. All *Body2D types inherit from it.
    /// </summary>
    public class PhysicsBody2D : CollisionObject2D
    {
        private const string nativeName = "PhysicsBody2D";

        internal PhysicsBody2D() {}

        internal PhysicsBody2D(bool memoryOwn) : base(memoryOwn) {}

        ~PhysicsBody2D()
        {
            Dispose();
        }

        public override void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    if (memoryOwn)
                    {
                        memoryOwn = false;
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask");

        /// <summary>
        /// Set the physics layers this area is in.
        /// Collidable objects can exist in any of 32 different layers. These layers are not visual, but more of a tagging system instead. A collidable can use these layers/tags to select with which objects it can collide, using [method set_collision_mask].
        /// A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A.
        /// </summary>
        public void set_layer_mask(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask");

        /// <summary>
        /// Return the physics layer this area is in.
        /// </summary>
        public int get_layer_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_mask");

        /// <summary>
        /// Set the physics layers this area can scan for collisions.
        /// </summary>
        public void set_collision_mask(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_mask");

        /// <summary>
        /// Return the physics layers this area can scan for collisions.
        /// </summary>
        public int get_collision_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_mask_bit");

        /// <summary>
        /// Set/clear individual bits on the collision mask. This makes selecting the areas scanned easier.
        /// </summary>
        public void set_collision_mask_bit(int bit, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_4, Object.GetPtr(this), bit, @value);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_mask_bit");

        /// <summary>
        /// Return an individual bit on the collision mask.
        /// </summary>
        public bool get_collision_mask_bit(int bit)
        {
            return NativeCalls.godot_icall_1_33(method_bind_5, Object.GetPtr(this), bit);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask_bit");

        /// <summary>
        /// Set/clear individual bits on the layer mask. This makes getting a body in/out of only one layer easier.
        /// </summary>
        public void set_layer_mask_bit(int bit, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_6, Object.GetPtr(this), bit, @value);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask_bit");

        /// <summary>
        /// Return an individual bit on the collision mask.
        /// </summary>
        public bool get_layer_mask_bit(int bit)
        {
            return NativeCalls.godot_icall_1_33(method_bind_7, Object.GetPtr(this), bit);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_one_way_collision_direction");

        /// <summary>
        /// Set a direction in which bodies can go through this one. If this value is different from (0,0), any movement within 90 degrees of this vector is considered a valid movement. Set this direction to (0,0) to disable one-way collisions.
        /// </summary>
        public void set_one_way_collision_direction(Vector2 dir)
        {
            NativeCalls.godot_icall_1_23(method_bind_8, Object.GetPtr(this), ref dir);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_one_way_collision_direction");

        /// <summary>
        /// Return the direction used for one-way collision detection.
        /// </summary>
        public Vector2 get_one_way_collision_direction()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_9, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_one_way_collision_max_depth");

        /// <summary>
        /// Set how far a body can go through this one, when it allows one-way collisions (see [method set_one_way_collision_direction]).
        /// </summary>
        public void set_one_way_collision_max_depth(float depth)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), depth);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_one_way_collision_max_depth");

        /// <summary>
        /// Return how far a body can go through this one, when it allows one-way collisions.
        /// </summary>
        public float get_one_way_collision_max_depth()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_collision_exception_with");

        /// <summary>
        /// Adds a body to the collision exception list. This list contains bodies that this body will not collide with.
        /// </summary>
        public void add_collision_exception_with(PhysicsBody2D body)
        {
            NativeCalls.godot_icall_1_20(method_bind_12, Object.GetPtr(this), Object.GetPtr(body));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_collision_exception_with");

        /// <summary>
        /// Removes a body from the collision exception list.
        /// </summary>
        public void remove_collision_exception_with(PhysicsBody2D body)
        {
            NativeCalls.godot_icall_1_20(method_bind_13, Object.GetPtr(this), Object.GetPtr(body));
        }
    }
}
