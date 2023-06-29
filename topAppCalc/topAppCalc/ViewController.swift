//
//  ViewController.swift
//  topAppCalc
//
//  Created by Женя Аксьонов on 29.06.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var aTF: UITextField!
    @IBOutlet weak var bTF: UITextField!
    @IBOutlet weak var cTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        var a = Float(aTF.text!)
        var b = Float(bTF.text!)
        var c = Float(cTF.text!)
        var x1:Float
        var x2:Float
        var d:Float
        var discriminant:Float
        d = pow(b!,b!) - (4 * a! * c!)
        
        if(d >= 0){
            discriminant = sqrt(d)
            x1 = (-b! + discriminant) / (2 * a!)
            x2 = (-b! - (discriminant)) / (2 * a!)
            
            resultLabel.text = "x1 = \(round((1000 * x1) / 1000)), x2 = \(round((1000 * x2) / 1000))" 
        } else if (d < 0) {
            
            let d1 = ((4 * a! * c!) - pow(b!,2))
            let d2 = 2 * a!
            d = d1 / d2
            
            resultLabel.text = "d = \(d)"
        }
    }
}

