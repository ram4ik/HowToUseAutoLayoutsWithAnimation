//
//  ViewController.swift
//  HowToUseAutoLayoutsWithAnimation
//
//  Created by ramil on 08.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is something..."
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addSubview(label)
        
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        var xAnchor = label.centerXAnchor.constraint(equalTo: view.rightAnchor, constant:  200)
        xAnchor.isActive = true
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            xAnchor.isActive = false
            
            xAnchor = label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            xAnchor.isActive = true
            
            UIView.animate(withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            })
        }
    }


}

