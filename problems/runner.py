import os
from datetime import datetime

cwd = os.getcwd()

def process(path: str, domain: str, problem: str, settings: int) -> str:
    return os.popen(f"ff.exe -p {path}\ -o {domain} -f {problem} -s {settings}").read()


path = f"./"
domain = f"domain{5}.pddl"
problem = f"hello{5}.pddl"
settings = f"{0}"

os.chdir('/data/Metric-FF-v2.1/')
result = process(cwd, domain, problem, settings)
os.chdir(cwd)


timestamp = f"{datetime.now().date()};{datetime.now().time()}"
fname = f"res-p3-{settings}--{timestamp}.txt"

with open(f"./results/res{1}.txt", 'w+') as f:
    f.write(result)
    f.close()




# print("Result of execution:\n\n")
# print(result)



