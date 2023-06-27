import objects as o
import random
import math


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
        c = ts.pop(0) #math.floor(random.random() * len(ts)))
        comps.remove(c)
        ns.append(o.TN(c, ns.pop(math.floor(random.random() * len(ns)))))

    else:
        c = comps.pop(0)
        t1 = ns.pop(math.floor(random.random() * len(ns)))
        t2 = ns.pop(math.floor(random.random() * len(ns)))
        ns.append(o.SN(c, t1, t2))

def constant_tree(comps: list[o.Segment], ns: list[o.Node]):
    ts = filter(o.Trackpart, comps)
    w = len(ns)
    for c in range(len(ts)):
        i = c % w
        n = ts.pop(0)
        comps.remove(n)
        ns[i] = (o.TN(n, ns[i]))

    for c in comps:
        ns.append(o.SN(c, ns.pop(0), ns.pop(0)))



    



    
    