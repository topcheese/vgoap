module vgoap

// This test creates examples of the Goal, Action, and Agent structs and verifies that their
// attributes are set correctly. It also tests adding goals and actions to an Agent.

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