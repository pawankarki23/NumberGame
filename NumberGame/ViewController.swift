//
//  ViewController.swift
//  NumberGame
//
//  Created by Pawan Karki on 12/6/16.
//  Copyright © 2016 PawanKarkiApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var numberTable: UITableView!
    
    var numbers = [1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //
        numberTable.dataSource = self
        numberTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (numbers.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(numbers[indexPath.row])
        return cell
    }
    
    // go to the other view controller when a row is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedNumber = String(numbers[indexPath.row])
        // go to showResult view controller, send the selected nunmber
        performSegue(withIdentifier: "showResult", sender: selectedNumber )
    }
    
    // this will send the data from this view controller to otehr
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destViewController = segue.destination as! ResultViewController
        
        destViewController.selectedNumber = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

