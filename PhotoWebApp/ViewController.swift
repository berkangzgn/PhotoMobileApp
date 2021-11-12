//
//  ViewController.swift
//  PhotoWebApp
//
//  Created by Berkan Gezgin on 12.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signinClicked(_ sender: Any) {
    }
    
    
    @IBAction func loginClicked(_ sender: Any) {
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
}

