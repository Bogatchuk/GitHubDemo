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
    
    private var index = 0
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroungLightView.layer.cornerRadius = 10
        switchButton.layer.cornerRadius = 10
        
    }
    
    override func viewWillLayoutSubviews() {
        for view in lightViews {
            view.layer.cornerRadius = 30
            view.alpha = lightIsOff
        }
    }

    @IBAction func switchButtonClicked(_ sender: UIButton) {
        
        switchButton.setTitle("NEXT", for: .normal)
        for view in lightViews {
            view.alpha = lightIsOff
        }
        lightViews[index].alpha = lightIsOn
        
        if index >= 2 {
            index = 0
        } else {
            index += 1
        }
        
    }
}

