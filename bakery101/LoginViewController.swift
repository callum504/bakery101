//
//  LoginViewController.swift
//  bakery101
//
//  Created by Callum Bridge on 22/11/2017.
//  Copyright © 2017 Callum Bridge. All rights reserved.
//

import Cocoa
import Parse

class LoginViewController: NSViewController {
    
    @IBOutlet weak var passwordTextFIeld: NSSecureTextField!
    
    @IBOutlet weak var emailTextField: NSTextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func createAccountClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToCreateAccount()
        }
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        
        PFUser.logInWithUsername(inBackground: emailTextField.stringValue, password: passwordTextFIeld.stringValue) { (user: PFUser?, error: Error?) in
            if error == nil {
                print("You Logged In")
                if let mainWC = self.view.window?.windowController as? MainWindowController {
                    mainWC.moveToMainMenu()
                }
            } else {
                print("Theres a problem couldn't log in")
            }
        }
        
        /*
        let username = fullNameTextField.stringValue
        let password = passwordTextFIeld.stringValue
        let correctLogin = validLogin(usnm: username, pswd: password)
        
        print(correctLogin)
        
        if correctLogin == true {
        } else {
        }
    */
    }
    
    
    
    
    /*
    func validLogin(usnm : String, pswd : String) -> Bool {
        if pswd == accounts[usnm] {
            return true
            
        } else {
            return false
        }
    }
    */
    
    
}

