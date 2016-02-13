//
//  UITableViewExtension.swift
//  Pods
//
//  Created by Sean G Young on 2/13/16.
//
//

import Foundation


extension UITableView {
    
    /**
     Swift generic version of `UITableView`'s `dequeueReusableCell:withIdentifier:`. This method eliminates the need to cast the resulting cell by utilizing Swift's generics.
     
     :param: identifier The `UITableViewCell`'s reuse identifier.
     
     :returns: A typed version of the dequeued `UITableViewCell` or `nil`.
     */
    func dequeueReusableCellWithIdentifier<T: UITableViewCell>(identifier: String) -> T? {
        return self.dequeueReusableCellWithIdentifier(identifier) as? T
    }
    
    func dequeueReusableCellWithIdentifier<T: UITableViewCell>(identifier: String, forIndexPath indexPath: NSIndexPath) -> T? {
        return self.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as? T
    }
    
    /**
     Swift generic version of UITableView's dequeueReusableHeaderFooterViewWithIdentifier. This method eliminates the need to cast the resulting view by utilizing Swift's generics.
     
     :param: identifier The UITableViewHeaderFooterView's reuse identifier.
     
     :returns: A typed version of the dequeued UITableViewHeaderFooterView or nil.
     */
    func dequeueReusableHeaderFooterViewWithIdentifier<T: UITableViewHeaderFooterView>(identifier: String) -> T? {
        return self.dequeueReusableHeaderFooterViewWithIdentifier(identifier) as? T
    }
}
