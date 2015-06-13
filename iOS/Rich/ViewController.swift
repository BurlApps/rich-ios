//
//  ViewController.swift
//  Rich
//
//  Created by Brian Vallelunga on 6/13/15.
//  Copyright (c) 2015 Brian Vallelunga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Instance Variables
    var shimmerView: FBShimmeringView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var background = UIImageView(frame: self.view.frame)
        background.image = UIImage(named: "Background")
        background.contentMode = UIViewContentMode.ScaleAspectFill
        self.view.addSubview(background)
        
        var label = UILabel(frame: self.view.frame)
        label.textAlignment = NSTextAlignment.Center
        label.text = "R$CH"
        label.textColor = UIColor(red:0.31, green:0.26, blue:0.12, alpha:1)
        label.font = UIFont(name: "AmericanTypewriter-Bold", size: 100)
        label.shadowOffset = CGSizeMake(0, 4)
        label.shadowColor = UIColor(red:0.46, green:0.37, blue:0.15, alpha:1)
        
        self.shimmerView = FBShimmeringView(frame: self.view.frame)
        self.shimmerView.contentView = label
        self.shimmerView.shimmering = true
        self.view.addSubview(self.shimmerView)
    }
}

