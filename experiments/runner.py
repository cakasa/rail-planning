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

def execute(exe: str, cwd: str, problem: str, settings: int, timeout: int):
    domain = "tusd.pddl"
    print(f"Start search with option [{settings}] on file '{problem}' at {datetime.datetime.now()}")
    result = process(exe, cwd, domain, problem, settings, timeout)
    print(f"Search finished. Writing to file.")

    if not os.path.isdir(os.path.join(cwd, "results")):
        os.mkdir(os.path.join(cwd, "results"))
    if '.' in problem:
        name = problem[0:problem.index('.')]
    else:
        name = problem
    fname = f"./results/result-{name}-setting-{settings}.out"
    with open(fname, 'w+') as f:
        f.write(result)
        f.close()

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Too few arguments")
        exit(1)

    
    exe = "/data/Metric-FF-v2.1/ff"
    path = os.getcwd()
    print(path)
    domain = "tusd.pddl"
    problem = f"{sys.argv[1]}.pddl"
    timeout = 3600
    try:
        timeout = sys.argv[4]
    except:
        pass

    res = execute(exe, path, problem, sys.argv[2], timeout)


        