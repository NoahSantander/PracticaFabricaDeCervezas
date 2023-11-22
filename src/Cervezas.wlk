import Ingredientes.*

class Cerveza {
	const tipoLupulo
	const tipoLevadura
	const contenidoDeAlcohol
	const gramosDeAzucar
	
	method tieneAltoContenidoDeAlcohol() = contenidoDeAlcohol > 8
	
	method costoTotal()
	method descuento() = 1
	
	method calcularIbu() = gramosDeAzucar * (tipoLupulo.amargor() / 2)
	method tieneIbuAlto(valor) = self.calcularIbu() > valor
}

class Clasica inherits Cerveza {
	override method costoTotal() = tipoLevadura.costoElaboracion(tipoLupulo, contenidoDeAlcohol)
	override method descuento() = 0.05
}

class Lager inherits Cerveza {
	const gramosDeAditivo
	
	override method costoTotal() = 50 * gramosDeAditivo 
	method calcularDescuento() = gramosDeAditivo * 0.02
	method muchoDescuento() = self.calcularDescuento() > 0.1
	override method descuento() = if(self.muchoDescuento()) 0.1 else self.calcularDescuento()
}

class Porter inherits Cerveza {
	override method costoTotal() = if(self.tieneAltoContenidoDeAlcohol()) 450 else 150 
	
	override method calcularIbu() = if(self.tieneAltoContenidoDeAlcohol()) super() * (1 + (contenidoDeAlcohol -8) / 100) 
									else super() * 0.97
}