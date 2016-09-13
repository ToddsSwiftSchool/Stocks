//
//  StringExtentions.swift
//  Pathological
//
//  Created by Todd Sutter on 4/9/15.
//  Copyright (c) 2015 Todd Sutter. All rights reserved.
//

import Foundation
extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        return substringWithRange(Range(start: startIndex.advancedBy(r.startIndex), end: startIndex.advancedBy(r.endIndex)))
    }
}