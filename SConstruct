#!/bin/env python
# -*- mode: python; coding: utf-8-sig -*-
#=======================================================================================================================

import os

env = Environment(
    ENV = os.environ,
    PYTHON3 = os.environ.get('PYTHON3', 'C:/Python34/python.exe'),
    )
env.AppendUnique(
    CPPPATH = ['C:/Python34/include'],
    LIBPATH = ['C:/Python34/libs'],
    CCFLAGS = ['/O2', '/Ot', '/Ob2', '/Oi', '/EHsc', '/MT', '/arch:AVX'],
    )
env['SHLIBSUFFIX'] = '.pyd'

fib_c = env.Command('fib.c', 'fib.pyx', '${PYTHON3} -m cython -f "${SOURCE}"')
env.SharedLibrary(fib_c)
