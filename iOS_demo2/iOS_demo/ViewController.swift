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
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!
        flutterViewController.setInitialRoute("hello_from_engine")
        present(flutterViewController, animated: true, completion: nil)
    }

    

}

 
