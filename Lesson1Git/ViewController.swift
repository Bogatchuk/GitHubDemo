//
//  ViewController.swift
//  Lesson1Git
//
//  Created by Roma Bogatchuk on 23.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroungLightView: UIView!
    @IBOutlet var lightViews: [UIView]!
    @IBOutlet weak var switchButton: UIButton!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroungLightView.layer.cornerRadius = 10
        switchButton.layer.cornerRadius = 10
        
        for view in lightViews {
            view.layer.cornerRadius = 30
            view.alpha = 0.5
        }
    }

    @IBAction func switchButtonClicked(_ sender: UIButton) {
        
        switchButton.setTitle("NEXT", for: .normal)
        for view in lightViews {
            view.alpha = 0.5
        }
        lightViews[index].alpha = 1
        
        if index >= 2 {
            index = 0
        } else {
            index += 1
        }
        
    }
    
}

