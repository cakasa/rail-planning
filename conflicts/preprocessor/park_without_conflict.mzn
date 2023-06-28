include "globals.mzn";

int: n_trains;
int: n_tracks;
array[1..n_tracks] of set of int: tracks;
array[1..n_trains] of int: arrival_order;
array[1..n_trains] of int: departure_order;

array[1..n_trains] of var 1..n_trains: train_on_track;

constraint alldifferent(train_on_track);
constraint forall(i in 1..n_tracks)(forall (y in 1..(card(tracks[i]) - 1))(arrival_order[train_on_track[tracks[i][y]]] < arrival_order[train_on_track[tracks[i][y + 1]]]));
constraint forall(i in 1..n_tracks)(forall (y in 1..(card(tracks[i]) - 1))(departure_order[train_on_track[tracks[i][y]]] > departure_order[train_on_track[tracks[i][y + 1]]]));

solve satisfy;

output ["\(train_on_track)\n"];
