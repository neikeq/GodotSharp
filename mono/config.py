
from subprocess import call


def can_build(platform):
    return True


def configure(env):
    env.use_ptrcall = True

    if env['platform'] is 'windows':
        raise AssertionError('TODO: Link mono on windows')
    else:
        env.ParseConfig('pkg-config mono-2 --cflags --libs')
        env.Append(LINKFLAGS='-rdynamic')
