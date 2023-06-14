import os
from problem_generator import create_problem_file

problem_name = os.path.basename(__file__)[:-3]
filename = '../' + problem_name + '.pddl'
trains = {
    'train1': ('slt', 2, ['cleaning']),
    'train2': ('sng', 2, ['cleaning']),
}
arrival_order = ['train1', 'train2']
departure_order = ['train2', 'train1']
tracks = {
   'track0': (1, []),
   'track1': (2, ['cleaning']),
   'track2': (2, []) # this has to be here, as t0 is always connected with v1
}
next_to = [('track0', 'track1'), ('track1', 'track2')]

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