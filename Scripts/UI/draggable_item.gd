class_name DraggableItem
extends TextureRect

var currentSlot
var defaultSlot

var item: Variant
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	defaultSlot = get_parent()
	currentSlot = get_parent()
	self.set_global_position(currentSlot.position)
	mouse_default_cursor_shape = CursorShape.CURSOR_POINTING_HAND


func _get_drag_data(_at_position: Vector2) -> Variant:
	Input.set_default_cursor_shape(Input.CursorShape.CURSOR_POINTING_HAND)
	set_drag_preview(duplicate())
	visible = false
	return self
	
	
func _notification(what: int) -> void:
	if what == NOTIFICATION_DRAG_END:
		Input.set_default_cursor_shape()
		visible = true
		currentSlot = get_parent()
		self.set_global_position(currentSlot.position)
