module vgoap
// test_goal tests creating a new Goal instance
//
// It creates a new Goal with name 'Test Goal' and priority 10
// Then asserts that the name and priority fields are set correctly

// test_action tests creating a new Action instance  
//
// It creates a new Action with name 'Test Action', cost 5, and empty preconditions/effects
// Then asserts that the name and cost fields are set correctly

// test_agent tests creating a new Agent and adding Goals and Actions
//
// It creates a new Agent instance
// Adds 2 Goals with priorities 1 and 2
// Adds 1 Action with cost 1
// Asserts the length of the goals and actions slices
// Asserts the priority fields of the 2 goals
// Asserts the cost field of the 1 action


fn test_goal() {
    mut goal := new_goal('Test Goal', 10)
    assert goal.name == 'Test Goal'
    assert goal.priority == 10
}

fn test_action() {
    mut action := new_action('Test Action', 5, [], [])
    assert action.name == 'Test Action' 
    assert action.cost == 5
}

fn test_agent() {
    mut agent := new_agent()
    agent.add_goal(new_goal('Goal 1', 1))
    agent.add_goal(new_goal('Goal 2', 2))
    agent.add_action(new_action('Action 1', 1, [], []))
    assert agent.goals.len == 2
    assert agent.actions.len == 1
    assert agent.goals[0].priority == 1 
    assert agent.goals[1].priority == 2
    assert agent.actions[0].cost == 1
}