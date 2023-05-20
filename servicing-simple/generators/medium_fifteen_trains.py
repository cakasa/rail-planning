import os
import station_medium as station
from problem_generator import create_problem_file

problem_name = os.path.basename(__file__)[:-3]
filename = '../' + problem_name + '.pddl'
# icm virm sng slt
trains = {
    'train1': ('slt', []),
    'train2': ('sng', []),
    'train3': ('icm', ['cleaning']),
    'train4': ('virm', ['inspection']),
    'train5': ('sng', ['cleaning']),
    'train6': ('slt', []),
    'train7': ('sng', []),
    'train8': ('icm', ['inspection']),
    'train9': ('virm', []),
    'train10': ('sng', []),
    'train11': ('slt', ['cleaning']),
    'train12': ('sng', []),
    'train13': ('icm', []),
    'train14': ('virm', []),
    'train15': ('sng', []),
}
arrival_order = ['train1', 'train2', 'train3', 'train4', 'train5', 'train6', 'train7', 'train8', 'train9', 'train10', 'train11', 'train12', 'train13', 'train14', 'train15']
departure_order = ['train15', 'train10', 'train13', 'train7', 'train5', 'train1', 'train12', 'train3', 'train9', 'train6', 'train8', 'train11', 'train2', 'train14', 'train4']
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
