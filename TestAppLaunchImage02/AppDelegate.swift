//
//  AppDelegate.swift
//  TestAppLaunchImage02
//
//  Created by 松久浩伸 on 2015/02/14.
//  Copyright (c) 2015年 matsuhisa.hironobu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let splitViewController = self.window!.rootViewController as ViewController
        
        let size = CGSize(width: splitViewController.view.frame.size.width, height: 50)
        let postion:CGPoint  = CGPoint(x: 0, y: splitViewController.view.frame.size.height-50.0)
        let view:UIView      = UIView(frame: CGRect(origin: postion, size: size))
        

#if DEBUG
view.backgroundColor = UIColor(red: 255, green: 0.0, blue: 0.0, alpha: 0.5)
#else
view.backgroundColor = UIColor(red: 138, green: 138, blue:0, alpha: 1)
#endif
        

        let devInfoLabel   = UILabel()
        devInfoLabel.text  = "開発版：" + Constants().MESSEAGE
        //devInfoLabel.textColor = UIColor(white: 1.0, alpha: 1.0)
        devInfoLabel.font      = UIFont.systemFontOfSize(14)
        devInfoLabel.frame     = CGRect(origin: CGPoint(x: 10, y: splitViewController.view.frame.size.height-50.0), size: size)

        splitViewController.view.addSubview(view)
        splitViewController.view.addSubview(devInfoLabel)
        

        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

