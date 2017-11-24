//
//  AppDelegate.swift
//  bakery101
//
//  Created by Callum Bridge on 22/11/2017.
//  Copyright © 2017 Callum Bridge. All rights reserved.
//

import Cocoa

import Parse


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let config = ParseClientConfiguration {
            (configThing: ParseMutableClientConfiguration) in
            configThing.applicationId = "bakeryappbread"
            configThing.server = "http://bakeryapp101.herokuapp.com/parse"
        }
        Parse.initialize(with: config)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

