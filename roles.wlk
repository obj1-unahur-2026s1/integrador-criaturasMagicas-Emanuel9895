

object guardian {
    method poderExtraQueDa() = 100
    method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() > 50
}

object domador {
    const mascotas = []
    method poderExtraQueDa(){
        return mascotas.count({m => m.conCuerno()}) * 150 
    }
    method esExtraordinario(unaCriatura){
        unaCriatura.poderMagico() >= 15 and mascotas.all({m => m.esVeterana()})
    }
}

object hechicero {
    method poderExtraQueDa() = 0
    method esExtraordinario(unaCriatura) = true
}

class MascotaMitologica {
    const edad
    const property conCuerno
    method esVeterana() = edad >= 10
}