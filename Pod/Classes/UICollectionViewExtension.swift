//
//  UICollectionViewExtension.swift
//  Pods
//
//  Created by Sean G Young on 2/13/16.
//
//

import Foundation

extension UICollectionView {
    
    func dequeueReusableCellWithReuseIdentifier<T: UICollectionViewCell>(identifier: String, forIndexPath indexPath: NSIndexPath) -> T {
        return dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath) as! T
    }
    
    func dequeueReusableSupplementaryViewOfKind<T: UICollectionReusableView>(elementKind: String, withReuseIdentifier reuseIdentifier: String, forIndexPath indexPath: NSIndexPath) -> T {
        return dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: reuseIdentifier, forIndexPath: indexPath) as! T
    }
}