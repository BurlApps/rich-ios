//
//  ViewController.swift
//  Rich
//
//  Created by Brian Vallelunga on 6/13/15.
//  Copyright (c) 2015 Brian Vallelunga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var shimmerView: FBShimmeringView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var background = UIImageView(frame: self.view.frame)
        background.image = UIImage(named: "Background")
        background.contentMode = UIViewContentMode.ScaleAspectFill
        self.view.insertSubview(background, atIndex: 0)
        
        self.label.textAlignment = NSTextAlignment.Center
        self.label.textColor = UIColor(red:0.31, green:0.26, blue:0.12, alpha:1)
        self.label.shadowOffset = CGSizeMake(0, 4)
        self.label.shadowColor = UIColor(red:0.46, green:0.37, blue:0.15, alpha:1)
        
        self.shimmerView.contentView = label
        self.shimmerView.shimmering = true
    }
}

