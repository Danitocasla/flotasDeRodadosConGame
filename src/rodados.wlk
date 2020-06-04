import colores.*
import wollok.game.*

class ChevroletCorsa {
	var property color
	var property position = game.at(0, 0)
	var property image = rojo.image()
	var property posiciones = []

	method capacidad(){return 4}
	method velocidadMaxima(){return 150}
	method peso(){return 1300}
	
	method moveUp(){
		self.position(self.position().up(1))
		posiciones.add(self.position())
	}
	method moveDown(){
		self.position(self.position().down(1))
		posiciones.add(self.position())
	}
	method moveLeft(){
		self.position(self.position().left(1))
		posiciones.add(self.position())
	}
	method moveRight(){
		self.position(self.position().right(1))
		posiciones.add(self.position())
	}
	
	method pasoPor(posicion){
		posiciones.any({pos=>pos==posicion})
	}
	method pasoPorFila(numero){}
	method recorrioFilas(lista_de_numeros){}
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