import sys

# folders inside $HOME/.config
list = [
    "nvim"
]

args = sys.argv

def backup():
    print("backup unimplemented")

def deploy():
    print("deploy unimplemented")

if (len(args) <= 1):
    print(f"Usage: {args[0]} [backup | deploy]")
    print("ERROR: No command found")
    exit(1)

if (args[0] == "backup"):
    backup()
elif (args[0] == "deploy"):
    deploy()
else:
    print(f"Usage: {args[0]} [backup | deploy]")
    print(f"ERROR: Uknown command {args[0]}")
    exit(1)

