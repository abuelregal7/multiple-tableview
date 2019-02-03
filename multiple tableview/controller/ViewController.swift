//
//  ViewController.swift
//  multiple tableview
//
//  Created by Ahmed abu elregal on 11/18/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var mainNamesOfboy: UILabel!
    @IBOutlet weak var mainNamesOfgirl: UILabel!
    
    var selected : Int!
    var boysNames : [String] = ["Ahmed","mohameed","Ramy","Yaseen","Adam","Essam","Kamel","Samier"]
    var girlsNames : [String] = ["Gehan","menna","fatema","Shreen","Nagat","Eman","Rania","Walaa"]
    
    @IBOutlet weak var namesOfBoys: UITableView!
    @IBOutlet weak var namesOfGirls: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namesOfBoys.dataSource = self
        namesOfBoys.delegate = self
        namesOfGirls.dataSource = self
        namesOfGirls.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (selected == 0)
        {
            return boysNames.count
        }
        else
        {
            return girlsNames.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (tableView == self.namesOfBoys)
        {
            let cell : boyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "boyTableViewCell") as! boyTableViewCell
            cell.NamesOfBoys.text = "\(boysNames[indexPath.row])"
            mainNamesOfboy.text = "BOYS"
            return cell
        }
        else
        {
            let cell : girlTableViewCell = tableView.dequeueReusableCell(withIdentifier: "girlTableViewCell") as! girlTableViewCell
            cell.NamesOfGirls.text = "\(girlsNames[indexPath.row])"
            mainNamesOfgirl.text = "GIRLS"
            return cell
        }
    }


}

