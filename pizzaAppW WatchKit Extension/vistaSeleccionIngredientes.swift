//
//  vistaSeleccionIngredientes.swift
//  pizzaAppW
//
//  Created by JoseOrlandoVargasSanchez on 15/05/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//

import WatchKit
import Foundation


class vistaSeleccionIngredientes: WKInterfaceController {
    
    @IBOutlet var etiquetaContadorIngredientes: WKInterfaceLabel!
    
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
    
    var contadorIngredientes : Int = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
    let almacenaDatosVistaQueso = context as! pasaValor
        
        seleccionTamañoDescripcion = almacenaDatosVistaQueso.descripcion
        seleccionTamaño = almacenaDatosVistaQueso.valor
        
        seleccionMasaDescripcion = almacenaDatosVistaQueso.descripcionMasa
        seleccionMasa = almacenaDatosVistaQueso.valorMasa

        seleccionQuesoDescripcion = almacenaDatosVistaQueso.descripcionQueso
        seleccionQueso = almacenaDatosVistaQueso.valorQueso
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    
    @IBAction func seleccionIngre_Jamon() {
        
        contadorIngredientes = contadorIngredientes + 1
        if contadorIngredientes <= 6 {
            self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "JAMON"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "JAMON"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "JAMON"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "JAMON"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "JAMON"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")

            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
        
        
    }
    
    @IBAction func seleccionIngre_Pepperoni() {
        contadorIngredientes = contadorIngredientes + 1
        
        if contadorIngredientes <= 6 {
            
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "PEPPERONI"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "PEPPERONI"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "PEPPERONI"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "PEPPERONI"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "PEPPERONI"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")

            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
        

        
    }
    
    
    @IBAction func seleccionPavo() {
        
        contadorIngredientes = contadorIngredientes + 1
        
        if contadorIngredientes <= 6 {
            
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "PAVO"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "PAVO"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "PAVO"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "PAVO"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "PAVO"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")
                
            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
    }
    
    @IBAction func seleccionSalchicha() {
        contadorIngredientes = contadorIngredientes + 1
        
        if contadorIngredientes <= 6 {
            
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "SALCHICHA"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "SALCHINA"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "SALCHICHA"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "SALCHICHA"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "SALCHICHA"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")
                
            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
        
    }
    
    @IBAction func seleccionAceituna() {
        contadorIngredientes = contadorIngredientes + 1
        
        if contadorIngredientes <= 6 {
            
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "ACEITUNA"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "ACEITUNA"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "ACEITUNA"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "ACEITUNA"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "ACEITUNA"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")
                
            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
    }
    
    @IBAction func seleccionCebolla() {
        contadorIngredientes = contadorIngredientes + 1
        
        if contadorIngredientes <= 6 {
            
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "CEBOLLA"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "CEBOLLA"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "CEBOLLA"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "CEBOLLA"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "CEBOLLA"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")
                
            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
    }
    
    @IBAction func seleccionPimiento() {
        contadorIngredientes = contadorIngredientes + 1
        
        if contadorIngredientes <= 6 {
            
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "PIMIENTO"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "PIMIENTO"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "PIMIENTO"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "PIMIENTO"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "PIMIENTO"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")
                
            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
    }
    
    @IBAction func seleccionPiña() {
        contadorIngredientes = contadorIngredientes + 1
        
        if contadorIngredientes <= 6 {
            
            
            if contadorIngredientes == 1{
                seleccionIngrediente_Descripcion_Uno = "PIÑA"
                seleccionIngrediente_Uno = 1
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 2{
                seleccionIngrediente_Descripcion_Dos = "PIÑA"
                seleccionIngrediente_Dos = 2
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 3{
                seleccionIngrediente_Descripcion_Tres = "PIÑA"
                seleccionIngrediente_Tres = 3
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 4{
                seleccionIngrediente_Descripcion_Cuatro = "PIÑA"
                seleccionIngrediente_Cuatro = 4
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes == 5{
                seleccionIngrediente_Descripcion_Cinco = "PIÑA"
                seleccionIngrediente_Cinco = 5
                self.etiquetaContadorIngredientes.setText(String(contadorIngredientes))
            }else if contadorIngredientes > 5{
                print("No mas ingredientes")
                self.etiquetaContadorIngredientes.setText("5 OK")
                
            }
        }else if contadorIngredientes == 5{
            self.etiquetaContadorIngredientes.setText("5 OK")
        }
    }

    @IBAction func confirmacionIngredientes() {
        
        
       
            
            let valorContexto = pasaValor(d: seleccionTamañoDescripcion, v: seleccionTamaño, dMasa: seleccionMasaDescripcion, vMasa : seleccionMasa, dQueso : seleccionQuesoDescripcion, vQueso : seleccionQueso, dIngrediente_Uno : seleccionIngrediente_Descripcion_Uno, vIngrediente_Uno: seleccionIngrediente_Uno)
        
            pushControllerWithName("vistaConfirmacion", context: valorContexto)
        
        
        
        print("De la vista pasada: \(seleccionTamañoDescripcion)")
        print("De la vista pasada: \(seleccionTamaño)")
        
        print("De la vista pasada: \(seleccionMasaDescripcion)")
        print("De la vista pasada: \(seleccionMasa)")
        
        
        print("De la vista actual: \(seleccionQuesoDescripcion)")
        print("De la vista actual: \(seleccionQueso)")
        
        print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Descripcion_Uno)")
        print("De la vista futura Ingrediente_Uno: \(seleccionIngrediente_Uno)")
        
        print("De la vista futura Ingrediente_Dos: \(seleccionIngrediente_Descripcion_Dos)")
        print("De la vista futura Ingrediente_Dos: \(seleccionIngrediente_Dos)")
        
        print("De la vista futura Ingrediente_Tres: \(seleccionIngrediente_Descripcion_Tres)")
        print("De la vista futura Ingrediente_Tres: \(seleccionIngrediente_Tres)")
        
        print("De la vista futura Ingrediente_Cuatro: \(seleccionIngrediente_Descripcion_Cuatro)")
        print("De la vista futura Ingrediente_Cuatro: \(seleccionIngrediente_Cuatro)")
        
        print("De la vista futura Ingrediente_Cinco: \(seleccionIngrediente_Descripcion_Cinco)")
        print("De la vista futura Ingrediente_Cinco: \(seleccionIngrediente_Cinco)")
        
        
        print("fin cuarta vista")
    }
}
