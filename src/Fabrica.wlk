import Distribuidores.*
import Pedidos.*
import Cervezas.*

object fabrica {
	method recibirPedido(pedido, distribuidor) {
		distribuidor.nuevoPedido(pedido)
	}
	
	method entregarTodosLosPedidos(distribuidor) {
		distribuidor.entregarPedidos()
	}
	
	method totalCobradoPor(distribuidor) = distribuidor.recaudado()
	
	method calcularIbuPara(cerveza) = cerveza.calcularIbu()
}