import profesionales.*

class Empresa {
	var property profesionalesContratados = []
	var property honorarioDeReferencia = 0
	
	method estudioEnUniversidadDeterminada(universidad) { return profesionalesContratados.count
		({p => p.universidad() == universidad})
	}
	
	method universidadesFormadoras() { //map. asSet
		var universidadesFormadoras = #{}
		profesionalesContratados.forEach({p =>  universidadesFormadoras.add(p.universidad())})
		return universidadesFormadoras
	}
	
	method profesionalMasCaro() { return profesionalesContratados.filter
		({p => p.honorariosPorHora() > honorarioDeReferencia})
	}	
	method profesionalMasBarato() { return profesionalesContratados.min({p => p.honorariosPorHora()})}
	
	method genteAcotada() { return profesionalesContratados.all({p => p.provinciasDondePuedeTrabajar().size() <= 3})}
	
}
