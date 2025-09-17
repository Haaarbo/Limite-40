extends Path2D

var nunPessoas: int = 0
var nunCarros: int = 0

func aplyValue(cars: int, people: int):
	if cars != 0:
		nunCarros += cars
		$nunCarros.text = str(nunCarros)
	
	elif people != 0:
		nunPessoas += people
		$nunPessoas.text = str(nunPessoas)
		
	var calc: int = (nunCarros - nunPessoas) 
	
	if calc > 50:
		calc = 50
	if calc < -50:
		calc = -50
	
	$PathFollow2D/rel.text = str(calc)
	$PathFollow2D.progress_ratio = 0.5 - (float(calc) / 100)

func _process(delta: float) -> void:

	if Input.is_action_pressed("Play"):
		aplyValue(0, 1)

	elif Input.is_action_pressed("Dissplay"):
		aplyValue(1,0)
