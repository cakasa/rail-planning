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
    if len(sys.argv) < 2:
        print("Not enough arguments. Example usage:\n'python main.py \"name\" <tree_options: int> <number_of_trackparts: int> <number_of_switches:int>'")
        exit(-1)
    name = sys.argv[1]
    l = len(name)
    if '.' in name:
        name = name[0:name.index('.')]

    tree_option = 0
    nt = 10
    ns = 3
    if len(sys.argv) >= 3:
        try:
            tree_option = int(sys.argv[2])
        except:
            print(f"Error occured while converting second argument ('{sys.argv[2]}') to integer.\nUsing default tree setting: 0 = straight_tree.")

    if len(sys.argv) >= 4:
        try:
            nt = int(sys.argv[3])
        except:
            print(f"Error occured while converting third argument ('{sys.argv[3]}') to integer.\nUsing default tree setting: 10.")

    if len(sys.argv) >= 5:
        try:
            ns = int(sys.argv[4])
        except:
            print(f"Error occured while converting second argument ('{sys.argv[4]}') to integer.\nUsing default tree setting: 3.")

    # printlist(t.filter(lambda x : isinstance(x, o.Switch), s.segments))
    with open(f"../problems/{name}.pddl", 'w+') as f:
        settings = s.Settings(tree_option, nt, ns)
        settings.build()
        f.write(g.create_problem_file(
            name,
            settings.trains,
            settings.segments,
            settings.schedule,
            settings.tree,
            settings.tracks
        ))
        f.close()

