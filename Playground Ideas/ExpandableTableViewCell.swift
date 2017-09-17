//
//  ExpandableTableViewCell.swift
//  Playground Ideas
//
//  Created by Apple on 15/09/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit

class ExpandableTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var closedView: UIView!
    @IBOutlet weak var openedView: UIView!

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var chapterTableView: UITableView!
    var chapterTableViewController : ChapterTableViewController?
    
    var chapters : [String] {
        get {
            return chapterTableViewController!.chapters
        }
        set {
            chapterTableViewController!.chapters = newValue
            chapterTableView.reloadData()
        }
    }
    
    var actualHeight : CGFloat {
        get {
            return closedView.frame.height + openedView.frame.height
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        if chapterTableViewController == nil {
            chapterTableViewController = ChapterTableViewController(style: .plain)
            chapterTableViewController?.tableView = chapterTableView
            chapterTableView.dataSource = chapterTableViewController
            chapterTableView.delegate = chapterTableViewController
        }
    }
}
