import colores.*

class ChevroletCorsa {
	var property color

	method capacidad(){
		return 4
	}
	method velocidadMaxima(){
		return 150
	}
	method peso(){
		return 1300
	}
}
class RenaultKwid {
	var property tanqueAdicional
	
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
	var property capacidad
	var property velocidadMaxima
	var property color
	var property peso
}