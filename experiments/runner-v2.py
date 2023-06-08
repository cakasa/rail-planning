import os, sys, datetime, signal
import subprocess as sp

def execute(system: int, cwd: str, problem: str, settings: int, timeout: int):
    domain = "domain5.pddl"
    if system == 0:
        os.chdir('/data/Metric-FF-v2.1/')
        result = process("ff.exe", cwd, domain, problem, settings)
        os.chdir(cwd)
    else:
        result = process("ff-v2.1.exe", cwd, domain, problem, settings, timeout)

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

def process(exe: str, path: str, domain: str, problem: str, settings: int, timeout: int) -> str:
    try:
        sub = sp.Popen(f"{exe} -p {path}/ -o {domain} -f problems/{problem} -s {settings}", stdout=sp.PIPE)
        sub.wait(timeout)
    except sp.TimeoutExpired:
        sub.terminate()
        return f"Search on the {problem} file with strategy {settings} timed out at {datetime.timedelta(seconds=timeout)}.\nProcess terminated."
    return sub.communicate()[0].decode()


if __name__ == "__main__":
    system = 0
    timeout = 3600
    if len(sys.argv) >= 2:
        try:
            timeout = int(sys.argv[1])
        except:
            print("Optional positional for timeout not specified. Continuing with default value = 3600s")

    if len(sys.argv) >= 3:
        try:
            system = int(sys.argv[2])
        except:
            print("Optional positional argument must be 1 or 0!\n\tDefault: 0 for mapfw server\n\tUse 1 on PC")
            exit(1)


    cwd = os.getcwd()
    ps = os.listdir("problems")

    for p in ps:
        for i in range(6):
            execute(system, cwd, p, i, timeout)
    
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





