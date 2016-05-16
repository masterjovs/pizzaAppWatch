//
//  InterfaceController.swift
//  pizzaAppW WatchKit Extension
//
//  Created by JoseOrlandoVargasSanchez on 15/05/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    //etiquetas de seleccion
    
    @IBOutlet var etiquetaTamaño_1: WKInterfaceLabel!
    @IBOutlet var etiquetaTamaño_2: WKInterfaceLabel!
    @IBOutlet var etiquetaTamaño_3: WKInterfaceLabel!
    
    
    var seleccionTamañoDescripcion : String = ""
    var seleccionTamaño : Int = 0
    
    var seleccionMasaDescripcion : String = ""
    var seleccionMasa : Int = 0
    
    var seleccionQuesoDescripcion : String = ""
    var seleccionQueso : Int = 0
    
    var seleccionIngrediente_Descripcion_Uno : String = ""
    var seleccionIngrediente_Uno : Int = 0
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        //self.imagen_tamañoPersonal.setImage()
       
        self.etiquetaTamaño_1.setText("")
        self.etiquetaTamaño_2.setText("")
        self.etiquetaTamaño_3.setText("")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBAction func seleccionTamañoPeronal() {
        
        self.etiquetaTamaño_1.setText("OK")
        self.etiquetaTamaño_2.setText("")
        self.etiquetaTamaño_3.setText("")
        
        seleccionTamaño = 1
        seleccionTamañoDescripcion = "PERSONAL"
        
        //print("\(seleccionTamañoDescripcion)")
        //print("\(seleccionTamaño)")
    }
    
    @IBAction func seleccionTamañoMediano() {
        
        
        self.etiquetaTamaño_1.setText("")
        self.etiquetaTamaño_2.setText("OK")
        self.etiquetaTamaño_3.setText("")

        seleccionTamaño = 2
        seleccionTamañoDescripcion = "MEDIANO"
        
        //print("\(seleccionTamañoDescripcion)")
        //print("\(seleccionTamaño)")
    }
    
    @IBAction func seleccionTamañoFamiliar() {
        
        
        self.etiquetaTamaño_1.setText("")
        self.etiquetaTamaño_2.setText("")
        self.etiquetaTamaño_3.setText("OK")

        seleccionTamaño = 3
        seleccionTamañoDescripcion = "FAMILIAR"
        
        //print("\(seleccionTamañoDescripcion)")
        //print("\(seleccionTamaño)")
            }
    
    @IBAction func confirmacionBoton() {
        
        //print("esta confirmando tamaño")
        
        //print("\(seleccionTamaño)")
        //print("\(seleccionTamañoDescripcion)")
        
        
        if seleccionTamaño == 0{
            print("no ha seleccionado tamaño")
        }
        else if seleccionTamaño != 0{
            
            seleccionMasaDescripcion = ""
            seleccionMasa = 0
            
            print("De la vista actual Tamaño: \(seleccionTamañoDescripcion)")
            print("De la vista actual Tamaño: \(seleccionTamaño)")
            
            print("De la vista futura Masa: \(seleccionMasaDescripcion)")
            print("De la vista futura Masa: \(seleccionMasa)")
            
            print("De la vista futura Queso: \(seleccionQuesoDescripcion)")
            print("De la vista futura Queso: \(seleccionQueso)")
            
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Descripcion_Uno)")
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Uno)")
            
            
            let valorContexto = pasaValor(d: seleccionTamañoDescripcion, v: seleccionTamaño, dMasa: seleccionMasaDescripcion, vMasa : seleccionMasa, dQueso : seleccionQuesoDescripcion, vQueso : seleccionQueso, dIngrediente_Uno : seleccionIngrediente_Descripcion_Uno, vIngrediente_Uno: seleccionIngrediente_Uno)
            pushControllerWithName("vistaMasa", context: valorContexto)
            
            print("Fin primera vista")
        }
        
        
       
    }
    
    
}
