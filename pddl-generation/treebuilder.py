import objects as o
import random
import math

def init_tree(components: list[o.Segment], option: int) -> o.Node:
    w = compute_width(components)
    if len(filter(o.Trackpart, components)) < w:
        raise RuntimeError("Tree cannot be built. There are not enough tracks to build minimum width with given swith amount.")
    
    e = entrance(components)
    res = define_base(components, w)
    
    match option:
        case 0:
            while (components):
                straight_tree(components, res)

        case 1:
            while (components):
                random_tree(components, res)

    
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

def entrance(comps: list[o.Segment]) -> o.Entrance:
    for i in range(len(comps)):
        if isinstance(comps[i], o.Entrance):
            return comps.pop(i)

def compute_width(components: list[o.Segment]) -> int:
    return len(filter(o.Switch, components)) + 1

def filter(t: type, components:list[o.Segment]) -> list[o.Segment]:
    res = []
    for s in components:
        if isinstance(s, t):
            res.append(s)

    return res

def define_base(comps: list[o.Segment], w: int) -> list[o.Node]:
    res = []
    for i in range(len(comps)):
        if isinstance(comps[i], o.Trackpart):
            res.append(o.EN(comps.pop(i)))
            w -= 1

        if w <= 0:
            return res
        
    return res

def random_tree(comps: list[o.Segment], ns: list[o.Node]) -> None:
    c = comps.pop(math.floor(random.random() * len(comps)))
    if isinstance(c, o.Switch):
        t1 = ns.pop(math.floor(random.random() * len(ns)))
        t2 = ns.pop(math.floor(random.random() * len(ns)))
        ns.append(o.SN(c, t1, t2))
        
    if isinstance(c, o.Trackpart):
        ns.append(o.TN(c, ns.pop(math.floor(random.random() * len(ns)))))

def straight_tree(comps: list[o.Segment], ns: list[o.Node]) -> None:
    ts = filter(o.Trackpart, comps)
    if ts:
        c = ts.pop(math.floor(random.random() * len(ts)))
        comps.remove(c)
        ns.append(o.TN(c, ns.pop(math.floor(random.random() * len(ns)))))

    else:
        c = comps.pop(0)
        t1 = ns.pop(math.floor(random.random() * len(ns)))
        t2 = ns.pop(math.floor(random.random() * len(ns)))
        ns.append(o.SN(c, t1, t2))
    



    
    