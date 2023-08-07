module vgoap

// Goal struct represents a goal in the planning problem
// Contains a name string and priority int
struct Goal {
	name string
	priority int
}

// Action struct represents an action that can be taken
// Contains name, cost, preconditions, and effects
struct Action {
	name string
	cost int
	preconditions []bool
	effects []bool
}

// new_goal creates a new Goal instance
// name: name of the goal
// priority: priority value for the goal
fn new_goal(name string, priority int) Goal {
	return Goal {
		name: name,
		priority: priority,
	}
	
}

// new_action creates a new Action instance
// name: name of the action
// cost: cost value for the action
// preconditions: list of preconditions for the action
// effects: list of effects of the action
fn new_action(name string, cost int, preconditions []bool, effects []bool) Action {
	return Action {
		name: name,
		cost: cost,
		preconditions: preconditions,
		effects: effects,
	}
	
}

// Goal.str() returns the name of the goal
fn (g Goal) str() string {
	return g.name
}

// Action.str() returns the name of the action
fn (a Action) str() string {
	return a.name
}

// Goal.priority() returns the priority value
fn (g Goal) priority() int {
	return g.priority
}

// Goal.equals() checks if two goals are equal by name
fn (g Goal) equals(other Goal) bool {
	return g.name == other.name
}

// Action.equals() checks if two actions are equal by name
fn (a Action) equals(other Action) bool {
	return a.name == other.name
}

////////////// Agent code ////////////////

// Agent struct represents an agent that can plan
// goals: list of goals the agent has
// actions: list of possible actions
struct Agent {
	mut:
	goals []Goal
	actions []Action
}

// new_agent() creates a new Agent instance
fn new_agent() Agent {
	return Agent {
		goals: [],
		actions: [],
	}
}

// Agent.add_goal() adds a new goal
fn (mut a Agent) add_goal(g Goal) {
	a.goals << g
}

// Agent.add_action() adds a new possible action
fn (mut a Agent) add_action(ac Action) {
	a.actions << ac
}

// Agent.run() prints the agent's goals and actions
fn (a Agent) run() {
	for goal in a.goals {
		println(goal.str())
	}
	for action in a.actions {
		println(action.str())
	}
}

// demo() shows sample usage of the GOAP structures
fn demo() {
	mut a := new_agent()
	a.add_goal(new_goal("Goal A", 1))
	a.add_goal(new_goal("Goal B", 2))
	a.add_goal(new_goal("Goal C", 3))
	a.add_action(new_action("Action A", 1, [], []))
	a.add_action(new_action("Action B", 2, [], []))
	a.add_action(new_action("Action C", 3, [], []))

	a.run()
}
