//
//  LoginViewController.swift
//  Playground Ideas
//
//  Created by Apple on 23/08/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit
import PlaygroundIdeasAPI

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton  : UIButton!
    @IBOutlet weak var signupButton : UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius  = 5
        loginButton.clipsToBounds       = true
        
        signupButton.layer.cornerRadius = 5
        signupButton.clipsToBounds      = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBActions
    
    @IBAction func login(_ sender: Any) {
        PlaygroundIdeas.Authentication.login(username: "tom", password: "123")
        performSegue(withIdentifier: "LoginSuccessSegue", sender: nil)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        showBulletinBoard()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
