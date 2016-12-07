//
//  ResultViewController.swift
//  NumberGame
//
//  Created by Pawan Karki on 12/6/16.
//  Copyright © 2016 PawanKarkiApps. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var selectedNumber = ""
    @IBOutlet weak var resultLabel: UILabel!


    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        resultLabel.text = selectedNumber
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
