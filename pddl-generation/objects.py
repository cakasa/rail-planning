import sys

def reset_static_vals():
    Trackpart.next = 1
    Switch.next = 1
    Entrance.next = 1
    Track.next = 1
    TrainUnit.occupied = set()
    TrainUnit.next = 1


class Segment:

    __capacity: int
    __id: int

    def __init__(self, i: int, c: int) -> None:
        self.__id = i
        self.__capacity = c

    def __str__(self) -> str:
        pass

    @property
    def isFree(self) -> str:
        if self in TrainUnit.occupied:
            return ""
        return f"\t(free {self})\n"
    
    @property
    def isSwitch(self) -> str:
        return ""

    @property
    def capacity(self) -> int:
        return self.__capacity
    
    @property
    def id(self) -> int:
        return self.__id
    
class Trackpart(Segment):
    
    next = 1

    def __init__(self, c=4) -> None:
        super().__init__(Trackpart.next, c)
        Trackpart.next = Trackpart.next + 1

    def __str__(self) -> str:
        return f"t{super().id}"
    

class Switch(Segment):

    next = 1

    def __init__(self) -> None:
        super().__init__(Switch.next, 0)
        Switch.next = Switch.next + 1

    def __str__(self) -> str:
        return f"s{super().id}"
    
    @property
    def isSwitch(self) -> str:
        return f"\t(switch {self})\n"
    

class Entrance(Segment):

    next = 1

    def __init__(self) -> None:
        super().__init__(Entrance.next, sys.maxsize)
        Entrance.next = Entrance.next + 1

    def __str__(self) -> str:
        return f"v{super().id}"
    

class Track:
    next = 1
    __id: int
    __tracks: list[Trackpart]

    def __init__(self, c: Trackpart) -> None:
        self.__id = Track.next
        self.__tracks = [c]
        Track.next = Track.next + 1

    def add_track(self, track: Trackpart):
        self.__tracks.append(track)

    def __str__(self) -> str:
        return f"track{self.id}"
    
    @property
    def id(self) -> int:
        return self.__id
    
    def tracks(self) -> list[Trackpart]:
        return self.__tracks
    
    def capacity(self) -> int:
        c = 0
        for t in self.__tracks:
            c += t.capacity

        return c
    

class TrainUnit:
    occupied = set()
    next = 1
    __id: int
    __at: Segment
    __length: int
    __arrive_at: int
    __depart_at: int

    def __init__(self, at: Segment, arrive_at: int, depart_at: int, length: int) -> None:
        self.__at = at
        self.__length = length
        self.__id = TrainUnit.next
        self.__arrive_at = arrive_at
        self.__depart_at = depart_at
        TrainUnit.next = TrainUnit.next + 1
        TrainUnit.occupied.add(at)

    def __str__(self) -> str:
        return f"train{self.id}"
    
    def set_departure(self, d: int):
        self.__depart_at = d
    
    @property
    def type(self) -> str:
        raise NotImplementedError("Method can only be applied to subclasses.")
    
    @property
    def locate(self) -> str:
        return f"\t(at {self} {self.at})\n"
    
    @property
    def length(self) -> str:
        return f"\t(= (length {self}) {self.__length})\n"
    
    @property
    def l(self) -> int:
        return self.__length
    
    
    @property
    def id(self) -> int:
        return self.__id
    
    @property
    def at(self) -> Segment:
        return self.__at
    
    @property
    def arrival(self) -> int:
        return self.__arrive_at
    
    @property
    def departure(self) -> int:
        return self.__depart_at

    
class SLT(TrainUnit):

    def __init__(self, at: Segment, arrive_at: int, depart_at: int, length=3) -> None:
        super().__init__(at, arrive_at, depart_at, length)

    @property
    def type(self) -> str:
        return "slt"

class SNG(TrainUnit):
    
    def __init__(self, at: Segment, arrive_at: int, depart_at: int, length=4) -> None:
        super().__init__(at, arrive_at, depart_at, length)

    @property
    def type(self) -> str:
        return "sng"

class ICM(TrainUnit):

    def __init__(self, at: Segment, arrive_at: int, depart_at: int, length=9) -> None:
        super().__init__(at, arrive_at, depart_at, length)

    @property
    def type(self) -> str:
        return "icm"

class VIRM(TrainUnit):

    def __init__(self, at: Segment, arrive_at: int, depart_at: int, length=6) -> None:
        super().__init__(at, arrive_at, depart_at, length)

    @property
    def type(self) -> str:
        return "virm"

class Node:

    __component: Segment

    def __init__(self, track: Segment) -> None:
        self.__component = track

    def __str__(self) -> str:
        return str(self.__component)
    
    @property
    def component(self) -> Segment:
        return self.__component
    
    def locate(self) -> str:
        return ""
        
    def show(self) -> str:
        return ""
    
   
class SN(Node):

    __l: Node
    __r: Node

    def __init__(self, track: Segment, left: Node, right: Node) -> None:
        super().__init__(track)
        self.__l = left
        self.__r = right

    def locate(self) -> str:
        l1 = f"\t(nextTo {self} {self.l})\n"
        l2 = f"\t(nextTo {self.l} {self})\n"
        r1 = f"\t(nextTo {self} {self.r})\n"
        r2 = f"\t(nextTo {self.r} {self})\n"
        return l1 + l2 + r1 + r2
    
    def show(self) -> str:
        return f"({self}) [{self.l.show()}, {self.r.show()}]"
        

    @property
    def l(self) -> Node:
        return self.__l
    
    @property
    def r(self) -> Node:
        return self.__r

    

class TN(Node):

    __next: Node

    def __init__(self, track: Segment, next: Node) -> None:
        super().__init__(track)
        self.__next = next

    def locate(self) -> str:
        x = f"\t(nextTo {self} {self.next})\n"
        y = f"\t(nextTo {self.next} {self})\n"
        return x + y
    
    def show(self) -> str:
        return f"({self}) - {self.next.show()}"

    @property
    def next(self) -> Node:
        return self.__next
    
class EN(Node):

    def __init__(self, track: Segment) -> None:
        super().__init__(track)

    def show(self) -> str:
        return f"({self})"


class Schedule:

    __time: int
    __unit: TrainUnit

    def __init__(self, time: int, unit: TrainUnit) -> None:
        self.__time = time
        self.__unit = unit

    @property
    def time(self) -> int:
        return self.__time
    
    @property
    def unit(self) -> TrainUnit:
        return self.__unit
    

class Arrival(Schedule):

    def __init__(self, time: int, unit: TrainUnit) -> None:
        super().__init__(time, unit)

    def __str__(self) -> str:
        return f"\t(= (arrive {super().unit}) {super().time})\n"
    

class Departure(Schedule):

    def __init__(self, time: int, unit: TrainUnit) -> None:
        super().__init__(time, unit)

    def __str__(self) -> str:
        return f"\t(= (depart {super().unit}) {super().time})\n"
    

class Departure_Time(Schedule):

    def __init__(self, unit: TrainUnit, time=0) -> None:
        super().__init__(time, unit)

    def __str__(self) -> str:
        return f"\t(= (departed {super().unit}) {super().time})\n"
    