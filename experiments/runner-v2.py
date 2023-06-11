import os, sys, runner


if __name__ == "__main__":
    exe = "/data/Metric-FF-v2.1/ff"
    timeout = 1800
    try:
        timeout = int(sys.argv[1])
    except:
        print("Optional positional for timeout not specified. Continuing with default value = 3600s")

    try:
        if int(sys.argv[2]) == 1:
            exe = "ff-v2.1.exe"
    except:
        print("Optional positional argument for sysytem not specified.\n\tDefault: 0 for mapfw server\n\tUse 1 on PC")


    run = [0, 3, 5]
    cwd = os.getcwd()
    ps = os.listdir("problems")
    print(f"Executing ff for the following files: {ps}")

    for p in ps:
        for i in run:
            runner.execute(exe, cwd, p, i, timeout)
    
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





