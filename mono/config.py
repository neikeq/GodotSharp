
from subprocess import call


def can_build(platform):
    return True


def configure(env):
    env.use_ptrcall=True
