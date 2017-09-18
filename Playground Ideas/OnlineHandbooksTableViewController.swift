//
//  OnlineHandbooksTableViewController.swift
//  Playground Ideas
//
//  Created by Apple on 09/09/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit
import ExpandableCell

class OnlineHandbooksTableViewController: UITableViewController {
    
    var expandedData = [false,false,false,false,false]
    var rowHeightData : [CGFloat] = Array(repeating: 50.0, count: 5)
    
    var books = ["starter_kit","safety_manual","playground_builders_handbook"]
    var chapters = ["starter_kit":["chapter1","chapter2","chapter3","chapter4","chapter5"],
                    "safety_manual":["chapter1","chapter2","chapter3","chapter4","chapter5"],
                    "playground_builders_handbook":["chapter1","chapter2","chapter3","chapter4","chapter5"],
                 ]
    
    var urls : [URL] = []
    
    var isInitiated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !isInitiated {
            for book in books {
                if let pdf = Bundle.main.url(forResource: book, withExtension: "pdf", subdirectory: nil, localization: nil)  {
                    urls.append(pdf)
//                    let req = URLRequest(url: pdf)
//                    let webView = UIWebView()
//                    webView.loadRequest(req)
                }
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let contactDetailVC = segue.destinationViewController as? ContactDetailViewController, segue.identifier == "contactDetailSegue",
//            let selectedIndex = collectionView.indexPathsForSelectedItems()?.first {
//            
//            contactDetailVC.contact = contacts[selectedIndex.row]
//        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    var cells = [0:false,1:false,2:false]
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rowHeightData[indexPath.row]
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpandableCell", for: indexPath) as! ExpandableTableViewCell
        
        // Configure the cell...
        cell.titleLabel.text = books[indexPath.row]
        cell.chapters = chapters[books[indexPath.row]]!
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ExpandableTableViewCell
        tableView.deselectRow(at: indexPath, animated: true)
        if expandedData[indexPath.row] {
            expandedData[indexPath.row] = false
            rowHeightData[indexPath.row] = 50
        }else {
            expandedData[indexPath.row] = true
            rowHeightData[indexPath.row] = cell.actualHeight
        }
        tableView.beginUpdates()
        tableView.endUpdates()
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
