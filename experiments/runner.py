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
    if len(sys.argv) < 2:
        print("Too few arguments")
        exit(1)

    
    exe = "/data/Metric-FF-v2.1/ff"
    path = os.getcwd()
    print(path)
    domain = "domain5.pddl"
    problem = "hello0.pddl"

    res = process(exe, path, domain, problem, sys.argv[1], 5)


    if len(sys.argv) >= 3:
        with open(sys.argv[2], "w+") as f:
            f.write(res)
    else:
        print(res)

        