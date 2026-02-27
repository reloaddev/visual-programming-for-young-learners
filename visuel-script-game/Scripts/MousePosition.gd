extends Node


func GetMousePosition() -> Vector2:
	var mousePos = get_viewport().get_mouse_position()
	var test2 = remap_range(mousePos, Vector2.ZERO, get_viewport().get_visible_rect().size, Vector2.ZERO, Vector2(480, 270))
	var center = Vector2(480, 270)/2
	return center - test2

func remap_range(value, InputA, InputB, OutputA, OutputB):
	return(value - InputA) / (InputB - InputA) * (OutputB - OutputA) + OutputA
