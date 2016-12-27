using System;

namespace GodotEngine
{
    public static class Godot
    {
        /// <summary>Left margin</summary>
        public const int MARGIN_LEFT = 0;
        /// <summary>Top margin</summary>
        public const int MARGIN_TOP = 1;
        /// <summary>Right margin</summary>
        public const int MARGIN_RIGHT = 2;
        /// <summary>Bottom margin</summary>
        public const int MARGIN_BOTTOM = 3;
        /// <summary>General vertical alignment</summary>
        public const int VERTICAL = 1;
        /// <summary>General horizontal alignment</summary>
        public const int HORIZONTAL = 0;
        /// <summary>Horizontal left alignment</summary>
        public const int HALIGN_LEFT = 0;
        /// <summary>Horizontal center alignment</summary>
        public const int HALIGN_CENTER = 1;
        /// <summary>Horizontal right alignment</summary>
        public const int HALIGN_RIGHT = 2;
        /// <summary>Vertical top alignment</summary>
        public const int VALIGN_TOP = 0;
        /// <summary>Vertical center alignment</summary>
        public const int VALIGN_CENTER = 1;
        /// <summary>Vertical bottom alignment</summary>
        public const int VALIGN_BOTTOM = 2;
        /// <summary>Scancodes with this bit applied are non printable.</summary>
        public const int SPKEY = 16777216;
        /// <summary>Escape Key</summary>
        public const int KEY_ESCAPE = 16777217;
        /// <summary>Tab Key</summary>
        public const int KEY_TAB = 16777218;
        /// <summary>Shift-Tab Key</summary>
        public const int KEY_BACKTAB = 16777219;
        /// <summary>Backspace Key</summary>
        public const int KEY_BACKSPACE = 16777220;
        /// <summary>Return Key (On Main Keyboard)</summary>
        public const int KEY_RETURN = 16777221;
        /// <summary>Enter Key (On Numpad)</summary>
        public const int KEY_ENTER = 16777222;
        /// <summary>Insert Key</summary>
        public const int KEY_INSERT = 16777223;
        /// <summary>Delete Key</summary>
        public const int KEY_DELETE = 16777224;
        /// <summary>Pause Key</summary>
        public const int KEY_PAUSE = 16777225;
        /// <summary>Printscreen Key</summary>
        public const int KEY_PRINT = 16777226;
        public const int KEY_SYSREQ = 16777227;
        public const int KEY_CLEAR = 16777228;
        /// <summary>Home Key</summary>
        public const int KEY_HOME = 16777229;
        /// <summary>End Key</summary>
        public const int KEY_END = 16777230;
        /// <summary>Left Arrow Key</summary>
        public const int KEY_LEFT = 16777231;
        /// <summary>Up Arrow Key</summary>
        public const int KEY_UP = 16777232;
        /// <summary>Right Arrow Key</summary>
        public const int KEY_RIGHT = 16777233;
        /// <summary>Down Arrow Key</summary>
        public const int KEY_DOWN = 16777234;
        /// <summary>Pageup Key</summary>
        public const int KEY_PAGEUP = 16777235;
        /// <summary>Pagedown Key</summary>
        public const int KEY_PAGEDOWN = 16777236;
        /// <summary>Shift Key</summary>
        public const int KEY_SHIFT = 16777237;
        /// <summary>Control Key</summary>
        public const int KEY_CONTROL = 16777238;
        public const int KEY_META = 16777239;
        /// <summary>Alt Key</summary>
        public const int KEY_ALT = 16777240;
        /// <summary>Capslock Key</summary>
        public const int KEY_CAPSLOCK = 16777241;
        /// <summary>Numlock Key</summary>
        public const int KEY_NUMLOCK = 16777242;
        /// <summary>Scrolllock Key</summary>
        public const int KEY_SCROLLLOCK = 16777243;
        /// <summary>F1 Key</summary>
        public const int KEY_F1 = 16777244;
        /// <summary>F2 Key</summary>
        public const int KEY_F2 = 16777245;
        /// <summary>F3 Key</summary>
        public const int KEY_F3 = 16777246;
        /// <summary>F4 Key</summary>
        public const int KEY_F4 = 16777247;
        /// <summary>F5 Key</summary>
        public const int KEY_F5 = 16777248;
        /// <summary>F6 Key</summary>
        public const int KEY_F6 = 16777249;
        /// <summary>F7 Key</summary>
        public const int KEY_F7 = 16777250;
        /// <summary>F8 Key</summary>
        public const int KEY_F8 = 16777251;
        /// <summary>F9 Key</summary>
        public const int KEY_F9 = 16777252;
        /// <summary>F10 Key</summary>
        public const int KEY_F10 = 16777253;
        /// <summary>F11 Key</summary>
        public const int KEY_F11 = 16777254;
        /// <summary>F12 Key</summary>
        public const int KEY_F12 = 16777255;
        /// <summary>F13 Key</summary>
        public const int KEY_F13 = 16777256;
        /// <summary>F14 Key</summary>
        public const int KEY_F14 = 16777257;
        /// <summary>F15 Key</summary>
        public const int KEY_F15 = 16777258;
        /// <summary>F16 Key</summary>
        public const int KEY_F16 = 16777259;
        /// <summary>Enter Key on Numpad</summary>
        public const int KEY_KP_ENTER = 16777344;
        /// <summary>Multiply Key on Numpad</summary>
        public const int KEY_KP_MULTIPLY = 16777345;
        /// <summary>Divide Key on Numpad</summary>
        public const int KEY_KP_DIVIDE = 16777346;
        /// <summary>Subtract Key on Numpad</summary>
        public const int KEY_KP_SUBTRACT = 16777347;
        /// <summary>Period Key on Numpad</summary>
        public const int KEY_KP_PERIOD = 16777348;
        /// <summary>Add Key on Numpad</summary>
        public const int KEY_KP_ADD = 16777349;
        /// <summary>Number 0 on Numpad</summary>
        public const int KEY_KP_0 = 16777350;
        /// <summary>Number 1 on Numpad</summary>
        public const int KEY_KP_1 = 16777351;
        /// <summary>Number 2 on Numpad</summary>
        public const int KEY_KP_2 = 16777352;
        /// <summary>Number 3 on Numpad</summary>
        public const int KEY_KP_3 = 16777353;
        /// <summary>Number 4 on Numpad</summary>
        public const int KEY_KP_4 = 16777354;
        /// <summary>Number 5 on Numpad</summary>
        public const int KEY_KP_5 = 16777355;
        /// <summary>Number 6 on Numpad</summary>
        public const int KEY_KP_6 = 16777356;
        /// <summary>Number 7 on Numpad</summary>
        public const int KEY_KP_7 = 16777357;
        /// <summary>Number 8 on Numpad</summary>
        public const int KEY_KP_8 = 16777358;
        /// <summary>Number 9 on Numpad</summary>
        public const int KEY_KP_9 = 16777359;
        /// <summary>Super Left key (windows key)</summary>
        public const int KEY_SUPER_L = 16777260;
        /// <summary>Super Left key (windows key)</summary>
        public const int KEY_SUPER_R = 16777261;
        /// <summary>Context menu key</summary>
        public const int KEY_MENU = 16777262;
        public const int KEY_HYPER_L = 16777263;
        public const int KEY_HYPER_R = 16777264;
        /// <summary>Help key</summary>
        public const int KEY_HELP = 16777265;
        public const int KEY_DIRECTION_L = 16777266;
        public const int KEY_DIRECTION_R = 16777267;
        /// <summary>Back key</summary>
        public const int KEY_BACK = 16777280;
        /// <summary>Forward key</summary>
        public const int KEY_FORWARD = 16777281;
        /// <summary>Stop key</summary>
        public const int KEY_STOP = 16777282;
        /// <summary>Refresh key</summary>
        public const int KEY_REFRESH = 16777283;
        /// <summary>Volume down key</summary>
        public const int KEY_VOLUMEDOWN = 16777284;
        /// <summary>Mute volume key</summary>
        public const int KEY_VOLUMEMUTE = 16777285;
        /// <summary>Volume up key</summary>
        public const int KEY_VOLUMEUP = 16777286;
        public const int KEY_BASSBOOST = 16777287;
        public const int KEY_BASSUP = 16777288;
        public const int KEY_BASSDOWN = 16777289;
        public const int KEY_TREBLEUP = 16777290;
        public const int KEY_TREBLEDOWN = 16777291;
        /// <summary>Media play key</summary>
        public const int KEY_MEDIAPLAY = 16777292;
        /// <summary>Media stop key</summary>
        public const int KEY_MEDIASTOP = 16777293;
        /// <summary>Previous song key</summary>
        public const int KEY_MEDIAPREVIOUS = 16777294;
        /// <summary>Next song key</summary>
        public const int KEY_MEDIANEXT = 16777295;
        /// <summary>Media record key</summary>
        public const int KEY_MEDIARECORD = 16777296;
        /// <summary>Home page key</summary>
        public const int KEY_HOMEPAGE = 16777297;
        /// <summary>Favorites key</summary>
        public const int KEY_FAVORITES = 16777298;
        /// <summary>Search key</summary>
        public const int KEY_SEARCH = 16777299;
        public const int KEY_STANDBY = 16777300;
        public const int KEY_OPENURL = 16777301;
        public const int KEY_LAUNCHMAIL = 16777302;
        public const int KEY_LAUNCHMEDIA = 16777303;
        public const int KEY_LAUNCH0 = 16777304;
        public const int KEY_LAUNCH1 = 16777305;
        public const int KEY_LAUNCH2 = 16777306;
        public const int KEY_LAUNCH3 = 16777307;
        public const int KEY_LAUNCH4 = 16777308;
        public const int KEY_LAUNCH5 = 16777309;
        public const int KEY_LAUNCH6 = 16777310;
        public const int KEY_LAUNCH7 = 16777311;
        public const int KEY_LAUNCH8 = 16777312;
        public const int KEY_LAUNCH9 = 16777313;
        public const int KEY_LAUNCHA = 16777314;
        public const int KEY_LAUNCHB = 16777315;
        public const int KEY_LAUNCHC = 16777316;
        public const int KEY_LAUNCHD = 16777317;
        public const int KEY_LAUNCHE = 16777318;
        public const int KEY_LAUNCHF = 16777319;
        public const int KEY_UNKNOWN = 33554431;
        /// <summary>Space Key</summary>
        public const int KEY_SPACE = 32;
        /// <summary>! key</summary>
        public const int KEY_EXCLAM = 33;
        /// <summary>" key</summary>
        public const int KEY_QUOTEDBL = 34;
        /// <summary># key</summary>
        public const int KEY_NUMBERSIGN = 35;
        /// <summary>$ key</summary>
        public const int KEY_DOLLAR = 36;
        /// <summary>% key</summary>
        public const int KEY_PERCENT = 37;
        /// <summary>& key</summary>
        public const int KEY_AMPERSAND = 38;
        /// <summary>' key</summary>
        public const int KEY_APOSTROPHE = 39;
        /// <summary>( key</summary>
        public const int KEY_PARENLEFT = 40;
        /// <summary>) key</summary>
        public const int KEY_PARENRIGHT = 41;
        /// <summary>* key</summary>
        public const int KEY_ASTERISK = 42;
        /// <summary>+ key</summary>
        public const int KEY_PLUS = 43;
        /// <summary></summary>
        public const int KEY_COMMA = 44;
        /// <summary>- key</summary>
        public const int KEY_MINUS = 45;
        /// <summary>. key</summary>
        public const int KEY_PERIOD = 46;
        /// <summary>/ key</summary>
        public const int KEY_SLASH = 47;
        /// <summary>Number 0</summary>
        public const int KEY_0 = 48;
        /// <summary>Number 1</summary>
        public const int KEY_1 = 49;
        /// <summary>Number 2</summary>
        public const int KEY_2 = 50;
        /// <summary>Number 3</summary>
        public const int KEY_3 = 51;
        /// <summary>Number 4</summary>
        public const int KEY_4 = 52;
        /// <summary>Number 5</summary>
        public const int KEY_5 = 53;
        /// <summary>Number 6</summary>
        public const int KEY_6 = 54;
        /// <summary>Number 7</summary>
        public const int KEY_7 = 55;
        /// <summary>Number 8</summary>
        public const int KEY_8 = 56;
        /// <summary>Number 9</summary>
        public const int KEY_9 = 57;
        /// <summary>: key</summary>
        public const int KEY_COLON = 58;
        /// <summary></summary>
        public const int KEY_SEMICOLON = 59;
        /// <summary>Lower than key</summary>
        public const int KEY_LESS = 60;
        /// <summary>= key</summary>
        public const int KEY_EQUAL = 61;
        /// <summary>Greater than key</summary>
        public const int KEY_GREATER = 62;
        /// <summary>? key</summary>
        public const int KEY_QUESTION = 63;
        /// <summary>@ key</summary>
        public const int KEY_AT = 64;
        /// <summary>A Key</summary>
        public const int KEY_A = 65;
        /// <summary>B Key</summary>
        public const int KEY_B = 66;
        /// <summary>C Key</summary>
        public const int KEY_C = 67;
        /// <summary>D Key</summary>
        public const int KEY_D = 68;
        /// <summary>E Key</summary>
        public const int KEY_E = 69;
        /// <summary>F Key</summary>
        public const int KEY_F = 70;
        /// <summary>G Key</summary>
        public const int KEY_G = 71;
        /// <summary>H Key</summary>
        public const int KEY_H = 72;
        /// <summary>I Key</summary>
        public const int KEY_I = 73;
        /// <summary>J Key</summary>
        public const int KEY_J = 74;
        /// <summary>K Key</summary>
        public const int KEY_K = 75;
        /// <summary>L Key</summary>
        public const int KEY_L = 76;
        /// <summary>M Key</summary>
        public const int KEY_M = 77;
        /// <summary>N Key</summary>
        public const int KEY_N = 78;
        /// <summary>O Key</summary>
        public const int KEY_O = 79;
        /// <summary>P Key</summary>
        public const int KEY_P = 80;
        /// <summary>Q Key</summary>
        public const int KEY_Q = 81;
        /// <summary>R Key</summary>
        public const int KEY_R = 82;
        /// <summary>S Key</summary>
        public const int KEY_S = 83;
        /// <summary>T Key</summary>
        public const int KEY_T = 84;
        /// <summary>U Key</summary>
        public const int KEY_U = 85;
        /// <summary>V Key</summary>
        public const int KEY_V = 86;
        /// <summary>W Key</summary>
        public const int KEY_W = 87;
        /// <summary>X Key</summary>
        public const int KEY_X = 88;
        /// <summary>Y Key</summary>
        public const int KEY_Y = 89;
        /// <summary>Z Key</summary>
        public const int KEY_Z = 90;
        /// <summary>[ key</summary>
        public const int KEY_BRACKETLEFT = 91;
        /// <summary>\ key</summary>
        public const int KEY_BACKSLASH = 92;
        /// <summary>] key</summary>
        public const int KEY_BRACKETRIGHT = 93;
        /// <summary>^ key</summary>
        public const int KEY_ASCIICIRCUM = 94;
        /// <summary>_ key</summary>
        public const int KEY_UNDERSCORE = 95;
        public const int KEY_QUOTELEFT = 96;
        /// <summary>{ key</summary>
        public const int KEY_BRACELEFT = 123;
        /// <summary>| key</summary>
        public const int KEY_BAR = 124;
        /// <summary>} key</summary>
        public const int KEY_BRACERIGHT = 125;
        /// <summary>~ key</summary>
        public const int KEY_ASCIITILDE = 126;
        public const int KEY_NOBREAKSPACE = 160;
        public const int KEY_EXCLAMDOWN = 161;
        /// <summary>¢ key</summary>
        public const int KEY_CENT = 162;
        public const int KEY_STERLING = 163;
        public const int KEY_CURRENCY = 164;
        public const int KEY_YEN = 165;
        /// <summary>¦ key</summary>
        public const int KEY_BROKENBAR = 166;
        /// <summary>§ key</summary>
        public const int KEY_SECTION = 167;
        /// <summary>¨ key</summary>
        public const int KEY_DIAERESIS = 168;
        /// <summary>© key</summary>
        public const int KEY_COPYRIGHT = 169;
        public const int KEY_ORDFEMININE = 170;
        /// <summary>« key</summary>
        public const int KEY_GUILLEMOTLEFT = 171;
        /// <summary>» key</summary>
        public const int KEY_NOTSIGN = 172;
        /// <summary>- key</summary>
        public const int KEY_HYPHEN = 173;
        /// <summary>® key</summary>
        public const int KEY_REGISTERED = 174;
        public const int KEY_MACRON = 175;
        /// <summary>° key</summary>
        public const int KEY_DEGREE = 176;
        /// <summary>± key</summary>
        public const int KEY_PLUSMINUS = 177;
        /// <summary>² key</summary>
        public const int KEY_TWOSUPERIOR = 178;
        /// <summary>³ key</summary>
        public const int KEY_THREESUPERIOR = 179;
        /// <summary>´ key</summary>
        public const int KEY_ACUTE = 180;
        /// <summary>µ key</summary>
        public const int KEY_MU = 181;
        public const int KEY_PARAGRAPH = 182;
        /// <summary>· key</summary>
        public const int KEY_PERIODCENTERED = 183;
        /// <summary>¬ key</summary>
        public const int KEY_CEDILLA = 184;
        public const int KEY_ONESUPERIOR = 185;
        public const int KEY_MASCULINE = 186;
        public const int KEY_GUILLEMOTRIGHT = 187;
        public const int KEY_ONEQUARTER = 188;
        /// <summary>½ key</summary>
        public const int KEY_ONEHALF = 189;
        public const int KEY_THREEQUARTERS = 190;
        public const int KEY_QUESTIONDOWN = 191;
        public const int KEY_AGRAVE = 192;
        public const int KEY_AACUTE = 193;
        public const int KEY_ACIRCUMFLEX = 194;
        public const int KEY_ATILDE = 195;
        public const int KEY_ADIAERESIS = 196;
        public const int KEY_ARING = 197;
        public const int KEY_AE = 198;
        public const int KEY_CCEDILLA = 199;
        public const int KEY_EGRAVE = 200;
        public const int KEY_EACUTE = 201;
        public const int KEY_ECIRCUMFLEX = 202;
        public const int KEY_EDIAERESIS = 203;
        public const int KEY_IGRAVE = 204;
        public const int KEY_IACUTE = 205;
        public const int KEY_ICIRCUMFLEX = 206;
        public const int KEY_IDIAERESIS = 207;
        public const int KEY_ETH = 208;
        public const int KEY_NTILDE = 209;
        public const int KEY_OGRAVE = 210;
        public const int KEY_OACUTE = 211;
        public const int KEY_OCIRCUMFLEX = 212;
        public const int KEY_OTILDE = 213;
        public const int KEY_ODIAERESIS = 214;
        public const int KEY_MULTIPLY = 215;
        public const int KEY_OOBLIQUE = 216;
        public const int KEY_UGRAVE = 217;
        public const int KEY_UACUTE = 218;
        public const int KEY_UCIRCUMFLEX = 219;
        public const int KEY_UDIAERESIS = 220;
        public const int KEY_YACUTE = 221;
        public const int KEY_THORN = 222;
        public const int KEY_SSHARP = 223;
        public const int KEY_DIVISION = 247;
        public const int KEY_YDIAERESIS = 255;
        public const int KEY_CODE_MASK = 33554431;
        public const int KEY_MODIFIER_MASK = -16777216;
        public const int KEY_MASK_SHIFT = 33554432;
        public const int KEY_MASK_ALT = 67108864;
        public const int KEY_MASK_META = 134217728;
        public const int KEY_MASK_CTRL = 268435456;
        public const int KEY_MASK_CMD = 268435456;
        public const int KEY_MASK_KPAD = 536870912;
        public const int KEY_MASK_GROUP_SWITCH = 1073741824;
        /// <summary>Left Mouse Button</summary>
        public const int BUTTON_LEFT = 1;
        /// <summary>Right Mouse Button</summary>
        public const int BUTTON_RIGHT = 2;
        /// <summary>Middle Mouse Button</summary>
        public const int BUTTON_MIDDLE = 3;
        /// <summary>Mouse wheel up</summary>
        public const int BUTTON_WHEEL_UP = 4;
        /// <summary>Mouse wheel down</summary>
        public const int BUTTON_WHEEL_DOWN = 5;
        /// <summary>Mouse wheel left button</summary>
        public const int BUTTON_WHEEL_LEFT = 6;
        /// <summary>Mouse wheel right button</summary>
        public const int BUTTON_WHEEL_RIGHT = 7;
        public const int BUTTON_MASK_LEFT = 1;
        public const int BUTTON_MASK_RIGHT = 2;
        public const int BUTTON_MASK_MIDDLE = 4;
        /// <summary>Joystick Button 0</summary>
        public const int JOY_BUTTON_0 = 0;
        /// <summary>Joystick Button 1</summary>
        public const int JOY_BUTTON_1 = 1;
        /// <summary>Joystick Button 2</summary>
        public const int JOY_BUTTON_2 = 2;
        /// <summary>Joystick Button 3</summary>
        public const int JOY_BUTTON_3 = 3;
        /// <summary>Joystick Button 4</summary>
        public const int JOY_BUTTON_4 = 4;
        /// <summary>Joystick Button 5</summary>
        public const int JOY_BUTTON_5 = 5;
        /// <summary>Joystick Button 6</summary>
        public const int JOY_BUTTON_6 = 6;
        /// <summary>Joystick Button 7</summary>
        public const int JOY_BUTTON_7 = 7;
        /// <summary>Joystick Button 8</summary>
        public const int JOY_BUTTON_8 = 8;
        /// <summary>Joystick Button 9</summary>
        public const int JOY_BUTTON_9 = 9;
        /// <summary>Joystick Button 10</summary>
        public const int JOY_BUTTON_10 = 10;
        /// <summary>Joystick Button 11</summary>
        public const int JOY_BUTTON_11 = 11;
        /// <summary>Joystick Button 12</summary>
        public const int JOY_BUTTON_12 = 12;
        /// <summary>Joystick Button 13</summary>
        public const int JOY_BUTTON_13 = 13;
        /// <summary>Joystick Button 14</summary>
        public const int JOY_BUTTON_14 = 14;
        /// <summary>Joystick Button 15</summary>
        public const int JOY_BUTTON_15 = 15;
        /// <summary>Joystick Button 16</summary>
        public const int JOY_BUTTON_MAX = 16;
        /// <summary>Super Nintendo Entertaiment System controller A button</summary>
        public const int JOY_SNES_A = 1;
        /// <summary>Super Nintendo Entertaiment System controller B button</summary>
        public const int JOY_SNES_B = 0;
        /// <summary>Super Nintendo Entertaiment System controller X button</summary>
        public const int JOY_SNES_X = 3;
        /// <summary>Super Nintendo Entertaiment System controller Y button</summary>
        public const int JOY_SNES_Y = 2;
        /// <summary>DUALSHOCK circle button</summary>
        public const int JOY_SONY_CIRCLE = 1;
        /// <summary>DUALSHOCK X button</summary>
        public const int JOY_SONY_X = 0;
        /// <summary>DUALSHOCK square button</summary>
        public const int JOY_SONY_SQUARE = 2;
        /// <summary>DUALSHOCK triangle button</summary>
        public const int JOY_SONY_TRIANGLE = 3;
        /// <summary>SEGA controller B button</summary>
        public const int JOY_SEGA_B = 1;
        /// <summary>SEGA controller A button</summary>
        public const int JOY_SEGA_A = 0;
        /// <summary>SEGA controller X button</summary>
        public const int JOY_SEGA_X = 2;
        /// <summary>SEGA controller Y button</summary>
        public const int JOY_SEGA_Y = 3;
        /// <summary>XBOX controller B button</summary>
        public const int JOY_XBOX_B = 1;
        /// <summary>XBOX controller A button</summary>
        public const int JOY_XBOX_A = 0;
        /// <summary>XBOX controller X button</summary>
        public const int JOY_XBOX_X = 2;
        /// <summary>XBOX controller Y button</summary>
        public const int JOY_XBOX_Y = 3;
        public const int JOY_DS_A = 1;
        public const int JOY_DS_B = 0;
        public const int JOY_DS_X = 3;
        public const int JOY_DS_Y = 2;
        /// <summary>Joystick Button Select</summary>
        public const int JOY_SELECT = 10;
        /// <summary>Joystick Button Start</summary>
        public const int JOY_START = 11;
        /// <summary>Joystick DPad Up</summary>
        public const int JOY_DPAD_UP = 12;
        /// <summary>Joystick DPad Down</summary>
        public const int JOY_DPAD_DOWN = 13;
        /// <summary>Joystick DPad Left</summary>
        public const int JOY_DPAD_LEFT = 14;
        /// <summary>Joystick DPad Right</summary>
        public const int JOY_DPAD_RIGHT = 15;
        /// <summary>Joystick Left Shoulder Button</summary>
        public const int JOY_L = 4;
        /// <summary>Joystick Left Trigger</summary>
        public const int JOY_L2 = 6;
        /// <summary>Joystick Left Stick Click</summary>
        public const int JOY_L3 = 8;
        /// <summary>Joystick Right Shoulder Button</summary>
        public const int JOY_R = 5;
        /// <summary>Joystick Right Trigger</summary>
        public const int JOY_R2 = 7;
        /// <summary>Joystick Right Stick Click</summary>
        public const int JOY_R3 = 9;
        /// <summary>Joystick Left Stick Horizontal Axis</summary>
        public const int JOY_AXIS_0 = 0;
        /// <summary>Joystick Left Stick Vertical Axis</summary>
        public const int JOY_AXIS_1 = 1;
        /// <summary>Joystick Right Stick Horizontal Axis</summary>
        public const int JOY_AXIS_2 = 2;
        /// <summary>Joystick Right Stick Vertical Axis</summary>
        public const int JOY_AXIS_3 = 3;
        public const int JOY_AXIS_4 = 4;
        public const int JOY_AXIS_5 = 5;
        /// <summary>Joystick Left Trigger Analog Axis</summary>
        public const int JOY_AXIS_6 = 6;
        /// <summary>Joystick Right Trigger Analog Axis</summary>
        public const int JOY_AXIS_7 = 7;
        public const int JOY_AXIS_MAX = 8;
        /// <summary>Joystick Left Stick Horizontal Axis</summary>
        public const int JOY_ANALOG_0_X = 0;
        /// <summary>Joystick Left Stick Vertical Axis</summary>
        public const int JOY_ANALOG_0_Y = 1;
        /// <summary>Joystick Right Stick Horizontal Axis</summary>
        public const int JOY_ANALOG_1_X = 2;
        /// <summary>Joystick Right Stick Vertical Axis</summary>
        public const int JOY_ANALOG_1_Y = 3;
        public const int JOY_ANALOG_2_X = 4;
        public const int JOY_ANALOG_2_Y = 5;
        public const int JOY_ANALOG_L2 = 6;
        public const int JOY_ANALOG_R2 = 7;
        /// <summary>No hint for edited property.</summary>
        public const int PROPERTY_HINT_NONE = 0;
        /// <summary>Hints that the string is a range</summary>
        public const int PROPERTY_HINT_RANGE = 1;
        /// <summary>Hints that the string is an exponential range</summary>
        public const int PROPERTY_HINT_EXP_RANGE = 2;
        /// <summary>Property hint for an enumerated value</summary>
        public const int PROPERTY_HINT_ENUM = 3;
        public const int PROPERTY_HINT_EXP_EASING = 4;
        public const int PROPERTY_HINT_LENGTH = 5;
        public const int PROPERTY_HINT_KEY_ACCEL = 7;
        /// <summary>Property hint for a bitmask description</summary>
        public const int PROPERTY_HINT_FLAGS = 8;
        /// <summary>Property hint for a bitmask description that covers all 32 bits. Valid only for integers.</summary>
        public const int PROPERTY_HINT_ALL_FLAGS = 9;
        /// <summary>String property is a file (so pop up a file dialog when edited). Hint string can be a set of wildcards like "*.doc".</summary>
        public const int PROPERTY_HINT_FILE = 10;
        /// <summary>String property is a directory (so pop up a file dialog when edited).</summary>
        public const int PROPERTY_HINT_DIR = 11;
        public const int PROPERTY_HINT_GLOBAL_FILE = 12;
        public const int PROPERTY_HINT_GLOBAL_DIR = 13;
        /// <summary>String property is a resource</summary>
        public const int PROPERTY_HINT_RESOURCE_TYPE = 14;
        public const int PROPERTY_HINT_MULTILINE_TEXT = 15;
        public const int PROPERTY_HINT_COLOR_NO_ALPHA = 16;
        public const int PROPERTY_HINT_IMAGE_COMPRESS_LOSSY = 17;
        public const int PROPERTY_HINT_IMAGE_COMPRESS_LOSSLESS = 18;
        /// <summary>Property will be used as storage (default).</summary>
        public const int PROPERTY_USAGE_STORAGE = 1;
        /// <summary>Property will be visible in editor (default).</summary>
        public const int PROPERTY_USAGE_EDITOR = 2;
        public const int PROPERTY_USAGE_NETWORK = 4;
        public const int PROPERTY_USAGE_EDITOR_HELPER = 8;
        public const int PROPERTY_USAGE_CHECKABLE = 16;
        public const int PROPERTY_USAGE_CHECKED = 32;
        public const int PROPERTY_USAGE_INTERNATIONALIZED = 64;
        public const int PROPERTY_USAGE_BUNDLE = 128;
        public const int PROPERTY_USAGE_CATEGORY = 256;
        public const int PROPERTY_USAGE_STORE_IF_NONZERO = 512;
        public const int PROPERTY_USAGE_STORE_IF_NONONE = 1024;
        public const int PROPERTY_USAGE_NO_INSTANCE_STATE = 2048;
        public const int PROPERTY_USAGE_RESTART_IF_CHANGED = 4096;
        public const int PROPERTY_USAGE_SCRIPT_VARIABLE = 8192;
        /// <summary>Default usage (storage and editor).</summary>
        public const int PROPERTY_USAGE_DEFAULT = 7;
        public const int PROPERTY_USAGE_DEFAULT_INTL = 71;
        public const int PROPERTY_USAGE_NOEDITOR = 5;
        public const int METHOD_FLAG_NORMAL = 1;
        public const int METHOD_FLAG_EDITOR = 2;
        public const int METHOD_FLAG_NOSCRIPT = 4;
        public const int METHOD_FLAG_CONST = 8;
        public const int METHOD_FLAG_REVERSE = 16;
        public const int METHOD_FLAG_VIRTUAL = 32;
        public const int METHOD_FLAG_FROM_SCRIPT = 64;
        public const int METHOD_FLAGS_DEFAULT = 1;
        /// <summary>Variable is of type nil (only applied for null).</summary>
        public const int TYPE_NIL = 0;
        /// <summary>Variable is of type bool.</summary>
        public const int TYPE_BOOL = 1;
        /// <summary>Variable is of type int.</summary>
        public const int TYPE_INT = 2;
        /// <summary>Variable is of type float/real.</summary>
        public const int TYPE_REAL = 3;
        /// <summary>Variable is of type String.</summary>
        public const int TYPE_STRING = 4;
        /// <summary>Variable is of type Vector2.</summary>
        public const int TYPE_VECTOR2 = 5;
        /// <summary>Variable is of type Rect2.</summary>
        public const int TYPE_RECT2 = 6;
        /// <summary>Variable is of type Vector3.</summary>
        public const int TYPE_VECTOR3 = 7;
        /// <summary>Variable is of type Matrix32.</summary>
        public const int TYPE_MATRIX32 = 8;
        /// <summary>Variable is of type Plane.</summary>
        public const int TYPE_PLANE = 9;
        /// <summary>Variable is of type Quat.</summary>
        public const int TYPE_QUAT = 10;
        /// <summary>Variable is of type AABB.</summary>
        public const int TYPE_AABB = 11;
        /// <summary>Variable is of type Matrix3.</summary>
        public const int TYPE_MATRIX3 = 12;
        /// <summary>Variable is of type Transform.</summary>
        public const int TYPE_TRANSFORM = 13;
        /// <summary>Variable is of type Color.</summary>
        public const int TYPE_COLOR = 14;
        /// <summary>Variable is of type Image.</summary>
        public const int TYPE_IMAGE = 15;
        /// <summary>Variable is of type NodePath.</summary>
        public const int TYPE_NODE_PATH = 16;
        /// <summary>Variable is of type RID.</summary>
        public const int TYPE_RID = 17;
        /// <summary>Variable is of type Object.</summary>
        public const int TYPE_OBJECT = 18;
        /// <summary>Variable is of type InputEvent.</summary>
        public const int TYPE_INPUT_EVENT = 19;
        /// <summary>Variable is of type Dictionary.</summary>
        public const int TYPE_DICTIONARY = 20;
        /// <summary>Variable is of type Array.</summary>
        public const int TYPE_ARRAY = 21;
        public const int TYPE_RAW_ARRAY = 22;
        public const int TYPE_INT_ARRAY = 23;
        public const int TYPE_REAL_ARRAY = 24;
        public const int TYPE_STRING_ARRAY = 25;
        public const int TYPE_VECTOR2_ARRAY = 26;
        public const int TYPE_VECTOR3_ARRAY = 27;
        public const int TYPE_COLOR_ARRAY = 28;
        public const int TYPE_MAX = 29;


        public static object bytes2var(byte[] bytes)
        {
            return NativeCalls.godot_icall_Godot_bytes2var(bytes);
        }

        public static object convert(object what, int type)
        {
            return NativeCalls.godot_icall_Godot_convert(what, type);
        }

        public static float db2linear(float db)
        {
            return (float)Math.Exp(db * 0.11512925464970228420089957273422);
        }

        public static float dectime(float value, float amount, float step)
        {
            float sgn = value < 0 ? -1.0f : 1.0f;
            float val = Mathf.abs(value);
            val -= amount * step;
            if (val < 0.0f)
                val = 0.0f;
            return val * sgn;
        }

        public static FuncRef funcref(Object instance, string funcname)
        {
            var ret = new FuncRef();
            ret.set_instance(instance);
            ret.set_function(funcname);
            return ret;
        }

        public static int hash(object var)
        {
            return NativeCalls.godot_icall_Godot_hash(var);
        }

        public static Object instance_from_id(int instance_id)
        {
            return NativeCalls.godot_icall_Godot_instance_from_id(instance_id);
        }

        public static double linear2db(double linear)
        {
            return Math.Log(linear) * 8.6858896380650365530225783783321;
        }

        public static Resource load(string path)
        {
            return ResourceLoader.load(path);
        }

        public static void print(params object[] what)
        {
            NativeCalls.godot_icall_Godot_print(what);
        }

        public static void print_stack()
        {
            print(System.Environment.StackTrace);
        }

        public static void printerr(params object[] what)
        {
            NativeCalls.godot_icall_Godot_printerr(what);
        }

        public static void printraw(params object[] what)
        {
            NativeCalls.godot_icall_Godot_printraw(what);
        }

        public static void prints(params object[] what)
        {
            NativeCalls.godot_icall_Godot_prints(what);
        }

        public static void printt(params object[] what)
        {
            NativeCalls.godot_icall_Godot_printt(what);
        }

        public static int[] range(int length)
        {
            int[] ret = new int[length];

            for (int i = 0; i < length; i++)
            {
                ret[i] = i;
            }

            return ret;
        }

        public static int[] range(int from, int to)
        {
            if (to < from)
                return new int[0];

            int[] ret = new int[to - from];

            for (int i = from; i < to; i++)
            {
                ret[i - from] = i;
            }

            return ret;
        }

        public static int[] range(int from, int to, int increment)
        {
            if (to < from && increment > 0)
                return new int[0];
            if (to > from && increment < 0)
                return new int[0];

            // Calculate count
            int count = 0;

            if (increment > 0)
                count = ((to - from - 1) / increment) + 1;
            else
                count = ((from - to - 1) / -increment) + 1;

            int[] ret = new int[count];

            if (increment > 0)
            {
                int idx = 0;
                for (int i = from; i < to; i += increment)
                {
                    ret[idx++] = i;
                }
            }
            else
            {
                int idx = 0;
                for (int i = from; i > to; i += increment)
                {
                    ret[idx++] = i;
                }
            }

            return ret;
        }

        public static void seed(int seed)
        {
            NativeCalls.godot_icall_Godot_seed(seed);
        }

        public static string str(params object[] what)
        {
            return NativeCalls.godot_icall_Godot_str(what);
        }

        public static object str2var(string str)
        {
            return NativeCalls.godot_icall_Godot_str2var(str);
        }

        public static bool type_exists(string type)
        {
            return NativeCalls.godot_icall_Godot_type_exists(type);
        }

        public static byte[] var2bytes(object var)
        {
            return NativeCalls.godot_icall_Godot_var2bytes(var);
        }

        public static string var2str(object var)
        {
            return NativeCalls.godot_icall_Godot_var2str(var);
        }

        public static WeakRef weakref(Object obj)
        {
            return NativeCalls.godot_icall_Godot_weakref(Object.GetPtr(obj));
        }
    }
}
