//
//  AppDelegate.swift
//  Swift微博
//
//  Created by WZZ on 16/3/9.
//  Copyright © 2016年 WZZ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

   

}

