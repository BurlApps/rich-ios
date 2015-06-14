//
//  InterfaceController.swift
//  RICH WatchKit Extension
//
//  Created by Brian Vallelunga on 6/13/15.
//  Copyright (c) 2015 Brian Vallelunga. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var shimmer: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        self.shimmer.setImageNamed("shimmerAffect-")
        self.shimmer.startAnimatingWithImagesInRange(NSMakeRange(0, 131), duration: 2.5, repeatCount: 0)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
