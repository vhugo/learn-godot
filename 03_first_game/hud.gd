extends CanvasLayer

signal start_game

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageLabel.start()

func show_game_over():
	show_message("Game Over")
	yield($MessageLabel, "timeout")
	$StartButton.show()
	$MessageLabel.text = "Dodge the\nCreeps!"
	$MessageLabel.show()

func update_score(score):
	$ScoreLabel.text = str(score)


