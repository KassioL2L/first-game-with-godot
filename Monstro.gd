extends StaticBody2D

var flip = true
var posicao_inicial
var posicao_final
var velocidade = 0.3

func _ready():
	$Sprite.play("Walk")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 100

func _process(delta):
	if (posicao_inicial <= posicao_inicial and flip):
		$".".position.x += velocidade
		$Sprite.flip_h = false
		if($".".position.x >= posicao_final):
			flip = false
	if ($".".position.x >= posicao_inicial and !flip):
		$".".position.x -= velocidade
		$Sprite.flip_h = true
		if($".".position.x <= posicao_inicial):
			flip = true
func dano():
	get_node("AnimationPlayer").play("die")
	
func die():
	$".".queue_free()
