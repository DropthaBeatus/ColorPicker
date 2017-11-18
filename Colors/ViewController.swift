//
//  ViewController.swift
//  Colors
//
//  Created by Liam Flaherty on 11/17/17.
//  Copyright © 2017 Liam Flaherty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    

    //@IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label: UILabel!
    // @IBOutlet weak var colorScroll: UIScrollView!
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    
    let colors = [Color(name: "red", uiColor: UIColor.red),Color(name: "orange", uiColor: UIColor.orange),Color(name: "yellow", uiColor: UIColor.yellow),Color(name: "green", uiColor: UIColor.green),Color(name: "blue", uiColor: UIColor.blue),Color(name: "purple", uiColor: UIColor.purple),Color(name: "brown", uiColor: UIColor.brown)]
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int)
    -> String?
    {
        return colors[row].name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        label.text = colors[row].name
        self.view.backgroundColor = colors[row].uiColor
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // view.backgroundColor = colors?.uiColor
        label.text = colors[0].name
        self.view.backgroundColor = colors[0].uiColor
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
}

