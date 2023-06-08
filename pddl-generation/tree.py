import objects as o
import treebuilder as tb

tl = [4, 3, 2, 2]
sn = len(tl) - 1
tn = sum(tl)


def init_tree(components: list[o.Segment], option: int) -> o.Node:
    if option == 3:
        return buildtree(components)


    w = tb.compute_width(components)
    if len(filter(o.Trackpart, components)) < w:
        raise RuntimeError("Tree cannot be built. There are not enough tracks to build minimum width with given swith amount.")
    
    e = tb.entrance(components)
    res = tb.define_base(components, w)
    
    match option:
        case 0:
            tb.constant_tree(components, res)

        case 1:
            while (components):
                tb.straight_tree(components, res)
            
        case 2:
            while (components):
                tb.random_tree(components, res)


    
    return o.TN(e, res.pop())


def extract_tracks(tree: o.Node, ts: list[o.Track]):
    if isinstance(tree, o.TN):
        if isinstance(tree.component, o.Trackpart):
            if ts:
                ts[0].add_track(tree.component)
            else:
                ts.append(o.Track(tree.component))

            extract_tracks(tree.next, ts)

        else:
            extract_tracks(tree.next, ts)

    if isinstance(tree, o.EN):
        if ts:
            ts[0].add_track(tree.component)
        else:
            ts.append(o.Track(tree.component))

    if isinstance(tree, o.SN):
        t1 = []
        t2 = []
        extract_tracks(tree.l, t1)
        extract_tracks(tree.r, t2)
        ts.extend(t1)
        ts.extend(t2)


def buildtree(segments: list[o.Segment]) -> o.Node:
    entrance = tb.entrance(segments)
    tracks = tb.define_base(segments, len(tl))
    
    trackparts = tb.filter(o.Trackpart, segments)
    for i in range(len(tl)):
        for j in range(1, tl[i]): 
            s = trackparts.pop(0)
            segments.remove(s)
            tracks[i] = o.TN(s, tracks[i])

    for switch in segments:
        tracks.append(o.SN(switch, tracks.pop(0), tracks.pop(0)))

    return o.TN(entrance, tracks.pop(0))
    
