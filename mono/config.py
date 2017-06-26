
import os
from SCons.Script import Environment


def get_program_files_32():
    if os.getenv('PROGRAMFILES(X86)'):
        return os.getenv('PROGRAMFILES(X86)')
    else:
        return os.getenv('PROGRAMFILES')


def get_program_files_64():
    return os.getenv('PROGRAMW6432')


def can_build(platform):
    return True


def configure(env):
    env.use_ptrcall = True

    if env['platform'] == 'windows':
        if env['bits'] == '32':
            if os.getenv('MONO32_PREFIX'):
                mono_path = os.getenv('MONO32_PREFIX')
            else:
                mono_path = os.path.join(get_program_files_32(), 'Mono')
        else:
            if os.getenv('MONO64_PREFIX'):
                mono_path = os.getenv('MONO64_PREFIX')
            else:
                mono_path = os.path.join(get_program_files_64(), 'Mono')

        env.Append(LIBPATH = os.path.join(mono_path, 'lib'))
        env.Append(CPPPATH = os.path.join(mono_path, 'include', 'mono-2.0'))

        mono_lib = 'monosgen-2.0'

        if os.getenv("VCINSTALLDIR"):
            env.Append(LINKFLAGS = mono_lib + Environment()['LIBSUFFIX'])
        else:
            env.Append(LIBS = mono_lib )
    else:
        if os.getenv('MONO_PREFIX'):
            mono_path = os.getenv('MONO_PREFIX')

            env.Append(LIBPATH = os.path.join(mono_path, 'lib'))
            env.Append(CPPPATH = os.path.join(mono_path, 'include', 'mono-2.0'))

            mono_lib = 'monosgen-2.0'

            env.Append(CPPFLAGS = ['-D_REENTRANT'])
            env.Append(LIBS = [ mono_lib, 'm', 'rt', 'dl', 'pthread' ] )
        else:
            env.ParseConfig('pkg-config mono-2 --cflags --libs')

        env.Append(LINKFLAGS = '-rdynamic')
