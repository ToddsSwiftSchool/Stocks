//
//  SKColorMoreExt.swift
//  TimeSense
//
//  Created by Todd Sutter on 6/5/15.
//  Copyright (c) 2015 Todd Sutter. All rights reserved.
//

import UIKit
import SpriteKit

extension String {
    func hexComponents() -> [String?] {
        let code = self
        let offset = code.hasPrefix("#") ? 1 : 0
        let start: String.Index = code.startIndex
        return [
            code[start.advancedBy(offset)..<start.advancedBy(offset + 2)],
            code[start.advancedBy(offset + 2)..<start.advancedBy(offset + 4)],
            code[start.advancedBy(offset + 4)..<start.advancedBy(offset + 6)]
        ]
    }
}

extension SKColor {
    class func fromHexCode(code: String, alpha: Double = 1.0) -> SKColor {
        let rgbValues = code.hexComponents().map {
            (component: String?) -> CGFloat in
            if let hex = component {
                var rgb: CUnsignedInt = 0
                if NSScanner(string: hex).scanHexInt(&rgb) {
                    return CGFloat(rgb) / 255.0
                }
            }
            return 0.0
        }
        return SKColor(red: rgbValues[0], green: rgbValues[1], blue: rgbValues[2], alpha: 1.0)
    }
}