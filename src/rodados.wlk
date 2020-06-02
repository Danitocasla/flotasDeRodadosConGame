import trafic.blanco

class ChevroletCorsa {
	var color

	method capacidad(){
		return 4
	}
	method velocidadMaxima(){
		return 150
	}
	method color(){
		return color
	}
	method setColor(colorStr){
		color = colorStr
	}
	method peso(){
		return 1300
	}
}
class RenaultKwid {
	var tanqueAdicional
	
	method setTanqueAdicional(condicion){
		tanqueAdicional = condicion
	}
	method capacidad(){
		return if(tanqueAdicional){3} else {4}
	}
	method velocidadMaxima(){
		return if(tanqueAdicional){120} else{110}
	}
	method color(){return azul}
	method peso(){
		return if(tanqueAdicional){1350} else{1200}
	}
}
class AutosEspeciales {
	var capacidad
	var velocidadMaxima
	var color
	var peso
	method capacidad(){return capacidad}
	method velocidadMaxima(){return velocidadMaxima}
	method color(){return color}
	method peso(){return peso}
	method setCapacidad(nuevaCapacidad){
		capacidad = nuevaCapacidad
	}
	method setVelocidad(nuevaVelocidad){
		velocidadMaxima = nuevaVelocidad
	}
	method setColor(nuevoColor){
		color = nuevoColor
	}
	method setPeso(nuevoPeso){
		peso = nuevoPeso
	}
}
object rojo{}
object azul{}
object beige{}
object verde{}
