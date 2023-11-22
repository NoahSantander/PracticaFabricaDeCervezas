import Promociones.*
import Cervezas.*

class Distribuidor {
	var promocion
	const comision
	const pedidosAEntregar
	var recaudado = 0
	
	method recaudado() = recaudado
	
	method cobrarPedido(pedido) {
		recaudado += self.precioACobrar(pedido)
	}
	
	method cambiarPromocion(nuevaPromocion) {
		promocion = nuevaPromocion
	}
	
	method precioACobrar(pedido) = pedido.precioFinal(comision, promocion)
	
	method nuevoPedido(pedido) {
		pedidosAEntregar.add(pedido)
	}
	
	method eliminarPedido(pedido) {
		pedidosAEntregar.remove(pedido)
	}
	
	method entregarPedido(pedido) {
		self.cobrarPedido(pedido)
		self.eliminarPedido(pedido)
	}
	
	method entregarPedidos() {
		pedidosAEntregar.forEach({ pedido => self.entregarPedido(pedido) })
	}
	
	method cantidadDeLotesPendientesDe(tipoCerveza) = pedidosAEntregar.
													count({ pedido => pedido.tipoCerveza() == tipoCerveza })
													
	method cervezasConBUIAlto(valor) = pedidosAEntregar.filter({ pedido => pedido.tipoCerveza().tieneIbuAlto(valor)})
	method cancelarPedidosBUIAlto(valor) {
		self.cervezasConBUIAlto(valor).forEach({ pedido => self.eliminarPedido(pedido) })
	}
}