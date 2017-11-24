//
//  MainWindowController.swift
//  bakery101
//
//  Created by Callum Bridge on 22/11/2017.
//  Copyright © 2017 Callum Bridge. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    var createAccountVC : CreateAccountViewController?
    
    var loginVC : LoginViewController?
    
    var splitVC : SplitViewController?
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        loginVC = contentViewController as? LoginViewController
    }
    
    func moveToCreateAccount() {
        
        if createAccountVC == nil {
            createAccountVC = storyboard?.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "createAccountVC")) as? CreateAccountViewController
        }
        
        window?.contentView = createAccountVC?.view
    }
    
    func moveToMainMenu() {
        if splitVC == nil {
            splitVC = storyboard?.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "splitVC")) as? SplitViewController
        }
        
        window?.contentView = splitVC?.view
    }
    
    func moveToLogin() {
        window?.contentView = loginVC?.view
    }
    
}

