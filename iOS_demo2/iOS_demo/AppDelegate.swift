//
//  AppDelegate.swift
//  iOS_demo
//
//  Created by 危能 on 2019/3/25.
//  Copyright © 2019 AllanWell. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    
    var flutterEngine: FlutterEngine!

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        flutterEngine = FlutterEngine(name: "flutter_Engine", project: FlutterDartProject(precompiledDartBundle: Bundle.main))
        flutterEngine?.run(withEntrypoint: nil)
        GeneratedPluginRegistrant.register(with: flutterEngine)
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }


}

