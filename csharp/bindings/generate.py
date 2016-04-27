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
