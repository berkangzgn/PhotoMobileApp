//
//  SettingsVC.swift
//  PhotoWebApp
//
//  Created by Berkan Gezgin on 12.11.2021.
//

import UIKit
import Firebase

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signoutClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toVC", sender: nil)
        } catch {
            print("Error in sigoutClicked catch !")
        }
    }
    
    
}
