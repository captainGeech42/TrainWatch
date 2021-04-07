//
//  LineColors.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

import UIKit

// based on https://github.com/NormanBitSolace/BlackLabsColor/blob/master/Sources/BlackLabsColor/BlackLabsColor.swift
extension UIColor {
    // this is used for the line colors in the UI
    // won't work properly if a new line is introduced
    convenience init(name: String) {
        let mapping: [String: (Double, Double, Double)] = [ // rgb
            "Red": (205, 58, 53),
            "Yellow": (242, 214, 72),
            "Green": (77, 165, 88),
            "Orange": (230, 155, 56),
            "Silver": (160, 163, 162),
            "Blue": (54, 115, 188)
        ]
                
        if let (r, g, b) = mapping[name] {
            self.init(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: CGFloat(1.0))
        } else {
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
        }
    }
}
