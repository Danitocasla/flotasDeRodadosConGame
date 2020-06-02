object trafic {
	var interior
	var motor
	
	method setInterior(tipo){
		interior = tipo
	}
	method setMotor(tipo){
		motor = tipo
	}
	method capacidad(){return interior.capacidad()}
	method velocidadMaxima(){return motor.velocidadMaxima()}
	method color(){return blanco}
	method peso(){
		return interior.peso() + motor.peso()
	}
	
}

object comodo{
	method capacidad(){return 5}
	method peso(){return 700}
}
object popular{
	method capacidad(){return 12}
	method peso(){return 1000}
}
object pulenta{
	method velocidadMaxima(){return 130}
	method peso(){return 800}
}
object bataton{
	method velocidadMaxima(){return 80}
	method peso(){return 500}
}
object blanco{}