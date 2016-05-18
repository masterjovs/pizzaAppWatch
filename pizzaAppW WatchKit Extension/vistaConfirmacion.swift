//
//  vistaConfirmacion.swift
//  pizzaAppW
//
//  Created by JoseOrlandoVargasSanchez on 15/05/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmacion: WKInterfaceController {
    
    
    @IBOutlet var etiquetaTamaño: WKInterfaceLabel!
    @IBOutlet var etiquetaMasa: WKInterfaceLabel!
    @IBOutlet var etiquetaQueso: WKInterfaceLabel!
    @IBOutlet var etiquetaIngre_1: WKInterfaceLabel!
    @IBOutlet var etiquetaIngre_2: WKInterfaceLabel!
    @IBOutlet var etiquetaIngre_3: WKInterfaceLabel!
    @IBOutlet var etiquetaIngre_4: WKInterfaceLabel!
    @IBOutlet var etiquetaIngre_5: WKInterfaceLabel!

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
        
        let almacenaDatosVistaIngredientes = context as! pasaValor
        
        seleccionTamañoDescripcion = almacenaDatosVistaIngredientes.descripcion
        seleccionTamaño = almacenaDatosVistaIngredientes.valor
        
        seleccionMasaDescripcion = almacenaDatosVistaIngredientes.descripcionMasa
        seleccionMasa = almacenaDatosVistaIngredientes.valorMasa
        
        seleccionQuesoDescripcion = almacenaDatosVistaIngredientes.descripcionQueso
        seleccionQueso = almacenaDatosVistaIngredientes.valorQueso
        
       
        seleccionIngrediente_Descripcion_Uno = almacenaDatosVistaIngredientes.ingredienteDescripcion_Uno
        seleccionIngrediente_Uno = almacenaDatosVistaIngredientes.ingredienteValor_Uno
        
        seleccionIngrediente_Descripcion_Dos = almacenaDatosVistaIngredientes.ingredienteDescripcion_Dos
        seleccionIngrediente_Dos = almacenaDatosVistaIngredientes.ingredienteValor_Dos

        seleccionIngrediente_Descripcion_Tres = almacenaDatosVistaIngredientes.ingredienteDescripcion_Tres
        seleccionIngrediente_Tres = almacenaDatosVistaIngredientes.ingredienteValor_Tres
        
        seleccionIngrediente_Descripcion_Cuatro = almacenaDatosVistaIngredientes.ingredienteDescripcion_Cuatro
        seleccionIngrediente_Cuatro = almacenaDatosVistaIngredientes.ingredienteValor_Cuatro
        
        seleccionIngrediente_Descripcion_Cinco = almacenaDatosVistaIngredientes.ingredienteDescripcion_Cinco
        seleccionIngrediente_Cinco = almacenaDatosVistaIngredientes.ingredienteValor_Cinco
        
        self.etiquetaTamaño.setText(String(seleccionTamañoDescripcion))
        self.etiquetaMasa.setText(String(seleccionMasaDescripcion))
        self.etiquetaQueso.setText(String(seleccionQuesoDescripcion))
        
        self.etiquetaIngre_1.setText(String(seleccionIngrediente_Descripcion_Uno))
        self.etiquetaIngre_2.setText(String(seleccionIngrediente_Descripcion_Dos))
        self.etiquetaIngre_3.setText(String(seleccionIngrediente_Descripcion_Tres))
        self.etiquetaIngre_4.setText(String(seleccionIngrediente_Descripcion_Cuatro))
        self.etiquetaIngre_5.setText(String(seleccionIngrediente_Descripcion_Cinco))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func actionSalir() {
        
        
        //
    }

}
