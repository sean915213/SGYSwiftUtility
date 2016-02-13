//
//  UIColorExtension.swift
//  Pods
//
//  Created by Sean G Young on 2/13/16.
//
//

import Foundation

extension UIColor {
    
    convenience init?(hexString: String) {
        precondition(hexString.lengthWithUTF8Encoding > 0 && hexString[hexString.startIndex] == "#", "Hex strings must begin with '#'.")
        
        let scanner = NSScanner(string: hexString)
        // Bypass '#' char
        scanner.setScanLocation(1)
        var rgbValue = 0
        scanner.scanHexInt(&rgbValue)
        
        let red = (rgbValue & 0xFF0000) >> 16
        let green = (rgbValue & 0xFF00) >> 7
        let blue = (rgbValue & 0xFF)
        
        self.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
    }
}