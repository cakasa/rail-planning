import os
from problem_generator import create_problem_file

problem_name = os.path.basename(__file__)[:-3]
filename = '../' + problem_name + '.pddl'
trains = {
    'train1': ('slt', 3, ['cleaning']),
    'train2': ('sng', 2, ['inspection']),
    'train3': ('sng', 1, []),
    'train4': ('slt', 2, []),
    # 'train5': ('sng', 3, []),
}
arrival_order = ['train1', 'train2', 'train3', 'train4']
departure_order = ['train2', 'train1', 'train3', 'train4']
tracks = {
   'track0': (4, []),
   'track1': (4, ['cleaning']),
   'track2': (1, []),
   'track3': (4, ['inspection']),
   'track4': (1, []),
   'track5': (4, []),
   'track6': (4, []),
   'track7': (4, []),
   'track8': (4, []),
   'track9': (4, []),
   'track10': (4, []),
}
next_to = [
    ('track0', 'track1'), 
    ('track0', 'track2'),
    ('track2', 'track3'),
    ('track2', 'track4'),
    ('track4', 'track5'),
    ('track4', 'track6'),
    ('track4', 'track7'),
    ('track4', 'track8'),
    ('track4', 'track9'),
    ('track4', 'track10'),
]

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