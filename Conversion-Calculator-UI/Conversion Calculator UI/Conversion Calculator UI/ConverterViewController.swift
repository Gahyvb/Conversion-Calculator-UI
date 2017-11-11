//
//  ConverterViewController.swift
//  Conversion Calculator UI
//
//  Created by Geoffrey Husser on 11/9/17.
//  Copyright © 2017 Geoffrey Husser. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct converter {
        var label: String
        var inputUnit: String
        var outputUnit: String
        }
    var array: [converter] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array.append(converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"))
        array.append(converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "ki"))
        array.append(converter(label: "kilometers to miles", inputUnit: "ki", outputUnit: "mi"))
    }
    
    @IBAction func convert(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Conversion", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: array[0].label, style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.inputDisplay?.text = self.array[0].inputUnit
            self.outputDisplay?.text = self.array[0].outputUnit
        }))
        alert.addAction(UIAlertAction(title: array[1].label, style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.inputDisplay?.text = self.array[1].inputUnit
            self.outputDisplay?.text = self.array[1].outputUnit
        }))
        alert.addAction(UIAlertAction(title: array[2].label, style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.inputDisplay?.text = self.array[2].inputUnit
            self.outputDisplay?.text = self.array[2].outputUnit
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
