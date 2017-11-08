//
//  TableViewCellMenu.swift
//  iQuiz
//
//  Created by zichu zheng on 11/7/17.
//  Copyright © 2017 zichu zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBAction func settingPress(_ sender: Any) {
        let alert = UIAlertController(title: "Setting", message: "Setting goes here", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    let itemMenu = ["Mathematics", "Super Heroes", "Science"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (itemMenu.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: (itemMenu[indexPath.row] + ".jpg"))
        cell.myLabel.text = itemMenu[indexPath.row]
        cell.descriptionLabel.text = itemMenu[indexPath.row] + " description"
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

