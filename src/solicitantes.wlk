import profesionales.*
import empresa.*

class Persona {
	var property provincias
	
	method puedeSerAtendida(prof) { return prof.provinciasDondePuedeTrabajar().contains(provincias) }
	method olorACulo()
	
}

class Instituciones {
	
	
}