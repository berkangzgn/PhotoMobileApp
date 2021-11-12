//
//  SettingsVC.swift
//  PhotoWebApp
//
//  Created by Berkan Gezgin on 12.11.2021.
//

import UIKit

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func logoutClicked(_ sender: Any) {
        performSegue(withIdentifier: "toVC", sender: nil)
    }
    
}
