import rodados.*
import trafic.*
import colores.*

class Dependencia {
	
	var flotaDeRodados = []
	var property cantEmpleados
	
	method agregarAFlota(rodado){
		flotaDeRodados.add(rodado)
	}
	method quitarDeFlota(rodado){
		flotaDeRodados.remove(rodado)
	}
	method pesoTotalFlota(){
		return flotaDeRodados.sum({
			rod => rod.peso()
		})
	}
	method estaBienEquipada(){
		return flotaDeRodados.size()>=3 and 
			flotaDeRodados.all({
				rod => rod.velocidadMaxima()>=100
			})
	}
	method capacidadTotalEnColor(color){
		return flotaDeRodados.filter({
			rod => rod.color()==color
		}).sum({rod=>rod.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return flotaDeRodados.max({
			rod => rod.velocidadMaxima()
		}).color()
	}
	method capacidadTotal(){
		return flotaDeRodados.sum({rod => rod.capacidad()})
	}
	method capacidadFaltante(){
		return (cantEmpleados - self.capacidadTotal()).max(0)
	}
	method esGrande(){
		return cantEmpleados>=40 and flotaDeRodados.size()>=5
	}
}
