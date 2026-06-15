import roles.*

class Criatura{
    const property poderMagico
    var rol
    method poderOfensivo() = poderMagico * 10 + rol.poderExtraQueDa()
    method esFormidable() = self.esAstuta() || self.esExtraordinaria()
    method esAstuta()
    method esExtraordinaria()
    method cambiarDeRol() {rol = rol.cambio()}
}

class Duende inherits Criatura{
    override method poderOfensivo() = super() * 1.1
    override method esAstuta() = false
    override method esExtraordinaria() = rol.esExtraordinario(self)
}


class Hada inherits Criatura{
    var astucia = 10
    var kmDisponibleParaVolar = 2
    method aumentoKmDeVuelo(valor) {
        kmDisponibleParaVolar = (kmDisponibleParaVolar + valor).min(25)
        }
    override method esAstuta() = astucia > 50
    override method esExtraordinaria() = rol.esExtraordinario(self) and kmDisponibleParaVolar > 10

}

