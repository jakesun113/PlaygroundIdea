//
//  SwitchViewController.swift
//  Playground Ideas
//
//  Created by Apple on 23/08/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit

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
    @IBAction func switchToDesignsView(_ sender: UIBarButtonItem) {
        switchToView(withIdentifier: "DesignsViewController")
    }
    
    @IBAction func switchToPlansView(_ sender: UIBarButtonItem) {
        switchToView(withIdentifier: "PlansViewController")
    }

    @IBAction func switchToManualsView(_ sender: UIBarButtonItem) {
        switchToView(withIdentifier: "ManualsViewController")
    }
    
    @IBAction func switchToProjectsView(_ sender: UIBarButtonItem) {
        
    }
    //MARK: -

    func switchToView (withIdentifier identifier: String) {
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






















