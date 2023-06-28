import random
import subprocess
import time

n_trains = 25
tracks = [1, 2, 5, 7, 5, 5]

n_tracks = len(tracks)
arrival = [x for x in range(1, n_trains + 1)]
departure = [x for x in range(n_trains, 0, -1)]
random.shuffle(departure)

# def generate_trackparts(tracks):
#     track_parts = []
#     trackpart_counter = 0
#     for track in tracks:
#         track_trackparts = []
#         for x in range(track):
#             trackpart_counter += 1
#             track_trackparts.append(trackpart_counter)
#         track_parts.append(track_trackparts)
#     return track_parts
            

# track_parts = generate_trackparts(tracks)

trackpart_counter = 0
track_counter = 0
track_part_to_track = {}
output_tracks_parts = ["["]
for idx, track_length in enumerate(tracks):
    output_tracks_parts.append("{")
    for x in range(track_length):
        trackpart_counter += 1
        output_tracks_parts.append(str(trackpart_counter))
        track_part_to_track[trackpart_counter] = track_counter
        if x != track_length - 1:
            output_tracks_parts.append(", ")
    output_tracks_parts.append("}")
    if idx + 1 != len(tracks):
        output_tracks_parts.append(",")
    track_counter += 1
output_tracks_parts.append("]")

output_file_name = "trains{}_{}.dzn".format(n_trains, str(tracks).translate({ord(i):None for i in ' [],'}))
for x in range(20):
    random.shuffle(departure)
    data_file = open(output_file_name, "w")
    data_file.write("n_trains = " + str(n_trains) + ";\n")
    data_file.write("n_tracks = " + str(n_tracks) + ";\n")
    data_file.write("tracks = " + ''.join(output_tracks_parts) + ";\n")
    data_file.write("arrival_order = " + str(arrival) + ";\n")
    data_file.write("departure_order = " + str(departure) + ";\n")
    data_file.close()

    process = subprocess.run(["/home/meesg/Programs/MiniZincIDE-2.7.5-bundle-linux-x86_64/bin/minizinc", "/home/meesg/Study/CSE3000/github/conflicting-trains/CP/park_without_conflict.mzn", output_file_name], capture_output=True)
    if not "UNSATISFIABLE" in str(process.stdout):
        break
    elif x == 19:
        print("Couldn't generate a problem")


# print(n_trains)
# print(n_tracks)
# print(''.join(output_tracks_parts))
# print(arrival)
# print(departure)

# print(trains)
