import sys

def create_problem_file(filename, name, arrival_order, departure_train_units, tree_edges, tracks):
    """ Creating PDDL problem files
    - `Filename` for creating the file
    - `name` used in the problem file
    - `s` is an array with the arriving sequence of train units, where each position is the type of the arriving train unit
    - `d` is a dictionary for the departing sequence, the keys are the types and the value is an array with nodes that should hold that type in the departing sequence
    - `tree_edges` in the form of array with tuples of edges where each node in the tree is a unique integer zero to n where node 0 is root of tree
    - `tracks` is an array with for each track an array of the nodes that exist on that track
    """
    with open(filename, 'w+') as f:
        f.write("(define (problem {}) (:domain domain1)\n".format(name))
        
        ##### define objects #####
        f.write("(:objects\n")

        # initialize the train units
        for i in range(len(arrival_order)):
            f.write("    train" + str(i+1) + " - " + arrival_order[i] +"\n")

        # initialize the track parts of the arrival/departure path
        track_parts = "    "
        for i in range(len(arrival_order)):
            track_parts += "v" + str(i+1) + " "

        # initialize the track parts in the tree
        nodes = set()
        for edge in tree_edges:
            for node in edge:
                if not node in nodes:
                    track_parts += "t" + str(node) + " "
                    nodes.add(node)
        f.write(track_parts + " - trackpart\n")

        # initialize the tracks
        track = "    "
        for i in range(len(tracks)):
            track += "track" + str(i + 1) + " "
        f.write(track + " - track\n)\n")

        ##### define init #####
        f.write("(:init\n")
        for i in range(len(arrival_order)):
            # set the initial position for all train units
            f.write("    (at train{} v{})\n".format(i+1, i+1))
            # initialize the position of the track parts on the arrival path
            if i < len(arrival_order) - 1:
                f.write("    (nextTo v{} v{})\n".format(i+1, i+2))
                f.write("    (nextTo v{} v{})\n".format(i+2, i+1))
        # initialize the main switch (t0) and its direct neighbor on the arrival path
        f.write("    (nextTo v1 t0)\n")
        f.write("    (nextTo t0 v1)\n")
        f.write("    (switch t0)\n")

        # initialize the position of the track parts in the tree
        nodes = set()
        for edge in tree_edges:
            f.write("    (nextTo t{} t{})\n".format(edge[0], edge[1]))
            f.write("    (nextTo t{} t{})\n".format(edge[1], edge[0]))
            # indicate which nodes are not occupied
            for node in edge:
                if not node in nodes:
                    f.write("    (free t{})\n".format(node))
                    nodes.add(node)
        # initialize the position of track parts on tracks
        for i in range(len(tracks)):
            for node in tracks[i]:
                f.write("    (onTrack t{} track{})\n".format(node, i+1))
        # initialize the position of track parts on the arrival path
        for i in range(len(arrival_order)):
            f.write("    (onPath v{})\n".format(i+1))

        ##### define the goals #####
        f.write(")\n(:goal (and\n")

        # define which type of train unit needs to end at position of the arrival path
        if type(departure_train_units) == dict:
            for typ in departure_train_units:
                for node in departure_train_units[typ]:
                    f.write("    (exists (?t - {}) (at ?t {}))\n".format(typ, node))
        
        # make sure all train units are parked
        for i in range(len(arrival_order)):
            f.write("    (hasBeenParked train{})\n".format(i+1))
        f.write(")))\n")

if __name__ == "__main__":
    create_problem_file("D:\\DelftFiles\\3Q4\\GitHub\\rail-planning\\newComplexProblem2.pddl", "newComplexProblem2", 
                        ["sng", "icm", "slt", "virm", "virm", "sng", "icm", "slt", "virm", "virm"], 
                        ["sng", "slt", "icm", "virm", "virm", "sng", "icm", "slt", "virm", "virm"], 
                        [(0,1), (1,2), (2,3), (3,4), (4,5), (5,6), (0,6), (0,7), (7,8), (8,9), (0,10), (10,11), (11,12)], 
                        [[1,2,3,4,5,6], [7,8,9], [10,11,12]])