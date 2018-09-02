import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad : Velocidades
    
    init(velocidad : Velocidades) {
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        let velocidadTemp : Velocidades = self.velocidad
        
        if (velocidad == Velocidades.Apagado) {
            velocidad = Velocidades.VelocidadBaja
        } else if (velocidad == Velocidades.VelocidadBaja) {
            velocidad = Velocidades.VelocidadMedia
        } else if (velocidad == Velocidades.VelocidadMedia) {
            velocidad = Velocidades.VelocidadAlta
        } else if (velocidad == Velocidades.VelocidadAlta) {
            velocidad = Velocidades.VelocidadMedia
        }
        
        return (velocidadTemp.rawValue, "\(velocidadTemp)")
    }
}

var auto : Auto = Auto(velocidad: .Apagado)

for _ in 1...20 {
    let resultado : (actual : Int, velocidadEnCadena : String) = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)" )
}

