
import imp
import os
import subprocess
import sys

from SCons.Script import Environment
from shutil import copyfile

monoreg = imp.load_source('mono_reg_utils', 'modules/mono/mono_reg_utils.py')


def find_file_in_dir(dir, files, prefix, extension):
    for file in files:
        if os.path.isfile(os.path.join(dir, prefix + file + extension)):
            return file
    
    return None


def can_build(platform):
    return True


def configure(env):
    env.use_ptrcall = True

    if env['platform'] == 'windows':
        if env['bits'] == '32':
            if os.getenv('MONO32_PREFIX'):
                mono_root = os.getenv('MONO32_PREFIX')
            else:
                mono_root = monoreg.find_mono_root_dir()
        else:
            if os.getenv('MONO64_PREFIX'):
                mono_root = os.getenv('MONO64_PREFIX')
            else:
                mono_root = monoreg.find_mono_root_dir()

        mono_lib_path = os.path.join(mono_root, 'lib')

        env.Append(LIBPATH = mono_lib_path)
        env.Append(CPPPATH = os.path.join(mono_root, 'include', 'mono-2.0'))

        mono_lib_names = [ 'mono-2.0-sgen', 'monosgen-2.0' ]
        mono_lib_name = find_file_in_dir(
            mono_lib_path, mono_lib_names,
            env['LIBPREFIX'], '.lib'
        )

        if not mono_lib_name:
            printerr('Could not find mono library in: ' + mono_lib_path)
            sys.exit(1)

        if os.getenv('VCINSTALLDIR'):
            env.Append(LINKFLAGS = mono_lib_name + Environment()['LIBSUFFIX'])
        else:
            env.Append(LIBS = mono_lib_name )
        
        mono_bin_path = os.path.join(mono_root, 'bin')
        
        mono_dll_names = [ 'mono-2.0-sgen', 'monosgen-2.0' ]
        mono_dll_name = find_file_in_dir(
            mono_bin_path, mono_dll_names,
            '', '.dll'
        )
        
        mono_dll_src = os.path.join(mono_bin_path, mono_dll_name + '.dll')
        mono_dll_dst = os.path.join('bin', mono_dll_name + '.dll')
        copy_mono_dll = True
        
        if not os.path.isdir('bin'):
            os.mkdir('bin')
        elif os.path.exists(mono_dll_dst):
            copy_mono_dll = False
        
        if copy_mono_dll:
            copyfile(mono_dll_src, mono_dll_dst)
    else:
        if os.getenv('MONO_PREFIX'):
            mono_root = os.getenv('MONO_PREFIX')

            mono_lib_path = os.path.join(mono_root, 'lib')

            env.Append(LIBPATH = mono_lib_path)
            env.Append(CPPPATH = os.path.join(mono_root, 'include', 'mono-2.0'))

            mono_lib = find_mono_lib(mono_lib_path, env['LIBPREFIX'], '.a')

            if not mono_lib:
                print('Could not find mono library in: ' + mono_lib_path)
                sys.exit(1)

            env.Append(CPPFLAGS = ['-D_REENTRANT'])
            env.Append(LIBS = [ mono_lib, 'm', 'rt', 'dl', 'pthread' ] )
        else:
            env.ParseConfig('pkg-config mono-2 --cflags --libs')

        env.Append(LINKFLAGS = '-rdynamic')
