import os
from problem_generator import create_problem_file

problem_name = os.path.basename(__file__)[:-3]
filename = '../' + problem_name + '.pddl'
trains = {
    'train1': ('slt', ['cleaning']),
}
arrival_order = ['train1']
departure_order = ['train1']
tracks = {
   'track0': (1, []),  # this has to be here, as t0 is always connected with v1
   'track1': (3, []),
   'track2': (3, []),
   'track3': (3, []),
   'track4': (3, []),
   'track5': (3, []),
   'track6': (10, []),
   'track7': (4, []),
   'track8': (4, ['inspection']),
   'track9': (2, []),
   'track10': (8, []),
   'track11': (18, []),
   'track12': (14, []),
   'track13': (14, []),
   'track14': (14, []),
   'track15': (3, []),
   'track16': (7, []),
   'track17': (2, []),
   'track18': (8, []),
   'track19': (8, []),
   'track20': (6, []),
   'track21': (3, []),
   'track22': (2, []),
   'track23': (2, []),
   'track24': (3, []),
   'track25': (3, []),
   'track26': (2, []),
   'track27': (10, []),
   'track28': (2, []),
   'track29': (6, ['washing']),
   'track30': (10, ['cleaning']),
   'track31': (10, ['cleaning']),
   'track32': (4, []),
   'track33': (3, []),
   'track34': (3, []),
   'track35': (4, []),
   'track36': (4, []),
   'track37': (3, []),
}
next_to = [
    ('track0', 'track1'),
    ('track0', 'track10'),
    ('track1', 'track11'),
    ('track1', 'track2'),
    ('track2', 'track12'),
    ('track2', 'track3'),
    ('track3', 'track4'),
    ('track3', 'track13'),
    ('track4', 'track5'),
    ('track4', 'track14'),
    ('track5', 'track15'),
    ('track5', 'track6'),
    ('track6', 'track7'),
    ('track6', 'track20'),
    ('track7', 'track8'),
    ('track8', 'track9'),
    ('track15', 'track17'),
    ('track15', 'track16'),
    ('track17', 'track18'),
    ('track17', 'track19'),
    ('track16', 'track36'),
    ('track16', 'track37'),
    ('track19', 'track36'),
    ('track19', 'track37'),
    ('track18', 'track34'),
    ('track18', 'track35'),
    ('track20', 'track35'),
    ('track20', 'track34'),
    ('track34', 'track30'),
    ('track30', 'track28'),
    ('track34', 'track31'),
    ('track31', 'track28'),
    ('track36', 'track30'),
    ('track36', 'track31'),
    ('track28', 'track29'),
    ('track11', 'track23'),
    ('track11', 'track33'),
    ('track22', 'track33'),
    ('track22', 'track23'),
    ('track12', 'track21'),
    ('track21', 'track22'),
    ('track13', 'track21'),
    ('track14', 'track22'),
    ('track23', 'track24'),
    ('track33', 'track24'),
    ('track32', 'track33'),
    ('track37', 'track32'),
    ('track32', 'track26'),
    ('track25', 'track27'),
    ('track26', 'track27'),
    ('track27', 'track29'),
    ('track35', 'track32')
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
