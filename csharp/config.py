
from subprocess import call


def can_build(platform):
  return True


def configure(env):
	call(['./generate.py'], cwd='modules/csharp/bindings/')
