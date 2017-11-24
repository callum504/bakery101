//
//  CreateAccountViewController.swift
//  bakery101
//
//  Created by Callum Bridge on 22/11/2017.
//  Copyright © 2017 Callum Bridge. All rights reserved.
//

import Cocoa
import Parse

class CreateAccountViewController: NSViewController {
    
    @IBOutlet weak var fullNameTextField: NSTextField!
    
    @IBOutlet weak var passwordTextFIeld: NSSecureTextField!
    
    @IBOutlet weak var emailTextField: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToLogin()
        }
    }
    
    @IBAction func createAccountButtonClicked(_ sender: Any) {
        let user = PFUser()
        
        user.email = emailTextField.stringValue
        user.password = passwordTextFIeld.stringValue
        user["passwordOwn"] = passwordTextFIeld.stringValue
        user.username = emailTextField.stringValue
        user["name"] = fullNameTextField.stringValue
        user.signUpInBackground { (success: Bool, error: Error?) in
            if success {
                print("made a user")
                if let mainWC = self.view.window?.windowController as? MainWindowController {
                    mainWC.moveToMainMenu()
                }
            } else {
                print("we have a problem")
            }
        }
    }
}
