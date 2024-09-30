class_name DraggableItemSlot
extends TextureRect

var isHovered: bool


func _can_drop_data(_at_position: Vector2, data: Variant) -> bool:
	if data != null and data.currentSlot != self:
		isHovered = true
		return true
	return false
	
	
func _drop_data(_at_position: Vector2, data: Variant) -> void:
	data.currentSlot = self
	data.reparent(self, false)
	isHovered = false
	
	
func _on_mouse_exited():
	if isHovered:
		isHovered = false
		print_debug(self.name + "A")
	
		
func _on_mouse_entered():
	print_debug(self.name)
	
