//
//  MenuChannelViewController.swift
//  bakery101
//
//  Created by Callum Bridge on 24/11/2017.
//  Copyright © 2017 Callum Bridge. All rights reserved.
//

import Cocoa
import Parse

class MenuChannelViewController: NSViewController {

    @IBOutlet weak var nameLabel: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
    
    override func viewDidAppear() {
        if let user = PFUser.current() {
            if let name = user["name"] as? String {
                nameLabel.stringValue = name
                }
        }
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        PFUser.logOut()
        print("You Logged Out")
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToLogin()
        }
    }
}
