import os
import station_big as station
import random
from problem_generator import create_problem_file

problem_name = os.path.basename(__file__)[:-3]
filename = '../' + problem_name + '.pddl'
# icm virm sng slt
trains = {
    'train1': ('slt', []),
    'train2': ('sng', []),
    'train3': ('icm', []),
    'train4': ('virm', []),
    'train5': ('sng', []),
    'train6': ('slt', ['inspection']),
    'train7': ('sng', ['cleaning']),
    'train8': ('icm', []),
    'train9': ('virm', ['washing']),
    'train10': ('sng', []),
    'train11': ('slt', ['cleaning']),
    'train12': ('sng', []),
    'train13': ('icm', []),
    'train14': ('virm', []),
    'train15': ('sng', []),
    'train16': ('slt', ['washing']),
    'train17': ('sng', []),
    'train18': ('icm', []),
    'train19': ('virm', ['cleaning']),
    'train20': ('sng', []),
    'train21': ('slt', ['washing', 'inspection']),
    'train22': ('sng', []),
    'train23': ('icm', []),
    'train24': ('virm', []),
    'train25': ('sng', []),
}

arrival_order = list(trains.keys()).copy()
departure_order = list(trains.keys()).copy()

random.shuffle(arrival_order)
random.shuffle(departure_order)

tracks = station.tracks
next_to = station.next_to

create_problem_file(filename, problem_name, trains, arrival_order, departure_order, tracks, next_to)
''' Creating PDDL problem files
    - `filename` for creating the file
    - `problem_name` is the name to be given to the problem instance
    - `trains` is a dictionary, key = name, value = a 3-tuple of the form (train_type, train_length, needed_services)
    - `arrival_order` is a list of the order of the arriving trains (the train with index 0 arrives first)
    - `departure_order` is a list of the order of the departing trains (the train with index 0 departs last)
    - `tracks` is a dictionary, key = trackname, value = (length, services)`
    - `next_to` - a list of adjacent track pairs (where first track's last element is adjacent to the second track's first element)
'''
