//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
    
}


class Auto {
    var velocidad: Velocidades
    
    init(){
        self.velocidad = .Apagado
    }

    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var actual: Int!
        var velocidadEnCadena: String!
        switch velocidad{
            case .Apagado:
                actual = velocidad.rawValue
                velocidadEnCadena = "Apagado"
                velocidad = .VelocidadBaja
                break
            case .VelocidadBaja:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Baja"
                velocidad = .VelocidadMedia
            break
            case .VelocidadMedia:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Media"
                velocidad = .VelocidadAlta
            case .VelocidadAlta:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Alta"
                velocidad = .VelocidadMedia
        }
        
        return (actual,velocidadEnCadena)
        
    }
}

var auto:Auto = Auto()

for i in 1...20 {
    print(auto.cambioDeVelocidad())
}
