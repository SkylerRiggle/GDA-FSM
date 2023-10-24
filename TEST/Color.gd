extends State

@export var _color: Color
@export var _sprite: CanvasItem
@export var _next: State

var _num = 0.0

func enter():
	_sprite.modulate = _color

func update(delta: float):
	_num += delta

func check_transition():
	if _num > 2:
		_num = 0
		return _next
	return null
