//
//  ViewController.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 22/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    @IBOutlet weak var myLabel6: UILabel!
    @IBOutlet weak var myLabel7: UILabel!
    @IBOutlet weak var myLabel8: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func githubURL(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://github.com/ihernandezvelarde")! as URL, options: [:], completionHandler: nil)
    }
}


