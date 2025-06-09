extends Control

# Işıkların açık/kapalı durumlarını takip eden dizi
var lights = [false, false, false]


func _ready():
	# Düğmeleri sinyallere bağla
	$ColorRect/MainLayout/ButtonContainer/Button1.pressed.connect(_on_button1_pressed)
	$ColorRect/MainLayout/ButtonContainer/Button2.pressed.connect(_on_button2_pressed)
	$ColorRect/MainLayout/ButtonContainer/Button3.pressed.connect(_on_button3_pressed)
	$ColorRect/MainLayout/WinLabel.add_theme_color_override("font_color", Color(0, 1, 0)) # yeşil
	$ColorRect/MainLayout/WinLabel.add_theme_font_size_override("font_size", 24)
	$ColorRect/MainLayout/WinLabel.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	_update_lights()

func _update_lights():
	# Işıkları güncelle (açık = sarı, kapalı = gri)
	var textures = [$ColorRect/MainLayout/LightContainer/Light1, $ColorRect/MainLayout/LightContainer/Light2, $ColorRect/MainLayout/LightContainer/Light3]
	for i in range(3):
		var color = Color(1, 1, 0.2) if lights[i] else Color(0.15, 0.15, 0.15)
		textures[i].modulate = color

func _toggle(indexes):
	for i in indexes:
		lights[i] = !lights[i]
	_update_lights()
	_check_win()

func _on_button1_pressed():
	_toggle([0])  # A düğmesi 1. ışığı değiştirir

func _on_button2_pressed():
	_toggle([1, 2])  # B düğmesi 2. ve 3. ışığı değiştirir

func _on_button3_pressed():
	_toggle([0, 2])  # C düğmesi 1. ve 3. ışığı değiştirir
	
func _check_win():
	if lights[0] and lights[1] and lights[2]:
		$ColorRect/MainLayout/WinLabel.text = "Tebrikler, tüm ışıklar açık!"
	else:
		$ColorRect/MainLayout/WinLabel.text = ""
