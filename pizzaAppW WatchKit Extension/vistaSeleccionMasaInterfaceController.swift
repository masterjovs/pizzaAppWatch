//
//  vistaSeleccionMasaInterfaceController.swift
//  pizzaAppW
//
//  Created by JoseOrlandoVargasSanchez on 15/05/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//

import WatchKit
import Foundation


class vistaSeleccionMasaInterfaceController: WKInterfaceController {
    
    
    // controlador de vista seleecionMasa
    
    @IBOutlet var etiquetaMasa_1: WKInterfaceLabel!
    @IBOutlet var etiquetaMasa_2: WKInterfaceLabel!
    @IBOutlet var etiquetaMasa_3: WKInterfaceLabel!
    
    
    var seleccionTamañoDescripcion : String = ""
    var seleccionTamaño : Int = 0
    
    var seleccionMasa : Int = 0
    var seleccionMasaDescripcion : String = ""
    
    var seleccionQueso : Int = 0
    var seleccionQuesoDescripcion : String = ""
    
    var seleccionIngrediente_Uno : Int = 0
    var seleccionIngrediente_Descripcion_Uno : String = ""
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let almacenaDatosVistaTamaño = context as! pasaValor
        seleccionTamañoDescripcion = almacenaDatosVistaTamaño.descripcion
        seleccionTamaño = almacenaDatosVistaTamaño.valor
        
        
        
        //Rutina de confirmacion mediante eytiquetas
        //etiquetaDecripcionTamaño.setText(String(almacenaDatosVistaTamaño.descripcionTam))
        //etiquetaValorTamaño.setText(String(almacenaDatosVistaTamaño.valorTam))
        //FIN Rutina de confirmacion mediante eytiquetas
      
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        self.etiquetaMasa_1.setText("")
        self.etiquetaMasa_2.setText("")
        self.etiquetaMasa_3.setText("")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionMasaDelgada() {
                self.etiquetaMasa_1.setText("OK")
        self.etiquetaMasa_2.setText("")
        self.etiquetaMasa_3.setText("")
        
        seleccionMasa = 1
        seleccionMasaDescripcion = "DELGADA"
        
        //print("\(seleccionMasaDescripcion)")
        //print("\(seleccionMasa)")
    }
    
    @IBAction func seleccionMasaCrujiente() {
        
        self.etiquetaMasa_1.setText("")
        self.etiquetaMasa_2.setText("OK")
        self.etiquetaMasa_3.setText("")
        
        seleccionMasa = 2
        seleccionMasaDescripcion = "CRUJIENTE"
        
        //print("\(seleccionMasaDescripcion)")
        //print("\(seleccionMasa)")
    }
    
    @IBAction func seleccionMasaGruesa() {
        
        self.etiquetaMasa_1.setText("")
        self.etiquetaMasa_2.setText("")
        self.etiquetaMasa_3.setText("OK")
        
        seleccionMasa = 3
        seleccionMasaDescripcion = "GRUESA"
        
        //print("\(seleccionMasaDescripcion)")
        //print("\(seleccionMasa)")
    }
    
    
    @IBAction func confirmacionMasa() {
        
        if seleccionMasa == 0{
            print("no selecciono el tipo de masa")
        }
        else if seleccionMasa != 0 {
            print("De la vista pasada Tamaño: \(seleccionTamañoDescripcion)")
            print("De la vista pasada Tamaño: \(seleccionTamaño)")
            
            print("De la vista actual Masa: \(seleccionMasaDescripcion)")
            print("De la vista actual Masa: \(seleccionMasa)")
            
            print("De la vista futura Queso: \(seleccionQuesoDescripcion)")
            print("De la vista futura Queso: \(seleccionQueso)")
            
            
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Descripcion_Uno)")
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Uno)")
            
            let valorContexto = pasaValor(d: seleccionTamañoDescripcion, v: seleccionTamaño, dMasa: seleccionMasaDescripcion, vMasa : seleccionMasa, dQueso : seleccionQuesoDescripcion, vQueso : seleccionQueso, dIngrediente_Uno : seleccionIngrediente_Descripcion_Uno, vIngrediente_Uno: seleccionIngrediente_Uno)
            pushControllerWithName("vistaQueso", context: valorContexto)
            
            print("Fin segunda vista")
            
        }
      
        
       
    }
    
    
}
