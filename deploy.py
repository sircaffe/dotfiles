# deploy.py
# 
# Created on : Jun 19, 2025
# 
# Author: mokaccino (Kinan Principe)

import os, sys, subprocess

HOME = os.path.expanduser("~")
DEPLOY_DEFAULT = HOME + "/.config/"

configs = ["nvim", "i3", "alacritty"]

def deploy(path):
    print(f"LOG: Target set to {path}")
    for i in configs:
        abs_path_config = os.path.abspath("./" + i)

        try:
            if(os.path.exists(path + i)):
                print(f"LOG: {path+i} already exists")
                continue
            else:
                subprocess.run(["ln", "-s", "-T", abs_path_config, path + i], check=True)
        except subprocess.CalledProcessError:
            exit(1)

        print(f"LOG: Created symlink to {i}")

def usage():
    print(f"Usage: python3 {sys.argv[0]} [flags]")
    print(f"Options:")
    print(f"     -h              Show this help message")
    print(f"     -t <path>       Define target directory for symbolic links (default: {DEPLOY_DEFAULT})")

def check_args():
    if(len(sys.argv) > 1):
        flags = sys.argv[1:]

        if(flags[0] == "-t" and len(flags) > 1):
            deploy(flags[1])
            return True
        if(flags[0] == "-h" and len(flags) > 1):
            usage()
        return False
    else:
        deploy(DEPLOY_DEFAULT)
        return True

if(not check_args()): usage()
