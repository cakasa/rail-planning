import sys
import treebuilder as t
import objects as o
import generate as g
import settings as s

test = [
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart()
]

def printlist(list:list):
    out = "["
    for item in list:
        out = out + f"{item} "

    print(out + "]")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Not enough arguments. Example usage: 'python main.py \"name\"'")
        exit(-1)
    name = sys.argv[1]
    l = len(name)
    if '.' in name:
        name = name[0:name.index('.')]

    # printlist(t.filter(lambda x : isinstance(x, o.Switch), s.segments))
    with open(f"../problems/{name}.pddl", 'w+') as f:
        f.write(g.create_problem_file(
            name,
            s.trains,
            s.segments,
            s.schedule,
            s.tree,
            s.tracks
        ))
        f.close()

