class Suenio{
	method sePuedeRealizarElSuenio(persona)
}

class RecibirseDeLaCarrera inherits Suenio {
	const property nivelDeFelicidad
	   override method  sePuedeRealizarElSuenio(persona){
	   	  self.validarQueNoSeHayaRecibidoDeLaCarrera(persona)
	   	  self.validarQueQuiereLaCarrera(persona)
	   }
	
		method validarQueQuiereLaCarrera(persona){
			if(!persona.sueniosPendientes().contains(self)){
				throw new Exception(message = "No queria la carrera")
			}
		}
		method validarQueNoSeHayaRecibidoDeLaCarrera(persona){
			if(persona.sueniosCumplidos().contains(self)){
				throw new Exception(message = "No queria la carrera")
			}
		}
		
		
}


class TrabajoSoniado inherits Suenio{
	const sueldo
	const property nivelDeFelicidad
	  override method  sePuedeRealizarElSuenio(persona){
	   	  self.validarQueGanaMasDeLoQueQuiere(persona)
	   }
	   
	   method validarQueGanaMasDeLoQueQuiere(persona){
	   	if(persona.plataQuerida() > sueldo){
				throw new Exception(message = "Gana menos de lo que quiere")
			}
	   }
}


class Adoptar inherits Suenio{
	const property nivelDeFelicidad
	  override method  sePuedeRealizarElSuenio(persona){
	   	  self.validarQueNoTengaUnHijo(persona)
	   }
	   
	   method validarQueNoTengaUnHijo(persona){
	   	if(persona.hijosPropios() > 1){
				throw new Exception(message = "Tiene un hijo, no puede adoptar")
			}
	   }
}

class Viajar inherits Suenio{
	  const property nivelDeFelicidad
	  override method  sePuedeRealizarElSuenio(persona){
	   }
}