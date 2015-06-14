//
//  ViewController.swift
//  RICH Record
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
        
        self.label.textAlignment = NSTextAlignment.Center
        self.label.textColor = UIColor(red:0.31, green:0.26, blue:0.12, alpha:1)
        self.label.shadowOffset = CGSizeMake(0, 4)
        self.label.shadowColor = UIColor(red:0.46, green:0.37, blue:0.15, alpha:1)
        
        self.shimmerView.contentView = label
        self.shimmerView.shimmering = true
        
        self.shimmerView.snapshotsWithDuration(2.3, imageName: "shimmerAffect")
    }
}

