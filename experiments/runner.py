import os, sys, datetime
import subprocess as sp


def process(exe: str, path: str, domain: str, problem: str, settings: int, to: int) -> str:
    id = os.getpid()
    cmd = f"{exe} -p {path}/ -o {domain} -f problems/{problem} -s {settings}"
    try:
        sub = sp.check_output(cmd.split(), timeout=to)
    except sp.TimeoutExpired:
        return f"Search on the {problem} file with strategy {settings} timed out at {datetime.timedelta(seconds=to)}.\nProcess terminated."
    return sub.decode()


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Too few arguments")
        exit(1)

    
    exe = "/data/Metric-FF-v2.1/ff"
    path = os.getcwd()
    print(path)
    domain = "domain5.pddl"
    problem = f"{sys.argv[1]}.pddl"
    timeout = 3600
    try:
        timeout = sys.argv[4]
    except:
        pass

    res = process(exe, path, domain, problem, sys.argv[2], 5)


    try:
        with open(sys.argv[3], "w+") as f:
            f.write(res)
    except:
        print(res)

        