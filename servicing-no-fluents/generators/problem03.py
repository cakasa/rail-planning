import os
from problem_generator import create_problem_file

problem_name = os.path.basename(__file__)[:-3]
filename = '../' + problem_name + '.pddl'
trains = {
    'train1': ('slt', 4, ['cleaning']),
    'train2': ('sng', 2, ['inspection']),
    'train3': ('slt', 5, []),
    'train4': ('slt', 3, []),
    'train5': ('sng', 3, ['cleaning'])
}
arrival_order = ['train1', 'train2', 'train3', 'train4', 'train5']
departure_order = ['train2', 'train5', 'train1', 'train3', 'train4']
tracks = {
   'track0': (3, []),
   'track1': (2, []),
   'track2': (2, []),
   'track3': (2, []),
   'track4': (10, []),
   'track5': (6, []),
   'track6': (6, []),
   'track7': (6, []),
   'track8': (6, []),
   'track10': (5, ['inspection']),
   'track11': (7, ['cleaning']),
   'track12': (4, []),
   'track13': (4, []),
}
next_to = [
    ('track0', 'track1'), 
    ('track0', 'track5'),
    ('track1', 'track6'),
    ('track1', 'track2'),
    ('track2', 'track3'),
    ('track2', 'track7'),
    ('track3', 'track4'),
    ('track3', 'track8'),
    ('track5', 'track10'),
    ('track6', 'track10'),
    ('track7', 'track11'),
    ('track8', 'track11'),
    ('track10', 'track12'),
    ('track11', 'track13')
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
