import armas.*

object castillo {
	var nivelDefensa = 150
	method altura() = 20
	method nivelDefensa() = nivelDefensa
	method recibirAtaque(unArma) {
		nivelDefensa = 0.max(nivelDefensa - unArma.potenciaArma())
	}
	method valorOtorgado() = nivelDefensa / 5
	method recibirTrabajo() = (nivelDefensa = 200.min(nivelDefensa + 200))
}

object aurora {
	var estaViva = true
	method altura() = 1
	method recibirAtaque(unArma) {
		if(unArma.potenciaArma() >= 10 and estaViva) {
			estaViva = false
		}
	}
	method valorOtorgado() = 15
	method recibirTrabajo() = {}
}

object tipa {
	var altura = 8
	method altura() = altura
	method recibirAtaque(potenciaAtaque) {}
	method valorOtorgado() = altura * 2
	method recibirTrabajo() = altura++
}