import os, sys, datetime
import subprocess as sp

def execute(exe: str, cwd: str, problem: str, settings: int, timeout: int):
    domain = "domain5.pddl"
    result = process(exe, cwd, domain, problem, settings, timeout)

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

def process(exe: str, path: str, domain: str, problem: str, settings: int, to: int) -> str:
    id = os.getpid()
    cmd = f"{exe} -p {path}/ -o {domain} -f problems/{problem} -s {settings}"
    try:
        sub = sp.check_output(cmd.split(), timeout=to)
    except sp.TimeoutExpired:
        return f"Search on the {problem} file with strategy {settings} timed out at {datetime.timedelta(seconds=to)}.\nProcess terminated."
    return sub.decode()


if __name__ == "__main__":
    exe = "/data/Metric-FF-v2.1/ff"
    timeout = 3600
    if len(sys.argv) >= 2:
        try:
            timeout = int(sys.argv[1])
        except:
            print("Optional positional for timeout not specified. Continuing with default value = 3600s")

    if len(sys.argv) >= 3:
        try:
            if int(sys.argv[2]) == 1:
                exe = "ff-v2.1.exe"
        except:
            print("Optional positional argument must be 1 or 0!\n\tDefault: 0 for mapfw server\n\tUse 1 on PC")
            exit(1)


    cwd = os.getcwd()
    ps = os.listdir("problems")

    for p in ps:
        for i in range(6):
            execute(exe, cwd, p, i, timeout)
    
    #     pool: list[mp.Process]
    #     pool = []
    #     # pool.append(mp.Process(target=execute, args=(system, cwd, p, 0)))
    #     pool.append(mp.Process(target=execute, args=(system, cwd, p, 1, timeout), daemon=True))
    #     # pool.append(mp.Process(target=execute, args=(system, cwd, p, 2)))
    #     # pool.append(mp.Process(target=execute, args=(system, cwd, p, 3)))
    #     # pool.append(mp.Process(target=execute, args=(system, cwd, p, 4)))
    #     # pool.append(mp.Process(target=execute, args=(system, cwd, p, 5)))
    #     pool[0].start()
    #     # pool[1].start()
    #     # pool[2].start()
    #     # pool[3].start()
    #     # pool[4].start()
    #     # pool[5].start()
    #     pool[0].join(timeout)
    #     # pool[1].join(timeout)
    #     # pool[2].join(timeout)
    #     # pool[3].join(timeout)
    #     # pool[4].join(timeout)
    #     # pool[5].join(timeout)

    #     for proc in pool:
    #         if proc.is_alive():
    #             print(f"Search with setting {pool.index(proc)} did not terminated within time. Killing process.")
    #             proc.kill()
    #             # os.kill(proc.ident, signal.SIGINT)

    exit(0)





