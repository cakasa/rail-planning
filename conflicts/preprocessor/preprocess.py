import collections
import re
import subprocess
import sys
import time

trains = {}
tracks = {}
arrive = {}
depart = {}
init = -1

def main():
    args = sys.argv[1:]
    problem_file_loc = args[0]
    mini_zinc_loc = args[1]
    output_loc = args[2]
    data_file_loc = "trains.dzn"
    constraint_loc = "park_without_conflict.mzn"


    problem_file = open(problem_file_loc, "r")

    linecounter = 0
    for line in problem_file:
        if "trainunit" in line:
            for train in line.split():
                if train == "-": break
                trains[train] = 0
            arrive = {train: None for train in trains}
            depart = {train: None for train in trains}
        if "track\n" in line:
            for track in line.split():
                if track == "-": break
                tracks[track] = 0
        if "init" in line:
            init = linecounter
            break
        linecounter += 1
    for line in problem_file:
        if "arrive" in line:
            line = line.replace(")", "")
            x = line.split()
            arrive[x[2]] = int(x[3])
        elif "depart" in line:
            line = line.replace(")", "")
            x = line.split()
            depart[x[2]] = int(x[3])
        elif "onTrack" in line:
            line = line.replace(")", "")
            x = line.split()
            tracks[x[2]] += 1
    problem_file.close()

    output_tracks_parts = ["["]
    
    n_tracks = 0
    track_counter = 0
    track_part_to_track = {}
    print(track_part_to_track)

    for track_name, track_length in tracks.items():
        output_tracks_parts.append("{")
        for x in range(track_length):
            n_tracks += 1
            output_tracks_parts.append(str(n_tracks))
            track_part_to_track[n_tracks] = track_counter
            if x != track_length - 1:
                output_tracks_parts.append(", ")
        output_tracks_parts.append("}")
        if track_name != list(tracks.keys())[-1]:
            output_tracks_parts.append(",")
        track_counter += 1
    output_tracks_parts.append("]")

    print(track_part_to_track)

    data_file = open(data_file_loc, "w")
    data_file.write("n_trains = " + str(len(trains)) + ";\n")
    data_file.write("n_tracks = " + str(len(tracks)) + ";\n")
    data_file.write("tracks = " + ''.join(output_tracks_parts) + ";\n")
    data_file.write("arrival_order = " + str(list(arrive.values())) + ";\n")
    data_file.write("departure_order = " + str(list(depart.values())) + ";\n")
    data_file.close()

    print(str(list(depart.values())))

    start_time = time.monotonic()
    process = subprocess.run([mini_zinc_loc, constraint_loc, data_file_loc, "--solver", "chuffed"], capture_output=True)
    end_time = time.monotonic()
    print(f"Solver ran in {round(end_time-start_time, 3)}ms.")
    print(process.stdout)
    train_locations = re.search("\[.*\]", str(process.stdout)).group()
    train_locations = eval(train_locations)

    predicates = []

    for track_idx, train_idx in enumerate(train_locations):
        predicates.append("   (trainParkingTrack {} {}) \n".format(list(trains.keys())[train_idx - 1], list(tracks.keys())[track_part_to_track[track_idx + 1]]))
    
    insert_file_lines(problem_file_loc, init + 1, predicates, output_loc)

def insert_file_lines(path, index, lines, path_out=None):
    with open(path, "r") as f:
        contents = f.readlines()

    for idx, line in enumerate(lines):
        contents.insert(index + idx, line)

    if path_out is None: path_out = path

    with open(path_out, "w") as f:
        f.writelines(contents)


if __name__ == "__main__":
    main()
