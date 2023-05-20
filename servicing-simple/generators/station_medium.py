tracks = {
   'track0': (2, []),
   'track1': (3, []),
   'track2': (1, []),
   'track3': (1, []),
   'track4': (2, []),
   'track5': (2, ['cleaning']),
   'track6': (2, []),
   'track7': (3, []),
   'track8': (1, []),
   'track9': (2, []),
   'track10': (2, ['cleaning']),
   'track11': (1, []),
   'track12': (3, ['inspection']),
}

next_to = [
    ('track0', 'track1'),
    ('track0', 'track2'),
    ('track2', 'track11'),
    ('track2', 'track3'),
    ('track3', 'track4'),
    ('track3', 'track6'),
    ('track4', 'track5'),
    ('track6', 'track7'),
    ('track6', 'track8'),
    ('track8', 'track9'),
    ('track8', 'track10'),
    ('track11', 'track12'),
]

services = ['cleaning', 'inspection']