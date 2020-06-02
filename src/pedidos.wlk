class Pedidos {
	var property distancia           //expresada en kms
	var property tiempoMax           //exprsado en horas
	var property cantPasajeros       //cantidad de pasajeros a transportar
	var property coloresIncompatibles = #{}
	
	method agregarColorIncompatible(nuevoColor){
		coloresIncompatibles.add(nuevoColor)
	}
	method velocidadRequerida(){}
	method autoSatisfacePedido(auto){}
}
