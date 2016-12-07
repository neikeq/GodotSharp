using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Class for finding text patterns in a string using regular expressions. It can not perform replacements. Regular expressions are a way to define patterns of text to be searched. Details on writing patterns are too long to explain here but the Internet is full of tutorials and detailed explanations.
    /// Once created, the RegEx object needs to be compiled with the pattern before it can be used. The pattern must be escaped first for gdscript before it is escaped for the expression. For example:
    /// [code]var exp = RegEx.new()[/code]
    /// [code]exp.compile("\\d+")[/code]
    /// would be read by RegEx as [code]\d+[/code]
    /// Similarly:
    /// [code]exp.compile("\"(?:\\\\.|[^\"])*\"")[/code]
    /// would be read as [code]"(?:\\.|[^"])*"[/code]
    /// Currently supported features:
    /// * Capturing [code]()[/code] and non-capturing [code](?:)[/code] groups
    /// * Named capturing groups [code](?P<name>)[/code]
    /// * Any character [code].[/code]
    /// * Shorthand character classes [code]\w \W \s \S \d \D[/code]
    /// * User-defined character classes such as [code][A-Za-z][/code]
    /// * Simple quantifiers [code]?[/code], [code]*[/code] and [code]+[/code]
    /// * Range quantifiers [code]{x,y}[/code]
    /// * Lazy (non-greedy) quantifiers [code]*?[/code]
    /// * Beginning [code]^[/code] and end [code]$[/code] anchors
    /// * Alternation [code]|[/code]
    /// * Backreferences [code]\1[/code], [code]\g{1}[/code], and [code]\g<name>[/code]
    /// * POSIX character classes [code][[:alnum:]][/code]
    /// * Lookahead [code](?=)[/code], [code](?!)[/code] and lookbehind [code](?<=)[/code], [code](?<!)[/code]
    /// * ASCII [code]\xFF[/code] and Unicode [code]\uFFFF[/code] code points (in a style similar to Python)
    /// * Word boundaries [code]\b[/code], [code]\B[/code]
    /// </summary>
    public class RegEx : Resource
    {
        private const string nativeName = "RegEx";

        public RegEx() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RegEx_Ctor(this);
        }

        internal RegEx(bool memoryOwn) : base(memoryOwn) {}

        ~RegEx()
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
                    NativeCalls.godot_icall_RegEx_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// This method resets the state of the object, as it was freshly created. Namely, it unassigns the regular expression of this object.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "compile");

        /// <summary>
        /// Compiles and assign the regular expression pattern to use.
        /// </summary>
        public int compile(string pattern)
        {
            return NativeCalls.godot_icall_1_63(method_bind_1, Object.GetPtr(this), pattern);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "search");

        /// <summary>
        /// Searches the text for the compiled pattern. Returns a [RegExMatch] container of the first matching reult if found, otherwise null. The region to search within can be specified without modifying where the start and end anchor would be.
        /// </summary>
        public Object search(string text, int start = 0, int end = -1)
        {
            return NativeCalls.godot_icall_3_405(method_bind_2, Object.GetPtr(this), text, start, end);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sub");

        /// <summary>
        /// Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as [code]\1[/code] and [code]\g<name>[/code] expanded and resolved. By default only the first instance is replaced but it can be changed for all instances (global replacement). The region to search within can be specified without modifying where the start and end anchor would be.
        /// </summary>
        public string sub(string text, string replacement, bool all = false, int start = 0, int end = -1)
        {
            return NativeCalls.godot_icall_5_406(method_bind_3, Object.GetPtr(this), text, replacement, all, start, end);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_valid");

        /// <summary>
        /// Returns whether this object has a valid regular expression assigned.
        /// </summary>
        public bool is_valid()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pattern");

        /// <summary>
        /// Returns the expression used to compile the code.
        /// </summary>
        public string get_pattern()
        {
            return NativeCalls.godot_icall_0_19(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_group_count");

        /// <summary>
        /// Returns the number of numeric capturing groups.
        /// </summary>
        public int get_group_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_names");

        /// <summary>
        /// Returns an array of names of named capturing groups.
        /// </summary>
        public List<object> get_names()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_7, Object.GetPtr(this));
            return new List<object>(ret);
        }
    }
}
