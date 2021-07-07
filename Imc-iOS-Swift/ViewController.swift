//
//  ViewController.swift
//  Imc-iOS-Swift
//
//  Created by Gabriel on 06/07/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var textFieldWeight: UITextField!
    @IBOutlet weak var textFieldHeight: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imgViewResult: UIImageView!
    
    @IBOutlet weak var viewResult: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func btnCalculate(_ sender: Any) {
        if let weight = Double(textFieldWeight.text!), let height = Double(textFieldHeight.text!) {
            imc = weight / (height*height)
            showResults()
        }
    }
    

    
    
    
    
    func showResults() {
        var result: String = ""
        var image: String = ""
        switch imc {
                case 0..<16:
                    result = "Magreza"
                    image = "abaixo"
                case 16..<18.5:
                    result = "Magreza"
                    image = "abaixo"
                case 18.5..<25:
                    result = "Peso ideal"
                    image  = "ideal"
                case 25..<30:
                    result = "Sobre peso"
                    image  = "sobre"
                default:
                    result =  "Obesidade"
                    image = "obesidade"
        }
        lblResult.text = "\(Int(imc)): \(result)"
        imgViewResult.image = UIImage(named: image)
        viewResult.isHidden = false
        view.endEditing(true)
    }
    
    
}

