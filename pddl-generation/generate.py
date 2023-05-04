import objects as o

def create_problem_file(name: str, trains: list[o.TrainUnit], segments: list[o.Segment],
                        schedule: list[o.Schedule], tree: o.Node, tracks: list[o.Track]) -> str:
    res = f"(define (problem {name}) (:domain domain)\n"
    res += define_objects(trains, segments, tracks)
    res += "(:init\n\t(= (timestep) 0)\n"
    res += construct_layout(tree) + track_properties(segments) + set_tracks(tracks) + place_trains(trains) + print_schedule(schedule) + ")\n"
    res += define_goal(trains)
    res += ")"
    return res

def define_goal(trains: list[o.TrainUnit]):
    res = "(:goal (and\n"
    for t in trains:
        res += f"\t(exists (?t - {t.type}) (and (at ?t {t.at}) (<= (depart ?t) 25) (= (length ?t) {t.l})))\n"

    return res + "\t(forall (?t - trainunit) (hasBeenParked ?t))\n))\n"
    

def set_tracks(tracks: list[o.Track]) -> str:
    res = ""
    for t in tracks:
        for tp in t.tracks():
            res += f"\t(onTrack {tp} {t})\n"

    return res

def define_objects(trains: list[o.TrainUnit], segments: list[o.Segment], tracks: list[o.Track]) -> str:
    res = "(:objects\n"
    for unit in trains:
        res += f"\t{unit}  - {unit.type}\n"

    res += "\t"
    for s in segments:
        res += f"{s} "
    
    res += " - trackpart\n\t"
    for t in tracks:
        res += f"{t} "

    return res + " - track\n)\n"

def track_properties(segments: list[o.Segment]) -> str:
    res = ""
    for s in segments:
        res += s.isFree + s.isSwitch

    return res

def place_trains(trains: list[o.TrainUnit]) -> str:
    res = ""
    for t in trains:
        res += t.locate + t.length
    
    return res

def print_schedule(schedule: list[o.Schedule]) -> str:
    res = ""
    for s in schedule:
        res += str(s)
   
    return res

def construct_layout(tree: o.Node) -> str:
    if isinstance(tree, o.SN):
        return tree.locate() + construct_layout(tree.l) + construct_layout(tree.r)
    
    if isinstance(tree, o.TN):
        return tree.locate() + construct_layout(tree.next)
    
    return ""


    


