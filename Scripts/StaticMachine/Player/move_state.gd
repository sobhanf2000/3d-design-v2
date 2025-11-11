extends State

@export var idle_state :State
@export var jump_state :State

func enter():
	pass


func process_physics(delta: float):
	parent.velocity.y = -Gravity
	var movement = movecomponent.get_movement_direction(parent)
	parent.velocity = movement * move_speed
	if movement == Vector3.ZERO:
		return idle_state
	parent.move_and_slide() 
	
