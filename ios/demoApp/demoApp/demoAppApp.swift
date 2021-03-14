//
//  demoAppApp.swift
//  demoApp
//
//  Created by Mikhail Eremkin on 14.03.2021.
//

import SwiftUI
import UIKit
import OSLog
import OSLogHelper

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let _ : OSLogStream? = OSLogStream { (logMessage) in
            print(logMessage.msg)
        }
        let logger: Logger = Logger()
        
        logger.log("This is a default message")
        logger.fault("This is a fault message")
        logger.critical("This is a critical message")
        logger.error("This is an error message")
        logger.info("This is an info message")
        logger.debug("This is a debug message")
        
        return true
    }
}

@main
struct demoAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
