import objects as o
import treebuilder as t
import parsing as p


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
    goal: list[o.Departure]


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
        self.goal = self.__goal()

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
        res = open("schedule.txt", 'r').read()
        return p.parser(res, self.__entrance)

        # return [
        #     o.SLT(self.__entrance, 1, 10),
        #     # o.SLT(self.__entrance, 3, 24),
        #     o.SLT(self.__entrance, 3, 19),
        #     o.VIRM(self.__entrance, 12, 24)
        # ]

    def __arrivals(self) -> list[o.Arrival]:
        res = []
        for t in self.trains:
            res.append(o.Arrival(t.arrival, t))

        return res

    def __goal(self) -> list[o.Departure]:
        res = []
        for t in self.trains:
            res.append(o.Departure(t.departure, t))

        return res

    def __departure_times(self) -> list[o.Departure_Time]:
        res = []
        for t in self.trains:
            res.append(o.Departure_Time(t))
        return res

    def __schedule(self) -> list[o.Schedule]:
        return self.__arrivals() + self.__departure_times()

    def __tree(self) -> o.Node:
        return t.init_tree(self.segments.copy(), self.__tree_option)

    def __tracks(self) -> list[o.Track]:
        res = []
        t.extract_tracks(self.tree, res)
        return res

