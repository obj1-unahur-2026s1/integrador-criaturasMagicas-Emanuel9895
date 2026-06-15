import criaturas.*

class Colonia{
    const property criaturas = []
    method poderOfensivo() = criaturas.sum({c => c.poderOfensivo()})

    method conquistar(unArea){ 
        if(unArea.poderDefensivo() < self.poderOfensivo()){
            unArea.habitadaPor(self)
        }
        else{
            criaturas.forEach({c => c.poderMagico(c.poderMagico() * 0.85)})
        }
    }
}

class losClaros {
    var property habitadaPor
    method poderDefensivo() = habitadaPor.poderOfensivo() + 100
}

class losCastillos {
    var property habitadaPor
    method poderDefensivo() = habitadaPor.criaturas().count({c => c.esFormidable()}) * 200
}