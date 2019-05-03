//
//  ViewController.swift
//  MealMe
//
//  Created by Kalyan Vejalla on 4/7/19.
//  Copyright © 2019 Kalyan Vejalla. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var googleSignInButton: GIDSignInButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        // TODO(developer) Configure the sign-in button look/feel
        // ...
    }
    
    @IBAction func didTapSignOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
    }
    
    
    @IBAction func didTapSignIn(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }
    


}

