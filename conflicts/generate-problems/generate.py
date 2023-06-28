def create_problem_file(filename, name, n_trains, departure_train_units, tree_edges, tracks):
    """ Creating PDDL problem files
    - `Filename` for creating the file
    - `name` used in the problem file
    - `s` is an array with the arriving sequence of train units, where each position is the type of the arriving train unit
    - `d` is a dictionary for the departing sequence, the keys are the types and the value is an array with nodes that should hold that type in the departing sequence
    - `tree_edges` in the form of array with tuples of edges where each node in the tree is a unique integer zero to n where node 0 is root of tree
    - `tracks` is an array with for each track an array of the nodes that exist on that track
    """
    with open(filename, 'w+') as f:
        f.write("(define (problem {}) (:domain domain0)\n".format(name))
        
        ##### define objects #####
        f.write("(:objects\n")

        # initialize the train units
        f.write("    ")
        for i in range(n_trains):
            f.write("train" + str(i + 1)  + " ")
        f.write(" - trainunit\n")

        # initialize the track parts of the arrival/departure path
        track_parts = "    "
        # for i in range(n_trains):
        #     track_parts += "v" + str(i+1) + " "
        track_parts += "v1 "
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
        f.write("    (station v1)\n")

        f.write("    (driver train1)\n")

        for i in range(1, n_trains):
            f.write("    (nextTrainArriving train{} train{})\n".format(i, i + 1))

        f.write("    (lastArrival train{})\n".format(n_trains))
        f.write("    (firstDeparture train{})\n".format(departure_train_units[0]))

        for i in range(0, n_trains - 1):
            f.write("    (nextTrainDeparting train{} train{})\n".format(departure_train_units[i], departure_train_units[i+1]))
        
        for i in range(n_trains):
            # set the initial position for all train units
            # f.write("    (at train{} v{})\n".format(i+1, i+1))
            f.write("    (at train{} v1)\n".format(i+1))
            # initialize the position of the track parts on the arrival path
            # if i < n_trains - 1:
            #     f.write("    (nextToArrival v{} v{})\n".format(i+2, i+1))
            #     f.write("    (nextToDeparture v{} v{})\n".format(i+1, i+2))
        # initialize the main switch (t0) and its direct neighbor on the arrival path
        f.write("    (nextToArrival v1 t0)\n")
        f.write("    (nextToDeparture t0 v1)\n")

        # initialize the position of the track parts in the tree
        nodes = set()
        for edge in tree_edges:
            f.write("    (nextToArrival t{} t{})\n".format(edge[0], edge[1]))
            f.write("    (nextToDeparture t{} t{})\n".format(edge[1], edge[0]))
            # indicate which nodes are not occupied
            for node in edge:
                if not node in nodes:
                    f.write("    (free t{})\n".format(node))
                    nodes.add(node)
        # initialize the position of track parts on tracks
        for i in range(len(tracks)):
            f.write("    (canPark t{})\n".format(tracks[i][-1]))
            for node in tracks[i]:
                f.write("    (onTrack t{} track{})\n".format(node, i+1))
        # # initialize the position of track parts on the arrival path
        # for i in range(n_trains - 1):
        #     f.write("    (nextTo t{} t{})\n".format(i+1, i+2))
        #     f.write("    (nextTo t{} t{})\n".format(i+2, i+1))

        for i in range(1, n_trains + 1):
            f.write("    (= (arrive train{}) {})\n".format(i, i))
            f.write("    (= (depart train{}) {})\n".format(departure_train_units[i - 1], i))

        ##### define the goals #####
        f.write(")\n(:goal (and\n")

        # # define which type of train unit needs to end at position of the arrival path
        # for train in range(len(departure_train_units)):
        #     f.write("    (at train{} v{})\n".format(train + 1, departure_train_units[train]))
        
        # make sure all train units have departed
        for i in range(n_trains):
            f.write("    (hasDeparted train{})\n".format(i+1))
        f.write(")))\n")

def generate_tree_edges(tracks):
    tree_edges = []
    for track in tracks:
        tree_edges.append((0, track[0]))
        for x in range(len(track) - 1):
            tree_edges.append((track[x], track[x + 1]))
    return tree_edges

def transform_departure(departs):
    new_departs = {}
    for idx, depart in enumerate(departs):
        new_departs[depart] = idx + 1
    new_departs = dict(sorted(new_departs.items()))
    return list(new_departs.values())

def main():
    filename = "problem3_25.pddl"
    name = "problem3_25"

    # n_trains = 15
    # n_tracks = 4
    # tracks = [[1],[2, 3],[4, 5, 6, 7, 8],[9, 10, 11, 12, 13, 14, 15]]
    # arrival_order = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    # departure_order = [8, 7, 12, 3, 14, 2, 1, 15, 13, 11, 9, 6, 10, 5, 4]

    n_trains = 25
    n_tracks = 6
    tracks = [[1],[2, 3],[4, 5, 6, 7, 8],[9, 10, 11, 12, 13, 14, 15],[16, 17, 18, 19, 20],[21, 22, 23, 24, 25]]
    arrival_order = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
    departure_order = [24, 9, 18, 1, 20, 25, 13, 23, 17, 19, 15, 4, 12, 16, 22, 14, 8, 2, 6, 5, 3, 21, 10, 11, 7]


    # n_trains = 50
    # n_tracks = 11
    # tracks = [[1, 2, 3, 4, 5],[6, 7, 8, 9, 10],[11, 12, 13, 14, 15],[16, 17, 18, 19, 20],[21, 22],[23, 24, 25, 26, 27, 28, 29, 30],[31, 32, 33],[34, 35, 36],[37, 38, 39],[40],[41, 42, 43, 44, 45, 46, 47, 48, 49, 50]]
    # arrival_order = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50];
    # departure_order = [25, 41, 4, 28, 31, 34, 37, 8, 49, 20, 5, 46, 48, 36, 38, 1, 16, 44, 2, 13, 33, 23, 24, 47, 35, 17, 6, 32, 45, 9, 12, 43, 30, 7, 11, 42, 10, 26, 40, 19, 15, 29, 39, 22, 50, 14, 3, 27, 21, 18]


    # n_trains = 40
    # n_tracks = 10
    # # tracks = [[1,2,3], [4,5], [6,7,8], [9,10], [11,12,13,14], [15], [16,17], [18,19,20]]
    # tracks = [[1, 2, 3, 4, 5],[6, 7, 8, 9, 10],[11, 12, 13, 14, 15],[16, 17, 18, 19, 20],[21, 22],[23, 24, 25, 26, 27, 28, 29, 30],[31, 32, 33],[34, 35, 36],[37, 38, 39],[40]];

    tree_edges = generate_tree_edges(tracks)
    d = transform_departure(departure_order)

    # d = [3, 15, 20, 10, 6, 18, 1, 14, 8, 7, 12, 13, 4, 2, 19, 5, 16, 11, 17, 9]

    # d = transform_departure([37, 6, 28, 36, 4, 10, 22, 2, 17, 19, 27, 8, 23, 34, 9, 32, 12, 31, 11, 20, 21, 3, 13, 25, 40, 35, 30, 15, 39, 29, 24, 5, 14, 18, 38, 33, 16, 7, 1, 26])
    print(d)
    # d = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

    # d = [5,4,3,2,1,10,9,8,7,6,15,14,13,12,11,20,19,18,17,16]
    # tree_edges = [(0,1), (0,6), (0,11), (0,16), (1,2), (2,3), (3,4), (4,5), (6,7), (7,8), (8,9), (9,10),
                #   (11,12), (12,13), (13,14), (14,15), (16,17), (17,18), (18,19), (19,20)]
    # tracks = [[1,2,3,4,5], [6,7,8,9,10], [11,12,13,14,15], [16,17,18,19,20]]
    create_problem_file(filename, name, n_trains, d, tree_edges, tracks)

# p5
    # s = 10
    # d = [7, 6, 8, 10, 9, 3, 5, 4, 2, 1]
    # tree_edges = [(0,1), (0,2), (0,4), (0,7), (0, 10), (2,3), (4,5), (5,6), (7,8), (8,9)]
    # tracks = [[1], [2,3], [4,5,6], [7,8,9], [10]]

if __name__ == "__main__":
    main()
