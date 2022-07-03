extends KinematicBody2D

onready var coyoteTimer = get_node("Timer")

const min_speed = 30
const max_speed = 160
const sprint_speed = 280 #240
const crouch_speed = 60
const jump_speed = -520
const up = Vector2(0, -1)
const gravity = 30

var speed
var motion = Vector2()
var is_jumping = false

func _ready():
	get_node("Label").text = "Anderon"

func _physics_process(delta):
	motion.y += gravity
	speed = max_speed
	
	sprint()
	crouch()
	move()
	
	if is_on_floor():
		is_jumping = false
		jump()
	motion = move_and_slide(motion, up)

func move():
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + min_speed, speed)
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x - min_speed, - speed)
	elif is_jumping == true:
		motion.x = lerp(motion.x, 0, 0.03)
	elif is_jumping == false:
		motion.x = lerp(motion.x, 0, 0.2)

func jump():	
	if Input.is_action_just_pressed("ui_x"):
		motion.y = jump_speed
		is_jumping = true

func sprint():
	if Input.is_action_pressed("ui_shift"):
		speed = sprint_speed

func crouch():
	if Input.is_action_pressed("ui_ctrl"):
		speed = crouch_speed
