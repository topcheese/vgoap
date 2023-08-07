# Vlang GOAP Library

This is a simple implementation of a Goal-Oriented Action Planning (GOAP) library in the V programming language. This library provides basic data structures and algorithms for representing and reasoning about goals and actions in a planning problem.

## Author and Maintainer

This library was created and   maintained by Topcheese.

## Usage

To use this library, simply import the `goap` module in your V code:

```v
import goap


// You can then create instances of the Goal, Action, and Agent structs and use their associated methods to represent and reason about your planning problem. For example:

mut a Agent := new_agent()
a.add_goal(new_goal("Goal A", 10))
a.add_goal(new_goal("Goal B", 15))
a.add_goal(new_goal("Goal C", 20))
a.add_action(new_action("Action A", 10))
a.add_action(new_action("Action B", 12))
a.add_action(new_action("Action C", 20))
a.run()
```

License
This library is released under the MIT license. See the LICENSE file for more information.
