object realista{	
	 method cumplirSuenio(persona){
		const elSuenioMasImportante = persona.sueniosPendientes().max({x => x.nivelDeFelicidad()})
		persona.cumplirSuenio(elSuenioMasImportante)
	}
}


object alocados{
	
	 method cumplirSuenio(persona){
		const elSuenioRandom = persona.sueniosPendientes().anyOne()
		persona.cumplirSuenio(elSuenioRandom)
	}
}

object obsesivos{	
	 method cumplirSuenio(persona){
		const elSuenioPrimerSuenio = persona.sueniosPendientes().first()
		persona.cumplirSuenio(elSuenioPrimerSuenio)
	}
}