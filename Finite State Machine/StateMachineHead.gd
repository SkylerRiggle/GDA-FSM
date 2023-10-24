class_name StateMachineHead
extends Node

@export var _initial_state: State
var _current_state: State

func _ready():
	# Enter the initial state
	_current_state = _initial_state
	_current_state.enter()

func _process(delta: float):
	# Handle potential state transitions
	handle_transitions(
		_current_state.check_transition()
	)
	
	# Update the current state
	_current_state.update(delta)

func _physics_process(delta: float):
	# Update the current state's physics
	# NOTE: Separate from main loop so that
	# the state machine is more reactive to transitions
	_current_state.physics_update(delta)

func handle_transitions(next_state: State):
	# No transition case (null or irrelevant node)
	if next_state == null or not has_node(next_state.get_path()):
		return
	
	# Exit the old state and enter the new state
	_current_state.exit()
	_current_state = next_state
	_current_state.enter()
