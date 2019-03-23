extends TextureButton

var icon_pressed_display = false
var icon_node
export var file_path = ""

func _ready():
	self.connect("draw", self, "update_icon_position")
	self.connect("pressed", audio_player, "play_sound_file", ["res://sounds/interface/click.wav"])
	self.icon_node = self.find_node("icon")
	
	if (self.file_path.empty() == false):
		self.set_graphics(self.file_path)

func update_icon_position():
	if (!icon_node):
		return
	
	if (self.icon_pressed_display == false and self.get_draw_mode() == DRAW_PRESSED):
		self.icon_pressed_display = true
		self.icon_node.rect_position += Vector2(1, 1)
	elif (self.icon_pressed_display == true and self.get_draw_mode() != DRAW_PRESSED):
		self.icon_pressed_display = false
		self.icon_node.rect_position -= Vector2(1, 1)

func set_graphics(file_path):
	self.icon_node.texture = load(file_path)
	
func set_player_color(player_color):
	self.icon_node.set_player_color(player_color)

func set_tooltip(tooltip):
	self.hint_tooltip = tooltip
	self.icon_node.hint_tooltip = tooltip
	
func set_icon_transparency(transparency):
	self.icon_node.modulate.a = transparency
