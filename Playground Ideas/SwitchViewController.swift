//
//  SwitchViewController.swift
//  Playground Ideas
//
//  Created by Apple on 23/08/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    var designViewController : DesignsViewController?
    var plansViewController : PlansViewController?
    var manualsViewController : ManualsViewController?
    
    var viewControllerCollections : Array<UIViewController?>?
    
    var currentViewController : UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewControllerCollections = []
        viewControllerCollections?.append(designViewController)
        viewControllerCollections?.append(plansViewController)
        viewControllerCollections?.append(manualsViewController)
        
        self.designViewController = self.storyboard?.instantiateViewController(withIdentifier: "DesignsViewController") as? DesignsViewController;
        self.view.insertSubview((self.designViewController?.view)!, at: 0);
        self.currentViewController = self.designViewController;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        for index in 0...self.viewControllerCollections!.count {
            if self.viewControllerCollections![index] != self.currentViewController {
                self.viewControllerCollections![index] = nil
            }
        }
    }
    
    @IBAction func switchToDesignsView(_ sender: UIBarButtonItem) {
        if (self.currentViewController != self.designViewController) {
            if (nil == self.designViewController) {
                self.designViewController = self.storyboard?.instantiateViewController(withIdentifier: "DesignsViewController") as? DesignsViewController;
            }
            self.currentViewController?.view.removeFromSuperview()
            self.view.insertSubview((self.designViewController?.view)!, at: 0);
            
            self.currentViewController = self.designViewController;
        }
    }
    
    @IBAction func switchToPlansView(_ sender: UIBarButtonItem) {
        if (self.currentViewController != self.plansViewController) {
            if (nil == self.plansViewController) {
                self.plansViewController = self.storyboard?.instantiateViewController(withIdentifier: "PlansViewController") as? PlansViewController;
            }
            self.currentViewController?.view.removeFromSuperview()
            self.view.insertSubview((self.plansViewController?.view)!, at: 0);
            
            self.currentViewController = self.plansViewController;
        }
    }

    @IBAction func switchToManualsView(_ sender: UIBarButtonItem) {
        if (self.currentViewController != self.manualsViewController) {
            if (nil == self.manualsViewController) {
                self.manualsViewController = self.storyboard?.instantiateViewController(withIdentifier: "ManualsViewController") as? ManualsViewController;
            }
            self.currentViewController?.view.removeFromSuperview()
            self.view.insertSubview((self.manualsViewController?.view)!, at: 0);
            
            self.currentViewController = self.manualsViewController;
        }
    }
    
    @IBAction func switchToProjectsView(_ sender: UIBarButtonItem) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
