extends Path2D

var leftValue: int = 0
var rightValue: int = 0

func aplyValue(left: int, right: int):
	if left != 0:
		leftValue += left
		$leftCounter.text = str(leftValue)
	
	elif right != 0:
		rightValue += right
		$rightCounter.text = str(rightValue)
		
	var calc: int = (leftValue - rightValue) 
	
	if calc > 50:
		calc = 50
	if calc < -50:
		calc = -50
	
	$pointer/correntValue.text = str(calc)
	$pointer.progress_ratio = 0.5 - (float(calc) / 100)
		
