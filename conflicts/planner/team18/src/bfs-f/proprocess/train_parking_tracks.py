import collections
import sys

trains = {}
tracks = {}
arrive = {}
depart = {}

def main():
    args = sys.argv[1:]
    problem_file_loc = args[0]
    problem_file = open(problem_file_loc, "r")

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
            break
    for line in problem_file:
        if "arrive" in line:
            print(line)
            line = line.replace(")", "")
            x = line.split()
            arrive[x[2]] = int(x[3])
        elif "depart" in line:
            print(line)
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
    for track_name, track_length in tracks.items():
        output_tracks_parts.append("{")
        for x in range(track_length):
            n_tracks += 1
            output_tracks_parts.append(str(n_tracks))
            if x != track_length - 1:
                output_tracks_parts.append(", ")
        output_tracks_parts.append("}")
        if track_name != list(tracks.keys())[-1]:
            output_tracks_parts.append(",")
    output_tracks_parts.append("]")

    print("n_trains = " + str(len(trains)) + ";")
    print("n_tracks = " + str(len(tracks)) + ";")
    print("tracks = " + ''.join(output_tracks_parts) + ";")
    print("arrival_order = " + str(list(arrive.values())) + ";")
    print("departure_order = " + str(list(depart.values())) + ";")
    print(tracks)

if __name__ == "__main__":
    main()
