#!/usr/bin/env python3

import glob, os
from subprocess import call


def make_dir(directory):
    if not os.path.exists(directory):
        os.makedirs(directory)


def clean_dir(directory, extensions):
    for file in os.listdir(directory):
        file_path = os.path.join(directory, file)
        filename, file_extension = os.path.splitext(file)
        if file_extension in extensions:
            remove_file(file_path)


def remove_file(file_path):
    try:
        if os.path.isfile(file_path):
            os.unlink(file_path)
    except Exception as e:
        print(e)


def remove_file_if_exists(file_path):
    if os.path.exists(file_path):
        remove_file(file_path)


SWIG = 'swig3.0'
CPP_OUT = 'wrappers'
CS_OUT = 'generated'
WRAPPER_FILE = 'cs_wrappers.cpp'
FILE = 'GodotEngine.i'

OPTIONS = ['-c++', '-csharp', '-dllimport', '__Internal', '-namespace', 'GodotEngine']

if os.path.isdir(CPP_OUT):
    remove_file_if_exists(CPP_OUT + '/' + WRAPPER_FILE)
else:
    make_dir(CPP_OUT)

if os.path.isdir(CS_OUT):
    clean_dir(CS_OUT, ['.cs'])
else:
    make_dir(CS_OUT)

if not os.path.exists(CPP_OUT):
    os.makedirs(CPP_OUT)

call([SWIG] + OPTIONS + ['-outdir', CS_OUT, '-o', CPP_OUT + '/' + WRAPPER_FILE, FILE])

with open(CPP_OUT + '/' + WRAPPER_FILE, 'r+') as f:
    output_lines = []
    for line_idx, line in enumerate(f.read().splitlines()):
        output_line = line
        if line.find('delete ') > -1 and line.endswith(';'):
            output_line = line.replace('delete ', 'memdelete(')[:-1] + ');'
        elif line.find('new ') > -1 and line.endswith(';'):
            output_line = line.replace('new ', 'memnew(')[:-1] + ');'
        elif line_idx < 50:
            output_line = line.replace('delete ptr;', 'memdelete(ptr);') \
                .replace('delete oldptr;', 'memdelete(oldptr);') \
                .replace('new T(t)', 'memnew(T(t))')
        output_lines.append(output_line)
    f.seek(0)
    for line in output_lines:
        f.write(line + '\n')
    f.truncate()
