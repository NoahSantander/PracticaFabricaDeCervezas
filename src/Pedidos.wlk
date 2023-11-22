import Cervezas.*
import Promociones.*

class Pedido {
	const tipoCerveza
	const cantLotes
	const distancia
	
	method tipoCerveza() = tipoCerveza
	
	method calcularDescuento() = tipoCerveza.descuento()
	method costoTotalLotes() = cantLotes * tipoCerveza.costoTotal()
	method haceDescuento(tipoPromocion) = tipoPromocion.aplicaDescuento(cantLotes, distancia)
	method precioConDescuento() = self.costoTotalLotes() * self.calcularDescuento()
	method calcularPrecio(tipoPromocion) = if(self.haceDescuento(tipoPromocion)) self.precioConDescuento() 
											else self.costoTotalLotes()
											
	method precioFinal(comisionPorcentaje, tipoPromocion) = comisionPorcentaje *  self.calcularPrecio(tipoPromocion)
}