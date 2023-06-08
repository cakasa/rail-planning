import os
import sys

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Too few arguments")
        exit(1)

    
    exe = "ff"
    path = os.getcwd()
    print(path)
    domain = "domain5.pddl"
    problem = "hello0.pddl"
    os.chdir("/data/Metric-FF-v2.1/")
    print(os.getcwd())
    res = os.popen(f"{exe} -p {path}/ -o {domain} -f problems/{problem} -s {sys.argv[1]}")
    os.chdir(path)

    if len(sys.argv) >= 3:
        with open(sys.argv[2], "w+") as f:
            f.write(res)
    else:
        print(res)