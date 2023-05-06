import objects as o
import treebuilder as t

segments = [
    o.Entrance(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Trackpart(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch()
]

trains = [
    o.SLT(segments[0]),
    o.SLT(segments[0], 4),
    o.SNG(segments[0], 3),
    o.VIRM(segments[0])
]

schedule = [
    o.Arrival(1, trains[0]),
    o.Arrival(17, trains[1]),
    o.Arrival(16, trains[2]),
    o.Arrival(13, trains[3]),
]

for i in range(len(trains)):
    schedule.append(o.Departure(10, trains[i]))

tree = t.init_tree(segments.copy())
tracks = []
t.extract_tracks(tree, tracks)

