import solicitantes.* 

class EmpresaDeServicios {
	
	var property profesionalesDeLaEmpresa = #{}
	var property honorarioDeReferencia 
	
	method contratarProfesionales(profesional){ profesionalesDeLaEmpresa.add(profesional) }
	method profesionalesCaros() = profesionalesDeLaEmpresa.filter({profesional => profesional.honorariosPorHora() > honorarioDeReferencia })
	method universidadesFormadoras() = profesionalesDeLaEmpresa.map{profesional=> profesional.universidad()}.asSet()
	method profesionalMasBarato() = profesionalesDeLaEmpresa.min{profesional => profesional.honorariosPorHora()}
	method provinciaCubierta(provincia) = profesionalesDeLaEmpresa.any{profesional => profesional.provinciaDondePuedeTrabajar()}
	method profesionalesDeUniversidad(universidad) = profesionalesDeLaEmpresa.count{profesional => profesional.universidad() == universidad}
	method satisfacer(solicitante) = solicitante.puedeSerAtendido()
