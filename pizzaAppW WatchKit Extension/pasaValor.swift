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
    
    init(d : String, v : Int, dMasa : String, vMasa : Int, dQueso : String, vQueso : Int, dIngrediente_Uno : String, vIngrediente_Uno : Int) {
        
        descripcion = d
        valor = v
        
        descripcionMasa = dMasa
        valorMasa = vMasa
        
        descripcionQueso = dQueso
        valorQueso = vQueso
        
        ingredienteDescripcion_Uno = dIngrediente_Uno
        ingredienteValor_Uno = vIngrediente_Uno
        
        
    }
    

}
