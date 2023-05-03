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
    o.Switch(),
    o.Switch(),
    o.Switch(),
    o.Switch()
]

trains = [
    o.SLT(segments[0]),
    o.SLT(segments[0]),
    o.SNG(segments[0]),
]

schedule = [
    o.Arrival(1, trains[0]),
    o.Arrival(3, trains[1]),
    o.Arrival(8, trains[2]),
    o.Arrival(9, trains[1]),
    o.Departure(14, trains[0]),
    o.Departure(5, trains[1]),
    o.Departure(12, trains[2]),
    o.Departure(17, trains[1]),
]

tree = t.init_tree(segments.copy())
tracks = []
t.extract_tracks(tree, tracks)

