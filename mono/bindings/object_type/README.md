These swig interfaces are automatically generated for Object types. Do not edit them manually.

To generate the interfaces run Godot with the argument `-csintf` followed by the output directory. Example:

`./bin/godot.x11.tools.64 -csintf modules/csharp/bindings/interfaces/`

One of the generated interfaces is `Interfaces.i`, which `%include`s all of the other generated interfaces. This interface itself is `%include`d by `GodotEngine.i`.
