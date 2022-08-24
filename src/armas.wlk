object ballesta {
	var cantFlechas = 10
	method estaCargada() = cantFlechas > 0
	method usarArma() {
		cantFlechas--
	}
	method potenciaArma() = 4
}

object jabalina {
	var estaCargada = true
	method estaCargada() = estaCargada
	method usarArma() {estaCargada = false} 
	method potenciaArma() = 30
}
