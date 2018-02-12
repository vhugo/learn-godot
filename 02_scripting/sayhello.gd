extends Panel

func _on_button_pressed():
	get_node("Label").text = "HELLO!"
	
func _ready():
	get_node("Button").connect("pressed", self, "_on_button_pressed")

func _notification(what):
	match what:
	    NOTIFICATION_READY:
	        print("This is the same as overriding _ready()...")
	    NOTIFICATION_PROCESS:
	        print("This is the same as overriding _process()...")