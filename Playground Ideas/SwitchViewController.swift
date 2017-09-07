//
//  SwitchViewController.swift
//  Playground Ideas
//
//  Created by Apple on 23/08/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit
import PlaygroundIdeasAPI

class SwitchViewController : UIViewController {

    var designViewController      : DesignsViewController?
    var plansViewController       : PlansViewController?
    var manualsViewController     : ManualsViewController?
    var currentViewController     : UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        designViewController  = self.storyboard?.instantiateViewController(withIdentifier : "DesignsViewController") as? DesignsViewController;
        self.view.insertSubview((designViewController?.view)!, at: 0);
        
        currentViewController = designViewController;
    }
    
    // MARK: - IBActions
    /**
     switch to one of the below views by clicking view switch buttons:
     [designs view,   plans view, Manuals view, projects view]
     
     - parameter sender: the view switch button
     */
    @IBAction func switchToDesignsView(_ sender: UIBarButtonItem) {
        switchToViewController(withIdentifier: "DesignsViewController")
    }
    
    @IBAction func switchToPlansView(_ sender: UIBarButtonItem) {
        switchToViewController(withIdentifier: "PlansViewController")
    }

    @IBAction func switchToManualsView(_ sender: UIBarButtonItem) {
        switchToViewController(withIdentifier: "ManualsViewController")
    }
    
    @IBAction func switchToProjectsView(_ sender: UIBarButtonItem) {
        
    }
    
    /**
     logout from the server, and go back to the login view
     
     - parameter sender: the logout button
     */
    @IBAction func logout(_ sender: Any) {
        let indicator = UIActivityIndicatorView()
        showActivity(indicator: indicator, block: true)
        
        PlaygroundIdeas.Authentication.logout(finished: {
            (data, response, error) in
            
            DispatchQueue.main.async {
                let handler = HTTPResponseHandler()
                handler.handleHTTPResponse(data: data, response: response, error: error, successAction: {
                    let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
                    self.present(loginViewController!, animated: true, completion: nil)
                })
                self.dismissActivity(indicator: indicator)
            }
        })
    }
    
    //MARK: -
    /**
     switch to one of the below views by passing the view identifiter:
     [designs view,   plans view, Manuals view, projects view]
     
     - parameter identifier: the identifier of the destination view controller
     */
    func switchToViewController (withIdentifier identifier: String) {
        var targetViewController : UIViewController?
        
        switch identifier {
        case "DesignsViewController" :
            targetViewController = designViewController
        case "PlansViewController"   :
            targetViewController = plansViewController
        case "ManualsViewController" :
            targetViewController = manualsViewController
        default                      :
            targetViewController = nil
        }
        
        if (currentViewController   != targetViewController) {
            if (nil == targetViewController) {
                targetViewController =  self.storyboard?.instantiateViewController(withIdentifier: identifier);
            }
            currentViewController?.view.removeFromSuperview()
            self.view.insertSubview((targetViewController?.view)!, at: 0);
            
            currentViewController = targetViewController;
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        if currentViewController != designViewController {
            designViewController = nil
        }
        if currentViewController != plansViewController {
            plansViewController = nil
        }
        if currentViewController != manualsViewController {
            manualsViewController = nil
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}






















