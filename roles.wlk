

object guardian {
    method poderExtraQueDa() = 100
    method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() > 50
    method cambio(){
        domador.mascotas().add(new MascotaMitologica(edad= 1, conCuerno = true))
        return domador
    }
}

object domador {
    const property mascotas = []
    method poderExtraQueDa(){
        return mascotas.count({m => m.conCuerno()}) * 150 
    }
    method esExtraordinario(unaCriatura){
        unaCriatura.poderMagico() >= 15 and mascotas.all({m => m.esVeterana()})
    }
    method cambio(){
        if(mascotas.any({m => m.conCuerno()})){
            return hechicero
        }
        else{
            self.error("No se puede cambiar de rol xq no hay una mascota con cuerno")

        }
    }
}

object hechicero {
    method poderExtraQueDa() = 0
    method esExtraordinario(unaCriatura) = true
    method cambio() = guardian
}

class MascotaMitologica {
    const edad
    const property conCuerno
    method esVeterana() = edad >= 10
}