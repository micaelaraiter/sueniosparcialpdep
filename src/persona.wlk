/** First Wollok example */
class Persona {
	const edad
	const plataQuerida
	var property sueniosCumplidos = []
	var property sueniosPendientes = []
	var nivelDeFelicidad = 0
	const tipoDePersona
	const property hijosPropios 
	//Punto 1
	method cumplirSuenio(suenio) {
	   suenio.sePuedeRealizarElSuenio(self)
	   self.agregarSuenioRealizado(suenio)
	}
	
	method agregarSuenioRealizado(suenio){
		self.agregarALaListaDeCumplidos(suenio)
		self.quitarDeLaListaDePendientes(suenio)
		self.aumentarNivelDeFelicidad(suenio)
	}
	
	method aumentarNivelDeFelicidad(suenio){
		nivelDeFelicidad += suenio.nivelDeFelicidad()
	}
	
	method agregarALaListaDeCumplidos(suenio){
		sueniosCumplidos.add(suenio)
	}
	
	method quitarDeLaListaDePendientes(suenio){
		sueniosPendientes.remove(suenio)
	}
	
	///Punto 2
	method cumplirSuenioMultiple(listadoDeSuenio){
		listadoDeSuenio.forEach({unSuenio => unSuenio.sePuedeRealizarElSuenio(self)})
		listadoDeSuenio.forEach({unSuenio => unSuenio.agregarSuenioRealizado(self)})
	}
	
	//Punto 3 
	method cumplirSuenioMasPreciado(){
		tipoDePersona.cumplirSuenio(self)
	}
	
	//Punto4
	method esFeliz(){
		return nivelDeFelicidad > self.sumarFelicidonios()
	}
	
	method sumarFelicidonios(){
		return sueniosPendientes.sum({ x => x.nivelDeFelicidad()})
	}
	
	//punto 5
	
	method esAmbisiosa(){
		return self.sumarSuenios() > 3 && self.sumarFelicidonios() > 100
	}
	
	method sumarSuenios(){
		return sueniosCumplidos.size() + sueniosPendientes.size()
	}
}
