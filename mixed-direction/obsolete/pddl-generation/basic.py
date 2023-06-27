import objects as o



tps: list[o.Segment]
entrance: o.Entrance

def pop_track(tl: int) -> list[o.Segment]:
    res = []
    for c in range(tl):
        res.append(tps.pop(0))
    return res

def segments(total: int) -> list[o.Segment]:
    res = []
    for i in range(1, total + 1):
        res.append(o.Trackpart())
    return res

def track(length: int) -> tuple[o.Segment, o.Track]:
    elems = pop_track(length)
    tr = o.Track(elems.copy())
    elems.reverse()
    res = o.EN(elems.pop(0))
    for i in range(length - 1):
        res = o.TN(elems.pop(0), res)
    
    return res, tr

def structure(width: int, length: int) -> tuple[list[o.Track], list[o.Node]]:
    tracks = []
    nodes = []
    for i in range(width):
        node, tr = track(length)
        tracks.append(tr)
        nodes.append(node)
    
    return tracks, nodes

def extract_trackparts(trs: list[o.Track]) -> str:
    res = ""
    for tr in trs:
        res += f"\t{tr.tracks()}\n"
    return res

def extract_connection(nodes: list[o.Node]) -> str:
    nodes = [o.TN(entrance, None)] + nodes
    res = ""
    for i in range(len(nodes)):
        for j in range(i+1, len(nodes)):
            res += f"\t(nextTo {nodes[i]} {nodes[j]}) (nextTo {nodes[j]} {nodes[i]})\n"
    return res

def extract_branches(nodes: list[o.Node]):
    res = ""
    for i in range(len(nodes)):
        n = nodes[i]
        while isinstance(n, o.TN):
            res += f"\t(nextTo {n} {n.next}) (nextTo {n.next} {n})\n"
            n = n.next
    return res


if __name__ == "__main__":
    l = 4
    w = 5

    tps = segments(l*w)
    free = ""
    entrance = o.Entrance()

    res = f"\t{entrance}"
    for t in tps:
        free += f"\t(free {t})\n"
        res += f" {t}"
    res += "  - trackpart\n\t"
    tracks, nodes = structure(w, l)
    for t in tracks:
        res += f"{t} "
    res += f" - track\n)\n(:init\n\t(entrance {entrance})\n"
    res += free
    res += extract_trackparts(tracks)
    res += extract_connection(nodes)
    res += extract_branches(nodes)

    print(res)
