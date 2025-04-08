object tom {
    var energia = 50
    var ultimoRatonComido = null
    var distanciaRecorrida = 0

    // Indicacion
    method correr(metros) { 
        distanciaRecorrida += metros
        energia -= metros / 2 
    }

    method comer(unRaton) { 
        ultimoRatonComido = unRaton
        energia += 12 + unRaton.peso() 
    }

    method energia(unaEnergia) { energia = unaEnergia }

    method cazarRatonCercano(unRaton, metros) {
        if (self.puedeComer(metros)){
            self.correr(metros)
            self.comer(unRaton)
        }
    } 


    // Consulta
    method velocidadMaxima() = 5 + (energia / 10) 
    method energia() = energia
    method distanciaRecorrida() = distanciaRecorrida
    method ratonComido() = ultimoRatonComido
    method puedeComer(metros) = !metros / 2 > energia
}

object jerry {
    var edad = 2

    // Consulta
    method peso() = edad * 20
    method edad() = edad

    // indicacion
    method edad(unaEdad) { edad = unaEdad }
    method cumplirUnAnio() { edad += 1 }
}

object nibbles {
    method peso() = 35
}

// Inventar otro ratón

object joselito {
    var edad = 6

    // Consulta 
    method peso() = edad * 50
    method edad() = edad

    // indicacion
    method edad(unaEdad) { edad = unaEdad }
    method cumplirUnAnio() { edad += 1 }
}
