class_name State
extends Node

# Called on state enter
func enter() -> void:
	pass

# Called on state exit
func exit() -> void:
	pass

# Run this state's actions
func update(_delta: float) -> void:
	pass

# Run this state's physics actions
func physics_update(_delta: float) -> void:
	pass

# Returns the next state to transition to
# Otherwise, returns null if no transition should be made
func check_transition() -> State:
	return null
