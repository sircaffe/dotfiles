import subprocess as cmd
import os.path as path
import os

# configs to be deployed at $HOME/.config
list = [
    "nvim",
    "emacs"
]

HOME = path.expanduser("~")
TARGET = "/.config/"

CURRENT = os.getcwd()+"/"
PATH = HOME + TARGET
print(CURRENT)

def deploy():
    for i in list:
        if (not path.exists(PATH + i)):
            cmd.run(["ln", "-s", CURRENT+i, PATH+i])
            print(f"[INFO] Created `{PATH + i}` symlink")
        else:
            cmd.run(["ln", "-sf", CURRENT+i, PATH+i])
            print(f"[INFO] `{PATH + i}` exists. Overwriting")

deploy()
