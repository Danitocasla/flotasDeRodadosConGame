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
	method siguePared(visual){
		if(resistencia<=0){
			game.removeVisual(visual)
		}
		else if(resistencia.between(1, 2)){
			image = self.muroDevil()
		}
		else { image = self.muroFuerte()}
	}
}
