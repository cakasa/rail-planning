import objects as o

def create_problem_file(name: str, trains: list[o.TrainUnit], segments: list[o.Segment],
                        schedule: list[o.Schedule], tree: o.Node, tracks: list[o.Track]) -> str:
    res = f"(define (problem {name}) (:domain tusd)\n"
    res += define_objects(trains, segments, tracks)
    # res += "(:init\n"
    # res += construct_layout(tree)
    # res += track_properties(segments)
    # res += set_tracks(tracks)
    # res += "\t(= (timestep) 0)\n\t(= (cost) 0)\n"
    res += open("template.txt").read()
    res += place_trains(trains)
    res += print_schedule(schedule)
    # res += train_unit_length(trains)
    # res += define_capacity(tracks) 
    res += ")\n"
    res += set_goal(schedule, trains)
    res += "(\n\t:metric minimize (cost)\n)\n)"
    return res


def depart_at(schedule: list[o.Schedule], train: o.TrainUnit):
    for s in schedule:
        if isinstance(s, o.Departure):
            if s.unit.id == train.id:
                return s.time
    
    return 0
        

def define_goal(schedule: list[o.Schedule], trains: list[o.TrainUnit]):
    res = "(:goal (and\n"
    max = 0
    for t in trains:
        if t.departure > max:
            max = t.departure
        res += f"\t(exists (?t - {t.type}) (and (>= (departed ?t) {t.departure}) (<= (departed ?t) {t.departure + 2})))\n" # (<= (depart ?t) {depart_at(schedule, t) + 1}) (= (length ?t) {t.l})))\n"

    return res + f"\t(forall (?t - trainunit) (and (hasBeenParked ?t) (at ?t v1)))\n\t(<= (timestep) {max + 2})\n))\n"

def set_goal(schedule: list[o.Schedule], trains: list[o.TrainUnit]):
    res = "(:goal (and\n"
    max = 0
    for t in trains:
        if t.departure > max:
            max = t.departure
        res += f"\t(exists (?t - {t.type}) (= (departed ?t) {t.departure}))\n" # (<= (depart ?t) {depart_at(schedule, t) + 1}) (= (length ?t) {t.l})))\n"

    return res + f"\t(forall (?t - trainunit) (and (hasBeenParked ?t) (at ?t v1)))\n\t(= (timestep) {max + 1})\n))\n"
    

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

    # res += "\t"
    # for s in segments:
    #     res += f"{s} "
    
    # res += " - trackpart\n\t"
    # for t in tracks:
    #     res += f"{t} "

    return res #+ " - track\n)\n"

def track_properties(segments: list[o.Segment]) -> str:
    res = ""
    for s in segments:
        res += s.isFree + s.isSwitch

    return res

def place_trains(trains: list[o.TrainUnit]) -> str:
    res = ""
    for t in trains:
        res += t.locate
    
    return res

def print_schedule(schedule: list[o.Schedule]) -> str:
    res = ""
    for s in schedule:
        res += str(s)
   
    return res

def define_capacity(tracks: list[o.Track]) -> str:
    res = ""
    for t in tracks:
        c = 0
        for tp in t.tracks():
            c += tp.capacity
        
        res += f"\t(= (capacity {t}) {c})\n"
    return res

def train_unit_length(trains: list[o.TrainUnit]) -> str:
    res = ""
    for t in trains:
        res += t.length
    
    return res

def construct_layout(tree: o.Node) -> str:
    if isinstance(tree, o.SN):
        return tree.locate() + construct_layout(tree.l) + construct_layout(tree.r)
    
    if isinstance(tree, o.TN):
        if isinstance(tree.component, o.Entrance):
            return f"\t(onPath {tree.component})\n" + tree.locate() + construct_layout(tree.next)
        return tree.locate() + construct_layout(tree.next)
    
    return ""


    


