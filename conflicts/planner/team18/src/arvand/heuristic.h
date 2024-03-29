/*********************************************************************
 * Author: Malte Helmert (helmert@informatik.uni-freiburg.de)
 * (C) Copyright 2003-2004 Malte Helmert
 * Modified by: Matthias Westphal (westpham@informatik.uni-freiburg.de)
 * (C) Copyright 2008 Matthias Westphal
 *
 * This file is part of LAMA.
 *
 * LAMA is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 3
 * of the license, or (at your option) any later version.
 *
 * LAMA is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see <http://www.gnu.org/licenses/>.
 *
 *********************************************************************/

#ifndef HEURISTIC_H
#define HEURISTIC_H

#include <map>
#include <vector>
#include <string>

class Operator;
class State;


class Heuristic {

    enum {INVALID = -2};
    
    std::vector<const Operator *> preferred_operators;

    struct EvaluationInfo {
	EvaluationInfo() {heuristic = INVALID;}
	EvaluationInfo(int heur, const std::vector<const Operator *> &pref)
	    : heuristic(heur), preferred_operators(pref) {}
	int heuristic;
	std::vector<const Operator *> preferred_operators;
    };

    bool use_cache;
    std::map<State, EvaluationInfo> state_cache;
protected:
	int heuristic;
    virtual int compute_heuristic(const State &state) = 0;
    void set_preferred(const Operator *op);
public:
	enum {DEAD_END = -1};
    Heuristic(bool use_cache=false);
    virtual ~Heuristic();

    void evaluate(const State &state);
    bool is_dead_end();
    int get_heuristic();
    void get_preferred_operators(std::vector<const Operator *> &result);
    virtual void set_recompute_heuristic(const State &state){}
    virtual void set_recompute_heuristic(){}
    virtual bool dead_ends_are_reliable() {return true;}
    virtual std::string get_heuristic_name() = 0;
    
    /** Sets the heuristic if it has been set somewhere else. This is a super
        ugly hack, particularly since it completely ignores the preferred 
        operators. If the heuristic is set using this method, the preferred
        operarors are not to be be trusted. **/ 
    void set_heuristic(int new_h_value);
};

#endif
