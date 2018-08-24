import clientes.*

object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
	method precioViaje(cliente, kms) {
		return (cliente.precioPactadoPorKm() * kms)*1.2
	}
	
}
object mariela {
	method precioViaje(cliente, kms) {
		if (cliente.precioPactadoPorKm() *kms <50) {return 50}
		else {return (cliente.precioPactadoPorKm()*kms)}
	}
}
object juana {
	method precioViaje(cliente, kms) {
		if (kms <= 8) {return 100}
		else {return 200}
		}
	}
object lucia {
	var chofer = null
	method reemplazar(choferes) {chofer = choferes}
	method precioViaje(cliente, kms) { return chofer.precioViaje(cliente, kms)
		}		
}
		
	

	