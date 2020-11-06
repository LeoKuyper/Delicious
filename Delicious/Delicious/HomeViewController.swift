//
//  HomeViewController.swift
//  Delicious
//
//  Created by Leo Kuyper on 2020/10/20.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var recipeTable: UITableView!
    
    let recipeNames = ["Cake", "Soup", "Cupcake"]
    let recipeDescription = ["Cake1", "Soup1", "Cupcake1"]
    let recipeImage = ["food", "food", "food"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let nib = UINib(nibName: "TemplateTableCell", bundle: nil)
        recipeTable.register(nib, forCellReuseIdentifier: "TemplateTableCell")
        
        self.recipeTable.rowHeight = 400
        
        recipeTable.delegate = self
        recipeTable.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = recipeTable.dequeueReusableCell(withIdentifier: "TemplateTableCell", for: indexPath) as! TemplateTableCell
        
        cell.recipeName?.text = recipeNames[indexPath.row]
        cell.recipeDescription?.text = recipeDescription[indexPath.row]
        cell.recipeImage?.image = UIImage(named: recipeImage[indexPath.row])
               
        return cell
    }

}
