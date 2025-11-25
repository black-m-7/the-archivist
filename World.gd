extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
	
@onready var textInput  = $TextEdit;
@onready var textLabel = $RichTextLabel;
# Handle tab key press
func _input(event):
	if (event.is_action_pressed("ui_focus_next")):
		textLabel.visible = false
		textInput.editable = true
		textInput.grab_focus()
	
	if (event.is_action_pressed("ui_text_submit")):
		textInput.editable = false
		textInput.release_focus()
		


# TODO: 
# add default values (constants) for TextEdit position and size
# create a function to instantiate a TextEdit
# create a function to instatntiate a Shape (marker)
# on tab keypress: create new TextEdit to allow players to write an entry. if there is a marker near, Player should be able to edit the contents of the entry.
# on enter keypress: create new Shape on the area Player is in as marker when an entry was made. if there is an already existing marker, update the contents of the entry. the TextEdit should not be visible
