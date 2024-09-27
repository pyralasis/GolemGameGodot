@tool
class_name	ModularInventory
extends Node2D

@export var sizeX: int
@export var sizeY: int
@export var spaceBetweenSlots: int
@export var slotTexture: Texture2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#for children in self.get_children():
		#self.remove_child(children)
		#children.queue_free()
		
	var currentSlot = 0
	for y in range(sizeY):
		for x in range(sizeX):
			var child = DraggableItemSlot.new()
			child.set_name("Slot " + str(currentSlot))
			child.set_position(Vector2(x*32 + x*spaceBetweenSlots, y*32 + y*spaceBetweenSlots))
			child.texture = slotTexture
			add_child(child)
			child.set_owner(self) # this adds the child to the editor node tree 
			
			currentSlot += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
