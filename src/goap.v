module main

struct Goal {
	name string
	priority int
}

struct Action {
	name string
	cost int
	preconditions []bool
	effects []bool
}

fn new_goal(name string, priority int) Goal {
	return Goal {
		name: name,
		priority: priority,
	}
	
}

fn new_action(name string, cost int, preconditions []bool, effects []bool) Action {
	return Action {
		name: name,
		cost: cost,
		preconditions: preconditions,
		effects: effects,
	}
	
}

fn (g Goal) str() string {
	return g.name
}

fn (a Action) str() string {
	return a.name
}

fn (g Goal) priority() int {
	return g.priority
}
fn (g Goal) equals(other Goal) bool {
	return g.name == other.name
}

fn (a Action) equals(other Action) bool {
	return a.name == other.name
}

//// Agent code
struct Agent {
	mut:
	goals []Goal
	actions []Action
}
fn new_agent() Agent {
	return Agent {
		goals: [],
		actions: [],
	}
}
fn (mut a Agent) add_goal(g Goal) {
	a.goals << g
}

fn (mut a Agent) add_action(ac Action) {
	a.actions << ac
}

fn (a Agent) run() {
	for goal in a.goals {
		println(goal.str())
	}
	for action in a.actions {
		println(action.str())
	}
}

fn main() {
	mut a := new_agent()
	a.add_goal(new_goal("Goal A", 1))
	a.add_goal(new_goal("Goal B", 2))
	a.add_goal(new_goal("Goal C", 3))
	a.add_action(new_action("Action A", 1, [], []))
	a.add_action(new_action("Action B", 2, [], []))
	a.add_action(new_action("Action C", 3, [], []))

	a.run()
}
