import random

def generate_trains(number_of_trains, services, needs_service_ratio):
    trains = {}
    train_types = ['icm', 'virm', 'sng', 'slt']

    for i in range(number_of_trains):
        train_name = 'train' + str(i + 1)
        train_type = random.choice(train_types)
        needed_services = []

        for service in services:
            if random.random() <= needs_service_ratio:
                needed_services.append(service)

        trains[train_name] = (train_type, needed_services)

    arrival_order = list(trains.keys()).copy()
    departure_order = list(trains.keys()).copy()
    random.shuffle(arrival_order)
    random.shuffle(departure_order)

    return trains, arrival_order, departure_order


def create_problem_file(filename, problem_name, trains, arrival_order, departure_order, tracks, next_to):
    """ Creating PDDL problem files
    - `filename` for creating the file
    - `problem_name` is the name to be given to the problem instance
    - `trains` is a dictionary, key = name, value = a 2-tuple of the form (train_type, needed_services)
    - `arrival_order` is a list of the order of the arriving trains (the train with index 0 arrives first)
    - `departure_order` is a list of the order of the departing trains (the train with index 0 departs last)
    - `tracks` is a dictionary, key = trackname, value = (length, services)`
    - `next_to` - a list of adjacent track pairs
    """
    with open(filename, 'w+') as f:
        f.write("(define (problem {}) (:domain servicing-simple)\n".format(problem_name))
        
        ##### define objects #####
        f.write("(:objects\n")

        # initialize the train units
        for train_name, (train_type, _) in trains.items():
            f.write("    " + train_name + " - " + train_type +"\n")
        
        # initialize the track parts of the arrival/departure path
        track_parts_string = "    "
        for i in range(len(arrival_order)):
            track_parts_string += "v" + str(i+1) + " "
        
        # initialize the track parts in the tree
        trackpart_index = 0
        track_parts = {}
        for track_name, (length, _) in tracks.items():
            track_parts[track_name] = []
            for i in range(length):
                track_part = "t" + str(trackpart_index + i)
                track_parts_string += track_part + " "
                track_parts[track_name].append(track_part)
            trackpart_index += length
        f.write(track_parts_string + "- trackpart\n")

        # initialize the tracks
        track = "    "
        for track_name, _ in tracks.items():
            track += track_name + " "
        f.write(track + "- track\n")

        # Define the services
        all_services = set()
        for track_name, (_, services) in tracks.items():
            for service in services:
                all_services.add(service)
        
        services_string = "    "
        for service in all_services:
            services_string += service + " "
        f.write(services_string + "- service\n)\n")

        ##### define init #####
        f.write("(:init\n")

        # Initialize trains
        f.write("    ; Initialize trains\n")
        
        i = 1
        for train in arrival_order:
            _, needed_services = trains[train]
            f.write("    (at {} v{})\n".format(train, i))
            
            for service in needed_services:
                f.write("    (needsService {} {})\n".format(train, service))
            
            i += 1
            f.write("\n")

    
        f.write("    ; Set adjacency of path nodes\n")
        # initialize trackpart network        
        for i in range(1, len(arrival_order)):
            f.write("    (nextTo v{} v{})\n".format(i, i + 1))
            f.write("    (nextTo v{} v{})\n".format(i + 1, i))
        
        f.write("    ; Connect path to first non-path node\n")
        # connect v0 to t0
        f.write("    (nextTo v1 t0)\n")
        f.write("    (nextTo t0 v1)\n")
        
        
        f.write("    ; Set adjacency of nodes on the same track\n")
        # connect internal track elements
        for _, trackparts in track_parts.items():
            for i in range(len(trackparts) - 1):
                f.write("    (nextTo {} {})\n".format(trackparts[i], trackparts[i + 1]))
                f.write("    (nextTo {} {})\n".format(trackparts[i + 1], trackparts[i]))

        f.write("    ; Connect adjacent tracks\n")

        # connect neighbouring tracks
        for track1, track2 in next_to:
            trackpart_list_1 = track_parts[track1]
            trackpart_list_2 = track_parts[track2]
            f.write("    (nextTo {} {})\n".format(trackpart_list_1[-1], trackpart_list_2[0]))
            f.write("    (nextTo {} {})\n".format(trackpart_list_2[0], trackpart_list_1[-1]))
        f.write("\n")

        f.write("    ; Set all non-path nodes as free\n")
        # Mark all free trackparts as such
        for _, trackparts in track_parts.items():
            for node in trackparts:
                f.write("    (free {})\n".format(node))
        
        f.write("\n")

        f.write("    ; Add path nodes to path\n")
        # Mark all path nodes as such
        for i in range(len(arrival_order)):
            f.write("    (onPath v{})\n".format(i + 1))

        f.write("\n")

        f.write("    ; Assign nodes to tracks\n")
        # initialize trackparts to tracks
        for trackname, trackpart_list in track_parts.items():
            for trackpart in trackpart_list:
                f.write("    (onTrack {} {})\n".format(trackpart, trackname))
        
        f.write("\n")

        f.write("    ; Set tracks as service ones\n")
        # set service tracks
        for trackname, (_, services) in tracks.items():
            for service in services:
                f.write("    (isServiceTrack {} {})\n".format(trackname, service))

        ##### define the goals #####
        f.write(")\n(:goal (and\n")
        f.write("    (forall (?t - trainunit) (and (hasDeparted ?t) (hasBeenParked ?t)))\n")
        f.write("    (forall (?t - trainunit ?s - service) (not (needsService ?t ?s)))\n")
        
        i = 1
        for train in departure_order:
            f.write("    (at {} v{})\n".format(train, i))
            i += 1
        f.write(")))\n")