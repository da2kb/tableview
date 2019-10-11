//
//  ViewController.swift
//  tableview
//
//  Created by Dina Adel on 10/10/19.
//  Copyright © 2019 Dina Adel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    var colors = [Color(name: "red" , uiColor:UIColor.red ),
    Color(name: "orange" , uiColor:UIColor.orange),
    Color(name: "yellow" , uiColor:UIColor.yellow),
    Color(name: "green" , uiColor:UIColor.green),
    Color(name: "blue" , uiColor:UIColor.blue),
    Color(name: "purple" , uiColor:UIColor.purple),
    Color(name: "brown" , uiColor:UIColor.brown)]
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

