class PorCantidad {
	const cantidadASuperar
	
	method aplicaDescuento(cantidadLotes, _) = cantidadASuperar < cantidadLotes
}

object porCercania {
	method estaCerca(distancia) = distancia < 1
	method aplicaDescuento(_, distancia) = self.estaCerca(distancia) 
}