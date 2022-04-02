extends Control


export(NodePath) onready var _name_label = get_node(_name_label) as Label
export(NodePath) onready var _color_rect = get_node(_color_rect) as ColorRect

var _type: RoomType
var groups: Array # of string


func setup(type):
	_type = type
	_name_label.text = _type.name
	_color_rect.color = _type.color


func _on_Location_gui_input(event):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.pressed:
		EventsSystem.emit_signal("show_location_info_request", _type)
