//
//  ViewController.swift
//  iOS_demo
//
//  Created by 危能 on 2019/3/25.
//  Copyright © 2019 AllanWell. All rights reserved.
//

import UIKit
import Flutter


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton()
        button.addTarget(self, action: #selector(ViewController.buttonDidClick), for: .touchDown)
        button.setTitle("Click me", for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.frame = CGRect(x: 50, y: 110, width: 160, height: 40)
        view.addSubview(button)
    }
    
    
    @objc func buttonDidClick() {
        let flutterViewController = FlutterViewController()
        flutterViewController.setInitialRoute("Hello_world_from_iOS!")
        
        present(flutterViewController, animated: true, completion: nil)
    }

}

