//
//  ViewController.swift
//  Foods
//
//  Created by Dale Musser on 9/27/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//

import UIKit

class FoodsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var foodsTableView: UITableView!
    
    var foods = ["Pizza", "Sushi", "Steak", "Chicken", "Fruit", "Salad", "Cake"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodsTableView.delegate = self
        foodsTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // our table has one section listing the foods
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food_cell", for: indexPath)
        
        cell.textLabel?.text = foods[indexPath.row]
        
        return cell
    }


}

