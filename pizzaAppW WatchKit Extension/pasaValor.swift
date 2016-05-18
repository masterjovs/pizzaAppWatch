//
//  pasaValor.swift
//  pizzaAppW
//
//  Created by JoseOrlandoVargasSanchez on 15/05/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//

import WatchKit

class pasaValor: NSObject {
    
    ////
    
    var descripcion : String = ""
    var valor : Int = 0
    
    var descripcionMasa : String = ""
    var valorMasa : Int = 0
    
    var descripcionQueso : String = ""
    var valorQueso : Int = 0
    
    var ingredienteDescripcion_Uno : String = ""
    var ingredienteValor_Uno : Int = 0
    
    var ingredienteDescripcion_Dos : String = ""
    var ingredienteValor_Dos : Int = 0
    
    var ingredienteDescripcion_Tres : String = ""
    var ingredienteValor_Tres : Int = 0
    
    var ingredienteDescripcion_Cuatro : String = ""
    var ingredienteValor_Cuatro : Int = 0
    
    var ingredienteDescripcion_Cinco : String = ""
    var ingredienteValor_Cinco : Int = 0
    
    init(d : String, v : Int, dMasa : String, vMasa : Int, dQueso : String, vQueso : Int, dIngrediente_Uno : String, vIngrediente_Uno : Int, dIngrediente_Dos : String, vIngrediente_Dos : Int, dIngrediente_Tres : String, vIngrediente_Tres : Int, dIngrediente_Cuatro : String, vIngrediente_Cuatro : Int, dIngrediente_Cinco : String, vIngrediente_Cinco : Int) {
        
        descripcion = d
        valor = v
        
        descripcionMasa = dMasa
        valorMasa = vMasa
        
        descripcionQueso = dQueso
        valorQueso = vQueso
        
        ingredienteDescripcion_Uno = dIngrediente_Uno
        ingredienteValor_Uno = vIngrediente_Uno
        
        ingredienteDescripcion_Dos = dIngrediente_Dos
        ingredienteValor_Dos = vIngrediente_Dos
        
        ingredienteDescripcion_Tres = dIngrediente_Tres
        ingredienteValor_Tres = vIngrediente_Tres
        
        ingredienteDescripcion_Cuatro = dIngrediente_Cuatro
        ingredienteValor_Cuatro = vIngrediente_Cuatro
        
        ingredienteDescripcion_Cinco = dIngrediente_Cinco
        ingredienteValor_Cinco = vIngrediente_Cinco
    }
    

}
