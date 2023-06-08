import os, sys, datetime, signal
import subprocess as sp
from multiprocessing import active_children


def process(exe: str, path: str, domain: str, problem: str, settings: int, timeout: int) -> str:
    id = os.getpid()
    try:
        sub = sp.Popen(f"{exe} -p {path}/ -o {domain} -f problems/{problem} -s {settings}",shell=True, stdout=sp.PIPE, preexec_fn=os.setsid)
        sub.wait(timeout)
    except sp.TimeoutExpired:
        print(active_children())
        os.kill(sub.pid, signal.SIGINT)
        print(active_children())
        return f"Search on the {problem} file with strategy {settings} timed out at {datetime.timedelta(seconds=timeout)}.\nProcess terminated."
    return sub.communicate()[0].decode()


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Too few arguments")
        exit(1)

    
    exe = "./ff"
    path = os.getcwd()
    print(path)
    domain = "domain5.pddl"
    problem = "hello0.pddl"
    os.chdir("/data/Metric-FF-v2.1/")
    print(os.getcwd())
    res = process(exe, path, domain, problem, sys.argv[1], 15)
    os.chdir(path)

    if len(sys.argv) >= 3:
        with open(sys.argv[2], "w+") as f:
            f.write(res)
    else:
        print(res)

        