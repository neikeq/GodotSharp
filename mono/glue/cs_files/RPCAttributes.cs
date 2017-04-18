using System;

namespace GodotEngine
{
    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Field)]
    public class Remote : Attribute {}

    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Field)]
    public class Sync : Attribute {}

    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Field)]
    public class Master : Attribute {}

    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Field)]
    public class Slave : Attribute {}
}
