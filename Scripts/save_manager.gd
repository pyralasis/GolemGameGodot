extends Node

var test: int = 5
var test2:= DraggableItem.new()
var data = {
	"inventory":{
		"slot_one":{
			"material_type": 1,
			"quantity": 10
		}
	}
}
# Called when the node enters the scene tree for the first time.
func _ready():
	read_save_data()
	write_save_data()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func read_save_data():
	pass

func write_save_data():
	var a = var_to_bytes(test2)
	print_debug(a)
	
