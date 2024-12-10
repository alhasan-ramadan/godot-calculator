extends Control

@onready var display: Label = $background/display/display

var first_operand: String = ""
var second_operand: String = ""
var result: float = 0
var operator: String = ""

var operation_set: bool = false


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	pass


func _on_ce_pressed() -> void:
	first_operand = ""
	second_operand = ""
	result = 0
	operator = ""
	operation_set = false
	display.text = "0"


func _on_double_zero_pressed() -> void:
	if operation_set:
		second_operand += "00"
	else:
		first_operand += "00"
	display.text += "00"


func _on_zero_pressed() -> void:
	if operation_set:
		second_operand += "0"
	else:
		first_operand += "0"
	display.text += "0"


func _on_one_pressed() -> void:
	if operation_set:
		second_operand += "1"
	else:
		first_operand += "1"
	display.text += "1"

func _on_two_pressed() -> void:
	if operation_set:
		second_operand += "2"
	else:
		first_operand += "2"
	display.text += "2"

func _on_three_pressed() -> void:
	if operation_set:
		second_operand += "3"
	else:
		first_operand += "3"
	display.text += "3"


func _on_four_pressed() -> void:
	if operation_set:
		second_operand += "4"
	else:
		first_operand += "4"
	display.text += "4"


func _on_five_pressed() -> void:
	if operation_set:
		second_operand += "5"
	else:
		first_operand += "5"
	display.text += "5"


func _on_six_pressed() -> void:
	if operation_set:
		second_operand += "6"
	else:
		first_operand += "6"
	display.text += "6"

func _on_seven_pressed() -> void:
	if operation_set:
		second_operand += "7"
	else:
		first_operand += "7"
	display.text += "7"


func _on_eight_pressed() -> void:
	if operation_set:
		second_operand += "8"
	else:
		first_operand += "8"
	display.text += "8"


func _on_nine_pressed() -> void:
	if operation_set:
		second_operand += "9"
	else:
		first_operand += "9"
	display.text += "9"



func calculate(a: float, b: float, op: String) -> float:
	match  op:
		"+":
			return a + b
		"-":
			return a - b
		"*":
			return a * b
		"/":
			if b != 0:
				return a / b
			else:
				return 0.0
	return 0.0


func _on_addition_pressed() -> void:
	if !operation_set:
		print("operator set to addition")
		operator = "+"
		display.text += "+"
		operation_set = true


func _on_subtraction_pressed() -> void:
	if !operation_set:
		print("operator set to subtraction")
		operator = "-"
		display.text += "-"
		operation_set = true

func _on_multiplication_pressed() -> void:
	if !operation_set:
		print("operator set to multiplication")
		operator = "*"
		display.text += "*"
		operation_set = true


func _on_division_pressed() -> void:
	if !operation_set:
		print("operator set to division")
		operator = "/"
		display.text += "/"
		operation_set = true


func _on_equal_pressed() -> void:
	var first = float(first_operand)
	print("first opperand is: ", first)
	var second = float(second_operand)
	print("second opperand is: ", second)
	result = calculate(first, second, operator)
	print("result is: ", result)
	first_operand = str(result)
	second_operand = ""
	display.text = str(result)
	operation_set = false


func _on_komma_pressed() -> void:
	if operation_set:
		second_operand += "."
	else:
		first_operand += "."
	display.text += "."
