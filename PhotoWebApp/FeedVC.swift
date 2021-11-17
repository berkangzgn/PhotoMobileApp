//
//  FeedVC.swift
//  PhotoWebApp
//
//  Created by Berkan Gezgin on 12.11.2021.
//

import UIKit
import Firebase

class FeedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var userArray = [String]()
    var commentArray = [String]()
    var imageArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        fbGetData()
    }
    
    func fbGetData() {
        let firestoreDB = Firestore.firestore()
            // Altta verdiğimiz collection ismi kesinlikle DB'deki collection ismiyle uyuşmalı yoksa çalışmaz            ****************** Kontrol et çalışmayabilir *****************

        firestoreDB.collection("Post").addSnapshotListener { (snapshot, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                    // Snapshot optional (Snapshot? : İçinde veri olabilir olmayabilir) olduğu için bunun kontrolünü yapmamız gerekiyor.
                if snapshot?.isEmpty != true && snapshot != nil {
                        // Documents bize verileri dizi halinde verir.
                    for document in snapshot!.documents {
                        // let documentID = document.documentID
                        
                        if let image = document.get("imageUrl") as? String {
                            self.imageArray.append(image)
                        }
                        if let comment = document.get("commentText") as? String {
                            self.commentArray.append(comment)
                        }
                        if let email = document.get("email") as? String {
                            self.userArray.append(email)
                        }
                    }
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.userTextField.text = userArray[indexPath.row]
        cell.commentTextField.text = commentArray[indexPath.row]
        cell.postImageView.image = UIImage(named: "upload")
        
        return cell
    }
    
}
