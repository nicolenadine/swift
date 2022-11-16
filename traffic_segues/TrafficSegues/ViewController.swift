//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Nicole Parziale on 5/24/20.
//  Copyright © 2020 Nicole Parziale. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // inherits from UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
    }
    
    @IBOutlet var textField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    


}

