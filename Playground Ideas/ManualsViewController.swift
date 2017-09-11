//
//  ManualsViewController.swift
//  Playground Ideas
//
//  Created by Apple on 07/09/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit

class ManualsViewController: UIViewController {
    let onlineIdentifier   = "OnlineManualsViewController"
    let downloadIdentifier = "DownloadManualsViewController"
    
    var onlineManualsViewController   : UIViewController?
    var downloadManualsViewController : UIViewController?
    var currentViewController         : UIViewController?
    
    @IBOutlet weak var viewsSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewsSegmentedControl.selectedSegmentIndex = 0
        viewsSegmentedControl.sendActions(for: .valueChanged)
    }
    
    // MARK: - IBActions
    /**
     switch to an other view based on the selected segmented control
     
     - parameter sender: the segmented control
     */
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        var targetViewController : UIViewController?
        var identifier           : String
        
        if sender.selectedSegmentIndex == 0 {
            targetViewController = onlineManualsViewController
            identifier           = onlineIdentifier
        } else {
            targetViewController = downloadManualsViewController
            identifier           = downloadIdentifier
        }
        
        if (nil == targetViewController) {
            targetViewController = self.storyboard?.instantiateViewController(withIdentifier: identifier);
        }
        currentViewController?.view.removeFromSuperview()
        self.view.insertSubview((targetViewController?.view)!, at: 0);
        
        currentViewController    = targetViewController;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
