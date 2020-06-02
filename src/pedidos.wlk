class Pedidos {
	var property distancia           //expresada en kms
	var property tiempoMax           //exprsado en horas
	var property cantPasajeros       //cantidad de pasajeros a transportar
	var property coloresIncompatibles = #{}
	
	method agregarColorIncompatible(nuevoColor){
		coloresIncompatibles.add(nuevoColor)
	}
	method velocidadRequerida(){return distancia / tiempoMax}
	method autoSatisfacePedido(auto){
		return (auto.velocidadMaxima()-self.velocidadRequerida()) >= 10
			and auto.capacidad()>=cantPasajeros
				and not coloresIncompatibles.any({
					col=>col == auto.color()
				})
	}
	method acelerar(){tiempoMax -= 1}
	method relajar(){tiempoMax += 1}
}
