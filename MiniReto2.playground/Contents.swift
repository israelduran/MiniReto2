//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int
{
    case Apagado=0, VelocidadBaja=20, VelocidadMedia=50, VelocidadAlta=120
    
    init(velocidadInicial: Velocidades)
    {
        self = velocidadInicial
    }
}

class Auto
{
    var velocidad: Velocidades
    
    init(inicial: Velocidades)
    {
        self.velocidad = Velocidades(velocidadInicial: inicial)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String)
    {
        if velocidad.rawValue == 0
        {
            velocidad = Velocidades(velocidadInicial: Velocidades(velocidadInicial: Velocidades.VelocidadBaja))
            return (20, "Velocidad Baja")
        }
        else
            if velocidad.rawValue == 20
            {
                velocidad = Velocidades(velocidadInicial: Velocidades(velocidadInicial: Velocidades.VelocidadMedia))
                return (50, "Velocidad Media")
            }
            else
                if velocidad.rawValue == 50
                {
                    velocidad = Velocidades(velocidadInicial: Velocidades(velocidadInicial: Velocidades.VelocidadAlta))
                    return (120, "Velocidad Alta")
                }
                else
                {
                    velocidad = Velocidades(velocidadInicial: Velocidades(velocidadInicial: Velocidades.Apagado))
                    return (0, "Apagado")
                }
    }
}

//Se inicializa el velocímetro
let vel = Velocidades(velocidadInicial: Velocidades.VelocidadAlta)

//Se crea una instancia de la clase Auto. El valor de su variable velocidad está en "Apagado"
let auto = Auto(inicial: vel)

//Pruebas
for var i in 1...20
{
    var tuplaVelocidad = auto.cambioDeVelocidad()
    print("\(i). \(tuplaVelocidad.actual), \(tuplaVelocidad.velocidadEnCadena)");
}

