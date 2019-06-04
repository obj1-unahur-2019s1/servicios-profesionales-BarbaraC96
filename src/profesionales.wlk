
class Universidades {
	var property honorariosPorHora
	
	
	var property provincias
}

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var property universidad
	
	//method universidad() { return universidad }
	//method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{universidad.provincias()} }
	method honorariosPorHora() { return universidad.honorariosPorHora() }
	
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var provincias = #{}
	var honorarios = 0
	
	//method universidad() { return universidad }
	//method universidad(univ) { universidad = univ }
	
	method honorariosPorHora() { return honorarios }
	method provinciasDondePuedeTrabajar() { return  provincias }
	method provinciasDondePuedeTrabajar(pro) { provincias = pro  }
	
}