import wollok.game.*
class Pared {
	var property position = game.at(1, 1)
	var property image = "muroFuerte.png"
	var property resistencia
	
	method muroFuerte(){return "muroFuerte.png"}
	method muroDevil(){return "muroDevil.png"}
	
	method choque(){
		resistencia -= 1
	}
}
