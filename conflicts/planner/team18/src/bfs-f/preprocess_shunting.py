# TODO: Make it work with different arrival orders

arrival_order =   (0, 1, 2, 3, 4)
departure_order = (3, 1, 2, 4, 0)

tracks = (2,2,1)

possible_assignments = {}

possible_assignments[1] = []
possible_assignments[2] = []

for i in range(len(arrival_order)):
    possible_assignments[1].append([arrival_order[i]])
    for j in range(i + 1, len(arrival_order)):
        if departure_order[i] > departure_order[j]:
            possible_assignments[2].append([arrival_order[i], arrival_order[j]])

possible_assignments_track = []
for i in range(len(tracks)):
    # print(tracks[i])
    # print(possible_assignments
    possible_assignments_track.append(possible_assignments[tracks[i]])

tracks_set = set(tracks)

connections = {}
for track_length in tracks_set:
    connections[track_length] = {}

for track_length in tracks_set:
    for track_length2 in tracks_set:
        connections[track_length][track_length2] = []

print("helo")
print(connections)

print(possible_assignments[2])

print(tracks_set)

# for track1_set_idx, track1_length in enumerate(tracks_set):
#     print("track1_set_idx: " + str(track1_set_idx))
#     print("track1_length: " + str(track1_length))
#     starting_point_t2 = track1_set_idx if tracks.count(track1_length) > 1 else track1_set_idx + 1
#     print("starting_point_t2: " + str(starting_point_t2))
#         for track2_idx, track2_length in enumerate(tracks_set, start=starting_point_t2):
#             print("track2_idx " + str(track2_idx))

starting_coverage = 1.1
starting_sets = None

for track1_set_idx, track1_length in enumerate(tracks_set):
    starting_point_t2 = track1_set_idx if tracks.count(track1_length) > 1 else track1_set_idx + 1
    for track2_set_idx, track2_length in enumerate(tracks_set):
        # if track2_idx < starting_point_t2: continue
        covered = [False for x in range(len(possible_assignments[track2_length]))]
        for ass1_idx in range(len(possible_assignments[track1_length])):
            starting_point = ass1_idx + 1 if track1_length == track2_length else 0
            for ass2_idx in range(starting_point, len(possible_assignments[track2_length])):
                if not set(possible_assignments[track1_length][ass1_idx]) & set(possible_assignments[track2_length][ass2_idx]):
                    covered[ass2_idx] = True
                    connections[track1_length][track2_length].append([ass1_idx, ass2_idx])
        
        
        print(track1_length)
        print(track2_length)
        coverage = covered.count(True) / len(possible_assignments[track2_length])
        if coverage < starting_coverage:
            starting_coverage = coverage
            starting_sets = [track1_set_idx, track2_set_idx]

tracks_not_covered = list(tracks)
trains_covered = set()
assignments = {track_length: [] for track_length in tracks_set}

print(list(tracks_set)[starting_sets[0]])
print(list(tracks_set)[starting_sets[1]])
# print(list(tracks_set(starting_sets))[1])
print(starting_coverage)

start_length_1 = list(tracks_set)[starting_sets[0]]
start_length_2 = list(tracks_set)[starting_sets[1]]
for connection in connections[start_length_1][start_length_2]:
    trains_track_1_ass = possible_assignments[start_length_1][connection[0]]
    trains_track_2_ass = possible_assignments[start_length_2][connection[1]]
    trains_covered.update(set(trains_track_1_ass))
    trains_covered.update(set(trains_track_2_ass))
    tracks_not_covered.remove(start_length_1)
    tracks_not_covered.remove(start_length_2)
    assignments[start_length_1].append(trains_track_1_ass)
    assignments[start_length_2].append(trains_track_2_ass)

    # while (len(trains_covered) != len(arrival_order)):
    pos_ass = []
    lowest_coverage = 1.1
    lowest_set_idx = None

    tracks_not_covered_set = set(tracks_not_covered)
    for track_set_idx, track_length in enumerate(tracks_set):
        covered = [False for x in range(len(possible_assignments[track_length]))]
        for ass_idx in range(len(possible_assignments[track_length])):
            if not trains_covered & set(possible_assignments[track_length][ass_idx]):
                covered[ass_idx] = True
                # pos_ass[track_length].append(ass_idx)
        coverage = covered.count(True) / len(possible_assignments[track_length])
        if coverage < lowest_coverage:
            lowest_coverage = coverage
            lowest_set_idx = track_set_idx

    print(lowest_set_idx)

    print(assignments)
    print(tracks_not_covered)

    assignments = {track_length: [] for track_length in tracks_set}
    tracks_not_covered = list(tracks)
    trains_covered = set()



# unchosen_tracks = [i for i in range(len(tracks))]
# print(unchosen_tracks)

# for x in range(5):
#     lowest_track = -1
#     lowest_coverage = 2

#     for track_idx in unchosen_tracks:
#         if 

# for track1_length in enumerate(tracks_set):
#     starting_point_t2 = track1_set_idx if tracks.count(track1_length) > 1 else track1_set_idx + 1
#     for track2_idx, track2_length in enumerate(tracks_set):
#         if track2_idx < starting_point_t2: continue
        
#         for ass1_idx in range(len(possible_assignments[track1_length])):

# trains_not_in_selection = arrival_order
# starting_set = 0
# chosen_connections = [0, 0]
# while len(trains_not_in_selection) != 0:
#     print(connections[tracks[0][]])
#     break


# for track1_length in enumerate(tracks_set):
#     for track2_length in enumerate(tracks_set):

# print(connections[1][1])

# print(possible_assignments[1])
# print(possible_assignments[2])
