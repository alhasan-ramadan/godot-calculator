extends Control

@onready var ce: Button = $background/numbers/ce

@onready var zero: Button = $background/numbers/zero
@onready var one: Button = $background/numbers/one
@onready var two: Button = $background/numbers/two
@onready var three: Button = $background/numbers/three
@onready var four: Button = $background/numbers/four
@onready var five: Button = $background/numbers/five
@onready var six: Button = $background/numbers/six
@onready var seven: Button = $background/numbers/seven
@onready var eight: Button = $background/numbers/eight
@onready var nine: Button = $background/numbers/nine

@onready var equal: Button = $background/operations/equal
@onready var addition: Button = $background/operations/addition
@onready var subtraction: Button = $background/operations/subtraction
@onready var multiplication: Button = $background/operations/multiplication
@onready var division: Button = $background/operations/division

@onready var display: Label = $background/display/display


var first_operand: float = 0
var second_operand: float = 0
var result: float = 0
var operator: String = ""

var first_operand_pressed: bool = false
var second_operand_pressed: bool = false
var operation_set: bool = false


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	pass


func _on_ce_pressed() -> void:
	first_operand = 0
	second_operand = 0
	result = 0
	operator = ""
	first_operand_pressed = false
	second_operand_pressed = false
	operation_set = false
	display.text = ""

func _on_zero_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 0
		display.text = "0"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 0
		display.text += "0"
		second_operand_pressed = true


func _on_one_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 1
		display.text = "1"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 1
		display.text += "1"
		second_operand_pressed = true

func _on_two_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 2
		display.text = "2"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 2
		display.text += "2"
		second_operand_pressed = true

func _on_three_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 3
		display.text = "3"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 3
		display.text += "3"
		second_operand_pressed = true


func _on_four_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 4
		display.text = "4"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 4
		display.text += "4"
		second_operand_pressed = true


func _on_five_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 5
		display.text = "5"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 5
		display.text += "5"
		second_operand_pressed = true


func _on_six_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 6
		display.text = "6"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 6
		display.text += "6"
		second_operand_pressed = true

func _on_seven_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 7
		display.text = "7"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 7
		display.text += "7"
		second_operand_pressed = true


func _on_eight_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 8
		display.text = "8"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 8
		display.text += "8"
		second_operand_pressed = true


func _on_nine_pressed() -> void:
	if first_operand_pressed == false:
		first_operand = 9
		display.text = "9"
		first_operand_pressed = true
	elif first_operand_pressed and operation_set == true:
		second_operand = 9
		display.text += "9"
		second_operand_pressed = true



func calculate(a: float, b: float, op: String) -> float:
	match  op:
		"+":
			second_operand_pressed = false
			return a + b
		"-":
			second_operand_pressed = false
			return a - b
		"*":
			second_operand_pressed = false
			return a * b
		"/":
			if b != 0:
				second_operand_pressed = false
				return a / b
			else:
				second_operand_pressed = false
				return 0.0
	return 0.0


func _on_addition_pressed() -> void:
	if first_operand_pressed == true and operation_set == false:
		print("operator set to addition")
		operator = "+"
		display.text += "+"
		operation_set = true


func _on_subtraction_pressed() -> void:
	if first_operand_pressed == true and operation_set == false:
		print("operator set to subtraction")
		operator = "-"
		display.text += "-"
		operation_set = true


func _on_multiplication_pressed() -> void:
	if first_operand_pressed == true and operation_set == false:
		print("operator set to multiplication")
		operator = "*"
		display.text += "*"
		operation_set = true


func _on_division_pressed() -> void:
	if first_operand_pressed == true and operation_set == false:
		print("operator set to division")
		operator = "/"
		display.text += "/"
		operation_set = true


func _on_equal_pressed() -> void:
	result = calculate(first_operand, second_operand, operator)
	first_operand = result
	display.text = str(result)
	operation_set = false
