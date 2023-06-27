import os
import station_medium as station
import problem_generator

problem_name = os.path.basename(__file__)[:-3]
filename = '../' + problem_name + '.pddl'

number_of_trains = 20

services = station.services
needs_service_ratio = (1 / 3) / len(services)
trains, arrival_order, departure_order = problem_generator.generate_trains(number_of_trains, services, needs_service_ratio)
tracks = station.tracks
next_to = station.next_to

problem_generator.create_problem_file(filename, problem_name, trains, arrival_order, departure_order, tracks, next_to)