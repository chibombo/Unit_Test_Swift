//
//  ViewController.swift
//  Unit_Test_Swift
//
//  Created by Luis Genaro Arvizu Vega on 11/21/18.
//  Copyright © 2018 Profuturo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        print("Hi14")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func add(numberOne x: Double, numberTwo y: Double)->Double{
        let result: Double = x + y
        return result
    }
        
}

