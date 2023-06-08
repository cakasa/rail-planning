import objects as o

def parser(inp: str, at:o.Entrance) -> list[o.TrainUnit]:
    vals = inp.split()
    temp = []
    res = []
    c = 0
    for train in vals:
        match train:
            case "+slt":
                temp.append(o.SLT(at, c, -1))
                c += 1

            case "-slt":
                unit = get_type(temp, o.SLT)
                unit.set_departure(c)
                res.append(unit)
                c += 1

            case "+sng":
                temp.append(o.SNG(at, c, -1))
                c += 1

            case "-sng":
                unit = get_type(temp, o.SNG)
                unit.set_departure(c)
                res.append(unit)
                c += 1

            case "+icm":
                temp.append(o.ICM(at, c, -1))
                c += 1

            case "-icm":
                unit = get_type(temp, o.ICM)
                unit.set_departure(c)
                res.append(unit)
                c += 1

            case "+virm":
                temp.append(o.VIRM(at, c, -1))
                c += 1

            case "-virm":
                unit = get_type(temp, o.VIRM)
                unit.set_departure(c)
                res.append(unit)
                c += 1

            case _ :
                raise SyntaxError()

    return res

def get_type(ts: list[o.TrainUnit], ty: type) -> o.TrainUnit:
    for i in range(len(ts)):
        if isinstance(ts[i], ty):
            return ts.pop(i)
