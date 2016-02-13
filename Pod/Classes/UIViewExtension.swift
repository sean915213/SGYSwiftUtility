//
//  UIViewExtension.swift
//  Pods
//
//  Created by Sean G Young on 2/13/16.
//
//

import Foundation

extension UIView {
    
    convenience init(translatesAutoresizingMask: Bool) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMask
    }
    
    func addSubviews(views: [UIView]) {
        for view in views { addSubview(view) }
    }
}