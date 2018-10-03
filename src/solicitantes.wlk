import empresa.*

class Persona {
	var property provinciaDondeVive
	method puedeSerAtendido(empresa) = empresa.provinciaCubierta(provinciaDondeVive)
}

class Institucion{
	var property universidades = #{}
	method puedeSerAtendido(empresa) = empresa.universidadesFormadoras().intersection(self.universidades()).count() > 0
}
