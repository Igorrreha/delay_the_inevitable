extends Node


export(NodePath) onready var _rooms_container = get_node(_rooms_container) as Control
export var _room_tscn: PackedScene = _room_tscn


func _init():
	EventsSystem.connect("generate_map_request", self, "_generate")


func _generate(settings: MapGenerationSettings):
	for room_settings in settings.required_rooms:
		room_settings = room_settings as MapGenerationRoomSettings
		room_settings.type
		
		
#	for i in range(rooms_count):
#		var new_room = _room_tscn.instance()
#		_rooms_container.call_deferred("add_child", new_room)
