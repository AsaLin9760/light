//
//  ViewController.swift
//  famousApp
//
//  Created by Asa on 2017/7/6.
//  Copyright © 2017年 Asa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var personImage: UIImageView!
    
    let famousNameArray = ["apple","money","windows","facebook","ironman","taylor","peter"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         index = Int(arc4random_uniform(UInt32(famousNameArray.count)))
        updateUI()
    }
    
    func updateUI() {
        personImage.image = UIImage(named: famousNameArray[index])
    }
    
    @IBAction func pressButton(_ sender: Any) {
        index += 1
        if index == famousNameArray.count {
            index = 0
        }
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

