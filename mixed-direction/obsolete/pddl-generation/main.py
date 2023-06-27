import sys
import treebuilder as t
import objects as o
import generate as g
import settings as s

def printlist(list:list):
    out = "["
    for item in list:
        out = out + f"{item} "

    print(out + "]")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Not enough arguments. Example usage:\n'python main.py \"name\" \"schedule_path\" <tree_options: int> <number_of_trackparts: int> <number_of_switches:int>'")
        exit(-1)
    name = sys.argv[1]
    path = sys.argv[2]
    l = len(name)
    if '.' in name:
        name = name[0:name.index('.')]

    tree_option = 0
    nt = 10
    ns = 3
    if len(sys.argv) >= 4:
        try:
            tree_option = int(sys.argv[3])
        except:
            print(f"Error occured while converting second argument ('{sys.argv[3]}') to integer.\nUsing default tree setting: 0 = constant_tree.")

    if len(sys.argv) >= 5:
        try:
            nt = int(sys.argv[4])
        except:
            print(f"Error occured while converting third argument ('{sys.argv[4]}') to integer.\nUsing default tree setting: 10.")

    if len(sys.argv) >= 6:
        try:
            ns = int(sys.argv[5])
        except:
            print(f"Error occured while converting second argument ('{sys.argv[5]}') to integer.\nUsing default tree setting: 3.")

    # printlist(t.filter(lambda x : isinstance(x, o.Switch), s.segments))
    lines = open(path, 'r').readlines()
    c = 0

    for schedule in lines:
        settings = s.Settings(schedule, tree_option, nt, ns)
        settings.build()
        
        with open(f"../experiments/problems/{name}{c}.pddl", 'w+') as f:
            f.write(g.create_problem_file(
                f"{name}{c}",
                settings.trains,
                settings.segments,
                settings.schedule,
                settings.tree,
                settings.tracks
            ))
            f.close()

        c += 1
        o.reset_static_vals()

