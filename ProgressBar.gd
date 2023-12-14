extends ProgressBar
var time = 0
var TIME_PERIOD = 5


func update():
	value = Global.batteries*5

func _ready():
	update()

func _process(delta):
	update()
	reduce_battery(delta)
	
func reduce_battery(delta):
	time += delta
	if time > TIME_PERIOD:
		Global.batteries -= 1
		time = 0

