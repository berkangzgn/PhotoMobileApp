//
//  FeedVC.swift
//  PhotoWebApp
//
//  Created by Berkan Gezgin on 12.11.2021.
//

import UIKit

class FeedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.userTextField.text = "berkan@gmail.com"
        cell.commentTextField.text = "try"
        cell.postImageView.image = UIImage(named: "upload")
        
        return cell
    }
    
}
