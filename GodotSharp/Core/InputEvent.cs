using System;
using System.Runtime.InteropServices;

namespace GodotEngine
{
    [StructLayout(LayoutKind.Explicit)]
    public struct InputEvent : IEquatable<InputEvent>
    {
        [FieldOffset(0)]
        public int ID;
        [FieldOffset(4)]
        public Type type;
        [FieldOffset(8)]
        public int device;

        [FieldOffset(12)]
        public InputEventAction action;
        [FieldOffset(12)]
        public InputEventJoystickButton joy_button;
        [FieldOffset(12)]
        public InputEventJoystickMotion joy_motion;
        [FieldOffset(12)]
        public InputEventKey key;
        [FieldOffset(12)]
        public InputEventMouseButton mouse_button;
        [FieldOffset(12)]
        public InputEventMouseMotion mouse_motion;
        [FieldOffset(12)]
        public InputEventScreenDrag screen_drag;
        [FieldOffset(12)]
        public InputEventScreenTouch screen_touch;

        public enum Type : int
        {
            NONE = 0,
            KEY,
            MOUSE_MOTION,
            MOUSE_BUTTON,
            JOYSTICK_MOTION,
            JOYSTICK_BUTTON,
            SCREEN_TOUCH,
            SCREEN_DRAG,
            ACTION
        };

        public bool is_action(string name)
        {
            return InputMap.event_is_action(this, name);
        }

        public bool is_action_pressed(string name)
        {
            return is_action(name) && is_pressed() && !is_echo();
        }

        public bool is_action_released(string name)
        {
            return is_action(name) && !is_pressed();
        }

        public bool is_echo()
        {
            return type == Type.KEY && key.echo;
        }

        public bool is_pressed()
        {
            switch (type)
            {
                case Type.KEY:
                    return key.pressed;
                case Type.MOUSE_BUTTON:
                    return mouse_button.pressed;
                case Type.JOYSTICK_BUTTON:
                    return joy_button.pressed;
                case Type.SCREEN_TOUCH:
                    return screen_touch.pressed;
                case Type.JOYSTICK_MOTION:
                    return Mathf.abs(joy_motion.axis_value) > 0.5f;
                case Type.ACTION:
                    return action.pressed;
                default:
                    return false;
            }
        }

        public void set_as_action(string name, bool pressed)
        {
            type = Type.ACTION;
            action.action = InputMap.get_action_id(name);
            action.pressed = pressed;
        }

        public static bool operator ==(InputEvent left, InputEvent right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEvent left, InputEvent right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEvent)
            {
                return Equals((InputEvent)obj);
            }

            return false;
        }

        public bool Equals(InputEvent other)
        {
            if (type != other.type)
                return false;

            switch (type)
            {
                case Type.ACTION:
                    return action == other.action;
                case Type.JOYSTICK_BUTTON:
                    return joy_button == other.joy_button;
                case Type.JOYSTICK_MOTION:
                    return joy_motion == other.joy_motion;
                case Type.KEY:
                    return key == other.key;
                case Type.MOUSE_BUTTON:
                    return mouse_button == other.mouse_button && key.mod == other.key.mod;
                case Type.MOUSE_MOTION:
                    return mouse_motion == other.mouse_motion && key.mod == other.key.mod;
                case Type.SCREEN_DRAG:
                    return screen_drag == other.screen_drag;
                case Type.SCREEN_TOUCH:
                    return screen_touch == other.screen_touch;
            }

            return false;
        }

        public override int GetHashCode()
        {
            return type.GetHashCode() ^ device.GetHashCode() ^ ID.GetHashCode() ^
                action.GetHashCode() ^ joy_button.GetHashCode() ^ joy_motion.GetHashCode() ^
                key.GetHashCode() ^ mouse_button.GetHashCode() ^ mouse_motion.GetHashCode() ^
                screen_drag.GetHashCode() ^ screen_touch.GetHashCode();
        }

        public override string ToString()
        {
            string str = String.Format("Device {0} ID {1} ", new object[] { device, ID });

            switch (type)
            {
                case Type.NONE:
                    return "Event: None";
                case Type.KEY:
                    return str + key;
                case Type.MOUSE_MOTION:
                    return str + mouse_motion + key.mod;
                case Type.MOUSE_BUTTON:
                    return str + mouse_button + key.mod;
                case Type.JOYSTICK_MOTION:
                    return str + joy_motion;
                case Type.JOYSTICK_BUTTON:
                    return str + joy_button;
                case Type.SCREEN_TOUCH:
                    return str + screen_touch;
                case Type.SCREEN_DRAG:
                    return str + screen_drag;
                case Type.ACTION:
                    return str + action;
            }

            return "";
        }
    }

    [StructLayout(LayoutKind.Explicit)]
    public struct InputModifierState : IEquatable<InputModifierState>
    {
        [FieldOffset(0)]
        public bool shift;
        [FieldOffset(1)]
        public bool alt;

#if APPLE_STYLE_KEYS
        [FieldOffset(2)]
        public bool command;
        [FieldOffset(2)]
        public bool meta;

        [FieldOffset(3)]
        public bool control;
#else
        [FieldOffset(2)]
        public bool command;
        [FieldOffset(2)]
        public bool control;

        [FieldOffset(3)]
        public bool meta;
#endif

        public bool Any
        {
            get
            {
                return shift || alt || command || control || meta;
            }
        }

        public static bool operator ==(InputModifierState left, InputModifierState right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputModifierState left, InputModifierState right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputModifierState)
            {
                return Equals((InputModifierState)obj);
            }

            return false;
        }

        public bool Equals(InputModifierState other)
        {
            return shift == other.shift && alt == other.alt &&
                control == other.control && meta == other.meta;
        }

        public override int GetHashCode()
        {
            return shift.GetHashCode() ^ alt.GetHashCode() ^
                command.GetHashCode() ^ control.GetHashCode() ^ meta.GetHashCode();
        }

        public override string ToString()
        {
            string str = string.Empty;

            if (shift)
                str += "S";
            if (control)
                str += "C";
            if (alt)
                str += "A";
            if (meta)
                str += "M";

            return str.Length == 0 ? str : " Mod: " + str;
        }
    }

    public struct InputEventAction : IEquatable<InputEventAction>
    {
        public int action;
        public bool pressed;

        public static bool operator ==(InputEventAction left, InputEventAction right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventAction left, InputEventAction right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventAction)
            {
                return Equals((InputEventAction)obj);
            }

            return false;
        }

        public bool Equals(InputEventAction other)
        {
            return action == other.action && pressed == other.pressed;
        }

        public override int GetHashCode()
        {
            return action.GetHashCode() ^ pressed.GetHashCode();
        }

        public override string ToString()
        {
            return string.Format("Event: Action Name: {0} Pressed: {1}",
                new object[] { InputMap.get_action_from_id(action), pressed });
        }
    }

    public struct InputEventJoystickButton : IEquatable<InputEventJoystickButton>
    {
        public int button_index;
        public bool pressed;
        public float pressure;

        public static bool operator ==(InputEventJoystickButton left, InputEventJoystickButton right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventJoystickButton left, InputEventJoystickButton right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventJoystickButton)
            {
                return Equals((InputEventJoystickButton)obj);
            }

            return false;
        }

        public bool Equals(InputEventJoystickButton other)
        {
            return pressed == other.pressed && button_index == other.button_index && pressure == other.pressure;
        }

        public override int GetHashCode()
        {
            return pressed.GetHashCode() ^ button_index.GetHashCode() ^ pressure.GetHashCode();
        }

        public override string ToString()
        {
            return string.Format("Event: JoystickButton Pressed: {0} Index: {1} Pressure: {2}",
                new object[] { pressed, button_index, pressure });
        }
    }

    public struct InputEventJoystickMotion : IEquatable<InputEventJoystickMotion>
    {
        public int axis;
        public float axis_value;

        public static bool operator ==(InputEventJoystickMotion left, InputEventJoystickMotion right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventJoystickMotion left, InputEventJoystickMotion right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventJoystickMotion)
            {
                return Equals((InputEventJoystickMotion)obj);
            }

            return false;
        }

        public bool Equals(InputEventJoystickMotion other)
        {
            return axis == other.axis && axis_value == other.axis_value;
        }

        public override int GetHashCode()
        {
            return axis.GetHashCode() ^ axis_value.GetHashCode();
        }

        public override string ToString()
        {
            return string.Format("Event: JoystickMotion Axis: {0} Value: {1}",
                new object[] { axis, axis_value });
        }
    }

    public struct InputEventKey : IEquatable<InputEventKey>
    {
        public InputModifierState mod;

        public bool pressed;

        public int scancode;
        public int unicode;

        public bool echo;

        public int get_scancode_with_modifiers()
        {
            int sc = scancode;

            if (mod.control)
                sc |= Godot.KEY_MASK_CTRL;
            if (mod.alt)
                sc |= Godot.KEY_MASK_ALT;
            if (mod.shift)
                sc |= Godot.KEY_MASK_SHIFT;
            if (mod.meta)
                sc |= Godot.KEY_MASK_META;

            return sc;
        }

        public static bool operator ==(InputEventKey left, InputEventKey right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventKey left, InputEventKey right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventKey)
            {
                return Equals((InputEventKey)obj);
            }

            return false;
        }

        public bool Equals(InputEventKey other)
        {
            return unicode == other.unicode && scancode == other.scancode &&
                echo == other.echo && pressed == other.pressed && mod == other.mod;
        }

        public override int GetHashCode()
        {
            return unicode.GetHashCode() ^ scancode.GetHashCode() ^
                echo.GetHashCode() ^ pressed.GetHashCode() ^ mod.GetHashCode();
        }

        public override string ToString()
        {
            return string.Format("Event: Key Unicode: {0} Scan: {1} Echo: {2} Pressed: {3}" + mod,
                new object[] { unicode, scancode, echo, pressed });
        }
    }

    public struct InputEventMouseButton : IEquatable<InputEventMouseButton>
    {
        public InputModifierState mod;
        public int button_mask;
        public int x;
        public int y;
        public int global_x;
        public int global_y;
        public int pointer_index;

        public int button_index;
        public bool pressed;
        public bool doubleclick;

        public static bool operator ==(InputEventMouseButton left, InputEventMouseButton right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventMouseButton left, InputEventMouseButton right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventMouseButton)
            {
                return Equals((InputEventMouseButton)obj);
            }

            return false;
        }

        public bool Equals(InputEventMouseButton other)
        {
            return pressed == other.pressed && x == other.x && y == other.y &&
                button_index == other.button_index && button_mask == other.button_mask;
        }

        public override int GetHashCode()
        {
            return pressed.GetHashCode() ^ x.GetHashCode() ^ y.GetHashCode() ^
                button_index.GetHashCode() ^ button_mask.GetHashCode();
        }

        public override string ToString()
        {
            string str = string.Format("Event: Button Pressed: {0} Pos: ({1}, {2}) Button: {3} Mask: ",
                new object[] { pressed, x, y, button_index });

            for (int i = 0; i < 8; i++)
            {
                if (((1 << i) & button_mask) == 1)
                    str += (i + 1).ToString();
            }

            return str + " DoubleClick: " + (doubleclick ? "Yes" : "No");
        }
    }

    public struct InputEventMouseMotion : IEquatable<InputEventMouseMotion>
    {
        public InputModifierState mod;
        public int button_mask;
        public int x;
        public int y;
        public int global_x;
        public int global_y;
        public int pointer_index;

        public int relative_x;
        public int relative_y;
        public float speed_x;
        public float speed_y;

        public static bool operator ==(InputEventMouseMotion left, InputEventMouseMotion right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventMouseMotion left, InputEventMouseMotion right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventMouseMotion)
            {
                return Equals((InputEventMouseMotion)obj);
            }

            return false;
        }

        public bool Equals(InputEventMouseMotion other)
        {
            return x == other.x && y == other.y && relative_x == other.relative_x &&
                relative_y == other.relative_y && button_mask == other.button_mask;
        }

        public override int GetHashCode()
        {
            return x.GetHashCode() ^ y.GetHashCode() ^ relative_x.GetHashCode() ^
                relative_y.GetHashCode() ^ button_mask.GetHashCode();
        }

        public override string ToString()
        {
            string str = string.Format("Event: Motion Pos: ({0}, {1}) Rel: ({2}, {3}) Mask: ",
                new object[] { x, y, relative_x, relative_y });

            for (int i = 0; i < 8; i++)
            {
                if (((1 << i) & button_mask) == 1)
                    str += (i + 1).ToString();
            }

            return str;
        }
    }

    public struct InputEventScreenDrag : IEquatable<InputEventScreenDrag>
    {
        public int index;
        public int x;
        public int y;
        public int relative_x;
        public int relative_y;
        public float speed_x;
        public float speed_y;

        public static bool operator ==(InputEventScreenDrag left, InputEventScreenDrag right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventScreenDrag left, InputEventScreenDrag right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventScreenDrag)
            {
                return Equals((InputEventScreenDrag)obj);
            }

            return false;
        }

        public bool Equals(InputEventScreenDrag other)
        {
            return index == other.index && x == other.x && y == other.y;
        }

        public override int GetHashCode()
        {
            return index.GetHashCode() ^ x.GetHashCode() ^ y.GetHashCode();
        }

        public override string ToString()
        {
            return string.Format("Event: ScreenDrag Index: {0} Pos: ({1}, {2})",
                new object[] { index, x, y });
        }
    }

    public struct InputEventScreenTouch : IEquatable<InputEventScreenTouch>
    {
        public int index;
        public int x;
        public int y;
        public bool pressed;

        public static bool operator ==(InputEventScreenTouch left, InputEventScreenTouch right)
        {
            return left.Equals(right);
        }

        public static bool operator !=(InputEventScreenTouch left, InputEventScreenTouch right)
        {
            return !left.Equals(right);
        }

        public override bool Equals(object obj)
        {
            if (obj is InputEventScreenTouch)
            {
                return Equals((InputEventScreenTouch)obj);
            }

            return false;
        }

        public bool Equals(InputEventScreenTouch other)
        {
            return pressed == other.pressed && index == other.index && x == other.x && y == other.y;
        }

        public override int GetHashCode()
        {
            return pressed.GetHashCode() ^ index.GetHashCode() ^ x.GetHashCode() ^ y.GetHashCode();
        }

        public override string ToString()
        {
            return string.Format("Event: ScreenTouch Pressed: {0} Index: {1} Pos: ({2}, {3})",
                new object[] { pressed, index, x, y });
        }
    }
}
