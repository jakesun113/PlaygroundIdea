//
//  Bulletin+UIViewController.swift
//  Playground Ideas
//
//  Created by Apple on 31/08/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import UIKit

extension UIViewController {
    /**
     present a bulletin board to show more information
     */
    public func showBulletinBoard() {
        let alert = UIAlertController(title          : "Bulletin Board",
                                      message        : "Under Construction!\nWe will implement this function soon.",
                                      preferredStyle : .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
