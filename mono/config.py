
from subprocess import call
from SCons.Script import File


def can_build(platform):
    return True


def configure(env):
    env.use_ptrcall = True

    if env['platform'] == 'windows':
        if env['bits'] == '64':
            env.Append(LIBPATH = 'C:\\Program Files\\Mono\\lib\\')
            env.Append(CPPPATH = 'C:\\Program Files\\Mono\\include\\mono-2.0\\')
        else:
            env.Append(LIBPATH = 'C:\\Program Files (x86)\\Mono\\lib\\')
            env.Append(CPPPATH = 'C:\\Program Files (x86)\\Mono\\include\\mono-2.0\\')

        env.Append(LINKFLAGS = [ 'monosgen-2.0.lib' ])
    else:
        env.ParseConfig('pkg-config mono-2 --cflags --libs')
        env.Append(LINKFLAGS = '-rdynamic')
