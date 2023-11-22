object lupuloLocal {
	method precio(_) = 800
	
	method amargor() = 1.6
}

object lupuloImportado {
	method precio(_) = 1000
	
	method amargor() = 2.4
}

object lupuloKryptoniano {
	method precio(graduacionAlcoholica) = 500 + graduacionAlcoholica * 2 
}

object fermentacionAlta {
	method costoElaboracion(lupuloUsado, graduacionAlcoholica) = lupuloUsado.precio(graduacionAlcoholica) * 1.1
}

object fermentacionBaja {
	method costoElaboracion(algo, algo2) = 300
}