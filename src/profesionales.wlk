import universidades.*

class ProfesionalAsociado {
var property universidad
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrar(importe){ asociacionDeProfesionalesDelLitoral.recibirDinero(importe)}
}

class ProfesionalVinculado {
	var property universidad
	method provinciasDondePuedeTrabajar() = #{universidad.provincia()}
	method honorariosPorHora() = universidad.honorariosRecomendados()
	method cobrar(importe){ universidad.recibirDonacion(importe/2)}
}

class ProfesionalLibre {
	var property totalRecaudado= 0
	var property universidad
	
	// TODO OJO No es necesario inicializar en #{}
	var property provinciasDondePuedeTrabajar = #{}
	var property honorariosPorHora
	method cobrar(importe){totalRecaudado += importe}
	method pasarDinero(profesional, importe){
		profesional.cobrar(importe)
		totalRecaudado-= importe
	}
}

object asociacionDeProfesionalesDelLitoral{
	var property totalRecaudado = 0
	method recibirDinero(importe){ totalRecaudado += importe}
}
