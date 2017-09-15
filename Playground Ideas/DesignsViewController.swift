//
//  DesignsViewController.swift
//  Playground Ideas
//
//  Created by Apple on 23/08/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit

public let SCREEN_WIDTH=UIScreen.main.bounds.size.width
public let SCREEN_HEIGHT=UIScreen.main.bounds.size.height


var datadic:Dictionary<String,String>=["wall1":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall2":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall3":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall4":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall5":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall6":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall7":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall8":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall9":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall10":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall11":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall12":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall13":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall14":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall15":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall16":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",
                                       "wall17":"http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg",];


class DesignsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var designTable:UITableView?

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(segmentedControlChanged), for: UIControlEvents.valueChanged)
        
        NSLog("sunshibo")
        print(SCREEN_HEIGHT)
        print(SCREEN_WIDTH)
        
        
        self.loadTableView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(toDetail), name: NSNotification.Name(rawValue:"detailNotification"), object: nil)
    }
    
    func toDetail(notification:NSNotification) {
        let detailController = DesignDetailViewController()
        detailController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailController, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadTableView() {
        if ((designTable) != nil) {
            designTable?.reloadData()
        }
        else {
            designTable = UITableView(frame: CGRect(x: 0,y: 0,width: SCREEN_WIDTH,height: SCREEN_HEIGHT), style: .plain)
            designTable!.delegate = self
            designTable!.dataSource = self
            self.view.addSubview(designTable!)
            designTable?.rowHeight = SCREEN_WIDTH/15*8
        }
    }
    
    func segmentedControlChanged(sender:UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            NSLog("第一页")
        case 1:
            NSLog("第二页")
        default:
            NSLog("默认")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if datadic.count%2 == 1 {
            return datadic.count/2 + 1
        }
        else {
            return datadic.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "mainCell"
        
        var cell = DesignTableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: identifier)
        
        cell = DesignTableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: identifier)
        
        cell.setData("http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg", setImage2: "http://www.earthscapeplay.com/wp-content/uploads/2015/06/Log_tower_slide_playground-1080x675.jpg");
        
        return cell;
    }
   
}
