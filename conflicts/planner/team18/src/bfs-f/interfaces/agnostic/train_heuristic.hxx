#include <aptk/heuristic.hxx>
#include <strips_state.hxx>

namespace aptk {

namespace agnostic {

template <typename Search_Model>
class Train_Heuristic : public Heuristic<State> {
public:
    Train_Heuristic(const Search_Model& prob) : Heuristic<State>(prob), m_strips_model(prob.task()) {
        std::cout << "We are checking" << std::endl;

        m_num_trains = 0;

        for (int i = 0; i < m_strips_model.num_fluents(); ++i)
        {
            const std::vector<std::string> pred_args = m_strips_model.fluent_pred_args(i);

            std::string pred_name = m_strips_model.fluent_pred_names(i);
            if (pred_name == "HASBEENPARKED") {
                std::string train_name = pred_args[0];
                // std::cout << "Found a live one: " << train_name << std::endl;
                m_fluents_train_has_parked[train_name] = i;
                m_num_trains++;
            }

            if (pred_name == "PARKEDON") {
                m_fluents_parked_on[pred_args[0]][pred_args[1]] = i;
            }

            if (pred_name == "AT") {
                m_fluents_at[pred_args[0]][pred_args[1]] = i;
            }
        }
    }
    virtual ~Train_Heuristic() {
    }

    void set_problem_info(std::map<std::string, int>& train_departs, std::map<std::string, int>& track_depths) {
        m_train_departs = train_departs;
        m_track_depths = track_depths;

        std::vector<int> depths = { 0 };
        for (auto& track_depth : track_depths) 
        {
            if (track_depth.second > 0) {
                depths.push_back(track_depth.second);
            }
        }
        sort(depths.begin(), depths.end());

        for (auto& train_depart : train_departs) 
        {
            m_expected_depth[train_depart.first] = depths[train_depart.second];
            std::cout << "Expected depth train: " << train_depart.first << " = " << m_expected_depth[train_depart.first] << std::endl;
        }
    }

    // template <typename Search_Node>
    // virtual void eval(const Search_Node node, unsigned& h_val) {
    //     eval(*(node->state()), h_val)
    // }

    virtual void eval(const State& s, unsigned& h_val) {
        h_val = m_num_trains * 10;
        // std::cout << "before" << std::endl;
        // std::cout << s.fluent_set().bits().size() << std::endl;
        // std::cout << s.fluent_vec().size() << std::endl;
        // s.print(std::cout);

        // for(const auto& elem : m_train_departs)
        // {
        //     std::cout << elem.first << " " << elem.second << " " << std::endl;
        // }

        std::cout << "Trains parked: [";
        int trains_parked = 0;    
        for (auto const &fluent : m_fluents_train_has_parked)
        {
            // std::cout << fluent.second << std::endl;
            if (s.fluent_set().isset(fluent.second)) {
                trains_parked++;
                for (auto track_part : m_track_depths) {
                    if (s.fluent_set().isset(m_fluents_at[fluent.first][track_part.first])) {
                        std::cout << "(" << fluent.first << ":" << track_part.first << ")";

                        int depth_diff = abs(m_expected_depth[fluent.first] - track_part.second);
                        if (depth_diff == 0) {
                            h_val -= 5;
                        }
                        if (depth_diff == 1) {
                            h_val += 3;
                        }

                        // std::cout << fluent.first << " " << fluent.second << " " << std::endl;
                        // std::cout << track_part.first << " " << track_part.second << " " << std::endl;
                        // h_val -= track_part.second * m_train_departs[fluent.first];
                        // std::cout << "Track part depth: " << track_part.second << std::endl;
                        // std::cout << "Train departs : " << m_train_departs[fluent.first] << std::endl;
                        break;
                    }
                }
            }
        }
        std::cout << "]" << std::endl;
        if (trains_parked == m_num_trains) h_val = 0;

        // if (h_val == 40) {
        //     std::cout << "first train in place!" << std::endl;
        // }

        // std::cout << "after" << std::endl;
    }

protected:
	const STRIPS_Problem&                               m_strips_model;
    std::map<std::string, int>                          m_train_departs;
    std::map<std::string, int>                          m_track_depths;
    int                                                 m_num_trains;
    // std::vector<std::string>                            m_track_parts;
    std::map<std::string, int>                          m_fluents_train_has_parked;
    std::map<std::string, std::map<std::string, int>>   m_fluents_parked_on;        // trainunit, track
    std::map<std::string, std::map<std::string, int>>   m_fluents_at;               // trainunit, trackpart
    std::map<std::string, std::vector<std::string>>     m_track_domains;
    std::map<std::string, float>                        m_expected_depth;
};
}
}