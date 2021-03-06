extends Control

func update_percent(new_percent):
	$LoadTween.interpolate_property($LoadingBar, "value", $LoadingBar.value, new_percent, 0.6, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$LoadTween.start()
	
	yield($LoadTween, "tween_completed")
	
	if new_percent == $LoadingBar.max_value:
		$LoadScreenAnim.play("hide")
