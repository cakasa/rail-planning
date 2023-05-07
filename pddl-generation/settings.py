import objects as o
import treebuilder as t


def trackparts(n: int) -> list[o.Trackpart]:
    res = []
    for i in range(n):
        res.append(o.Trackpart())
    return res

def switches(n: int) -> list[o.Switch]:
    res = []
    for i in range(n):
        res.append(o.Switch())
    return res

segments = [o.Entrance()] + trackparts(10) + switches(3)

trains = [
    o.SLT(segments[0]),
    o.SLT(segments[0], 4),
    o.SNG(segments[0], 3),
    o.VIRM(segments[0])
]

arrivals = [
    o.Arrival(1, trains[0]),
    o.Arrival(17, trains[1]),
    o.Arrival(16, trains[2]),
    o.Arrival(13, trains[3]),
]

departures = [
    o.Departure(10, trains[0]),
    o.Departure(40, trains[0]),
    o.Departure(40, trains[0]),
    o.Departure(40, trains[0])
]

def departure_times() -> list[o.Departure_Time]:
    res = []
    for i in range(len(trains)):
        res.append(o.Departure_Time(trains[i]))
    return res

schedule = arrivals + departures + departure_times()

def tree(option: int) -> o.Node:
    return t.init_tree(segments.copy(), option)

def tracks(tree: o.Node) -> list[o.Track]:
    res = []
    t.extract_tracks(tree, res)
    return res

