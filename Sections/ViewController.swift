//
//  ViewController.swift
//  Sections
//
//  Created by Javier Perez on 3/5/18.
//  Copyright © 2018 Javier Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let sectionTablesIdentifier = "SectionTablesIdentifier"
    var names: [String:[String]]!
    var keys: [String]!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: sectionTablesIdentifier)
        
        let path = Bundle.main.path(forResource: "sortedNames", ofType: "plist")
        
        let namesDict = NSDictionary(contentsOfFile: path!)
        
        names = namesDict as! [String: [String]]
        keys = (namesDict!.allKeys as! [String]).sorted()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    

}

