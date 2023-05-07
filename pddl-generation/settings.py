import objects as o
import treebuilder as t


class Settings:
    __entrance = o.Entrance
    __tree_option: int
    __nt: int
    __ns: int

    trains: list[o.TrainUnit]
    segments: list[o.Segment]
    schedule: list[o.Schedule]
    tree: o.Node
    tracks: list[o.Track]


    def __init__(self, tree_option: int, nt: int, ns: int) -> None:
        self.__entrance = o.Entrance()
        self.__tree_option = tree_option
        self.__nt = nt
        self.__ns = ns

    def build(self) -> None:
        self.trains = self.__trains()
        self.segments = self.__segments()
        self.schedule = self.__schedule()
        self.tree = self.__tree()
        self.tracks = self.__tracks()

    def __trackparts(self) -> list[o.Trackpart]:
        res = []
        for i in range(self.__nt):
            res.append(o.Trackpart())
        return res

    def __switches(self) -> list[o.Switch]:
        res = []
        for i in range(self.__ns):
            res.append(o.Switch())
        return res

    def __segments(self) -> list[o.Segment]:
        return [self.__entrance] + self.__trackparts() + self.__switches()

    def __trains(self) -> list[o.TrainUnit]:
        return [
            o.SLT(self.__entrance),
            o.SLT(self.__entrance, 4),
            o.SNG(self.__entrance, 3),
            o.VIRM(self.__entrance)
        ]

    def __arrivals(self) -> list[o.Arrival]:
        return [
            o.Arrival(1, self.trains[0]),
            o.Arrival(17, self.trains[1]),
            o.Arrival(16, self.trains[2]),
            o.Arrival(13, self.trains[3]),
        ]

    def __departures(self) -> list[o.Departure]:
        return [
            o.Departure(10, self.trains[0]),
            o.Departure(40, self.trains[1]),
            o.Departure(40, self.trains[2]),
            o.Departure(40, self.trains[3])
        ]

    def __departure_times(self) -> list[o.Departure_Time]:
        res = []
        for i in range(len(self.trains)):
            res.append(o.Departure_Time(self.trains[i]))
        return res

    def __schedule(self) -> list[o.Schedule]:
        return self.__arrivals() + self.__departures() + self.__departure_times()

    def __tree(self) -> o.Node:
        return t.init_tree(self.segments.copy(), self.__tree_option)


    def __tracks(self) -> list[o.Track]:
        res = []
        t.extract_tracks(self.tree, res)
        return res

