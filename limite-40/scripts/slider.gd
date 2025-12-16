extends Path2D

var leftValue: int = 0
var rightValue: int = 0

# eh passado um valor de pontuacao e um array de strings, dos grupos de um no
# o tipo de groups tem que ser StringName, pq eh o retorno dos get_groups(), eh uma string otimizada parece
func aplyValue(value: int, groups: Array[StringName]) -> void:
	# se o array tiver o grupo Pedestre, quer dizer que o no que chamou a funcao eh do grupo de Pedestres
	if groups.has('Pedestre'):
		# portanto, o valor vai pro lado dos Pedestres
		var left: int = value
		if left != 0:
			leftValue += left
			$leftCounter.text = str(leftValue)

	# se o array na verdade tiver o grupo Carro, entao quer dizer que quem pediu pra ganhar ponto eh do grupo de Carros
	elif groups.has('Carro'):
		# se um carro que chamoou pra ganhar ponto, entao vai pro lado do slider la de carros
		var right: int = value
		if right != 0:
			rightValue += right
			$rightCounter.text = str(rightValue)

	var calc: int = (leftValue - rightValue) 
	
	if calc > 50:
		calc = 50
	if calc < -50:
		calc = -50
	
	$pointer/correntValue.text = str(calc)
	$pointer.progress_ratio = 0.5 - (float(calc) / 100)
