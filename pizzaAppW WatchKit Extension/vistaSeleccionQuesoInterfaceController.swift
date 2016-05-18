//
//  vistaSeleccionQuesoInterfaceController.swift
//  pizzaAppW
//
//  Created by JoseOrlandoVargasSanchez on 15/05/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//

import WatchKit
import Foundation


class vistaSeleccionQuesoInterfaceController: WKInterfaceController {
    
    
    ///
    @IBOutlet var seleccionQuesoConfirmacion: WKInterfaceLabel!
    
    var seleccionQuesoDescripcion : String = ""
    var seleccionQueso : Int = 0
    
    var seleccionMasa : Int = 0
    var seleccionMasaDescripcion : String = ""
    
    
    var seleccionTamañoDescripcion : String = ""
    var seleccionTamaño : Int = 0
    
    var seleccionIngrediente_Uno : Int = 0
    var seleccionIngrediente_Descripcion_Uno : String = ""
    
    var seleccionIngrediente_Dos : Int = 0
    var seleccionIngrediente_Descripcion_Dos : String = ""
    
    var seleccionIngrediente_Tres : Int = 0
    var seleccionIngrediente_Descripcion_Tres : String = ""
    
    var seleccionIngrediente_Cuatro : Int = 0
    var seleccionIngrediente_Descripcion_Cuatro : String = ""
    
    var seleccionIngrediente_Cinco : Int = 0
    var seleccionIngrediente_Descripcion_Cinco : String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let almacenaDatosVistaMasa = context as! pasaValor
        
        seleccionTamañoDescripcion = almacenaDatosVistaMasa.descripcion
        seleccionTamaño = almacenaDatosVistaMasa.valor
        
        seleccionMasaDescripcion = almacenaDatosVistaMasa.descripcionMasa
        seleccionMasa = almacenaDatosVistaMasa.valorMasa
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        //let almacenaDatosVistaTamañoMasa = context as! pasaValor
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func seleccionQuesoMozzarela() {
        
        //print("selecciono el queso MOZZARELA")
        self.seleccionQuesoConfirmacion.setText("MOZZARELA")
        
        seleccionQuesoDescripcion = "MOZZARELA"
        seleccionQueso = 1
        
    }
    
    @IBAction func seleccionQuesoCheddar() {
        
        //print("selecciono el queso CHEDDAR")
        self.seleccionQuesoConfirmacion.setText("CHEDDAR")
        
        seleccionQuesoDescripcion = "CHEDDAR"
        seleccionQueso = 2
    }
    
    @IBAction func seleccionoQuesoParmesan() {
        
        //print("selecciono el queso PARMESANO")
        self.seleccionQuesoConfirmacion.setText("PARMESANO")
        
        seleccionQuesoDescripcion = "NO QUIERO PARMESANO"
        seleccionQueso = 3
    }
    
    @IBAction func seleccionoNoQuiereQueso() {
        
        //print("selecciono NO QUIERE QUESO")
        self.seleccionQuesoConfirmacion.setText("NO QUIERO QUESO")
        
        seleccionQuesoDescripcion = "NO QUIERO QUESO"
        seleccionQueso = 4
        
        
    }
    
    
    @IBAction func confirmacionQueso() {
        
        if seleccionQueso == 0 {
            print("no ha seleccionado ningun queso")
        }
        else if seleccionQueso != 0{
            
            
            print("De la vista pasada: \(seleccionTamañoDescripcion)")
            print("De la vista pasada: \(seleccionTamaño)")
            
            print("De la vista pasada: \(seleccionMasaDescripcion)")
            print("De la vista pasada: \(seleccionMasa)")
            
            
            print("De la vista actual: \(seleccionQuesoDescripcion)")
            print("De la vista actual: \(seleccionQueso)")
            
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Descripcion_Uno)")
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Uno)")
            
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Descripcion_Dos)")
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Dos)")
            
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Descripcion_Tres)")
            print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Tres)")
            
            let valorContexto = pasaValor(d: seleccionTamañoDescripcion, v: seleccionTamaño, dMasa: seleccionMasaDescripcion, vMasa : seleccionMasa, dQueso : seleccionQuesoDescripcion, vQueso : seleccionQueso, dIngrediente_Uno : seleccionIngrediente_Descripcion_Uno, vIngrediente_Uno: seleccionIngrediente_Uno, dIngrediente_Dos: seleccionIngrediente_Descripcion_Dos, vIngrediente_Dos: seleccionIngrediente_Dos, dIngrediente_Tres: seleccionIngrediente_Descripcion_Tres, vIngrediente_Tres: seleccionIngrediente_Tres, dIngrediente_Cuatro: seleccionIngrediente_Descripcion_Cuatro, vIngrediente_Cuatro: seleccionIngrediente_Cuatro, dIngrediente_Cinco: seleccionIngrediente_Descripcion_Cinco, vIngrediente_Cinco: seleccionIngrediente_Cinco)
            
            pushControllerWithName("vistaIngredientes", context: valorContexto)
            
            print("fin tercer vista")
        }
        
    }
    
    

}
