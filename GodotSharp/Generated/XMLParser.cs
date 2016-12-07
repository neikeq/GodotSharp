using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// This class can serve as base to make custom XML parsers. Since XML is a very flexible standard, this interface is low level so it can be applied to any possible schema.
    /// </summary>
    public class XMLParser : Reference
    {
        /// <summary>
        /// There's no node (no file or buffer opened)
        /// </summary>
        public const int NODE_NONE = 0;
        /// <summary>
        /// Element (tag)
        /// </summary>
        public const int NODE_ELEMENT = 1;
        /// <summary>
        /// End of element
        /// </summary>
        public const int NODE_ELEMENT_END = 2;
        /// <summary>
        /// Text node
        /// </summary>
        public const int NODE_TEXT = 3;
        /// <summary>
        /// Comment node
        /// </summary>
        public const int NODE_COMMENT = 4;
        /// <summary>
        /// CDATA content
        /// </summary>
        public const int NODE_CDATA = 5;
        /// <summary>
        /// Unknown node
        /// </summary>
        public const int NODE_UNKNOWN = 6;

        private const string nativeName = "XMLParser";

        public XMLParser() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_XMLParser_Ctor(this);
        }

        internal XMLParser(bool memoryOwn) : base(memoryOwn) {}

        ~XMLParser()
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
                    NativeCalls.godot_icall_XMLParser_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "read");

        /// <summary>
        /// Read the next node of the file. This returns an error code.
        /// </summary>
        public int read()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_type");

        /// <summary>
        /// Get the type of the current node. Compare with [code]NODE_*[/code] constants.
        /// </summary>
        public int get_node_type()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_name");

        /// <summary>
        /// Get the name of the current element node. This will raise an error if the current node type is not [code]NODE_ELEMENT[/code] nor [code]NODE_ELEMENT_END[/code]
        /// </summary>
        public string get_node_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_data");

        /// <summary>
        /// Get the contents of a text node. This will raise an error in any other type of node.
        /// </summary>
        public string get_node_data()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_offset");

        /// <summary>
        /// Get the byte offset of the current node since the beginning of the file or buffer.
        /// </summary>
        public int get_node_offset()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_attribute_count");

        /// <summary>
        /// Get the amount of attributes in the current element.
        /// </summary>
        public int get_attribute_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_attribute_name");

        /// <summary>
        /// Get the name of the attribute specified by the index in [code]idx[/code] argument.
        /// </summary>
        public string get_attribute_name(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_attribute_value");

        /// <summary>
        /// Get the value of the attribute specified by the index in [code]idx[/code] argument.
        /// </summary>
        public string get_attribute_value(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_7, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_attribute");

        /// <summary>
        /// Check whether or not the current element has a certain attribute.
        /// </summary>
        public bool has_attribute(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_8, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_named_attribute_value");

        /// <summary>
        /// Get the value of a certain attribute of the current element by name. This will raise an error if the element has no such attribute.
        /// </summary>
        public string get_named_attribute_value(string name)
        {
            return NativeCalls.godot_icall_1_52(method_bind_9, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_named_attribute_value_safe");

        /// <summary>
        /// Get the value of a certain attribute of the current element by name. This will return an empty [String] if the attribute is not found.
        /// </summary>
        public string get_named_attribute_value_safe(string name)
        {
            return NativeCalls.godot_icall_1_52(method_bind_10, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_empty");

        /// <summary>
        /// Check whether the current element is empty (this only works for completely empty tags, e.g. <element \>).
        /// </summary>
        public bool is_empty()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_line");

        /// <summary>
        /// Get the current line in the parsed file (currently not implemented).
        /// </summary>
        public int get_current_line()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "skip_section");

        /// <summary>
        /// Skips the current section. If the node contains other elements, they will be ignored and the cursor will go to the closing of the current element.
        /// </summary>
        public void skip_section()
        {
            NativeCalls.godot_icall_0_7(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek");

        /// <summary>
        /// Move the buffer cursor to a certain offset (since the beginning) and read the next node there. This returns an error code.
        /// </summary>
        public int seek(int pos)
        {
            return NativeCalls.godot_icall_1_28(method_bind_14, Object.GetPtr(this), pos);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "open");

        /// <summary>
        /// Open a XML file for parsing. This returns an error code.
        /// </summary>
        public int open(string file)
        {
            return NativeCalls.godot_icall_1_63(method_bind_15, Object.GetPtr(this), file);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "open_buffer");

        /// <summary>
        /// Open a XML raw buffer for parsing. This returns an error code.
        /// </summary>
        public int open_buffer(List<byte> buffer)
        {
            return NativeCalls.godot_icall_1_248(method_bind_16, Object.GetPtr(this), buffer.ToArray());
        }
    }
}
