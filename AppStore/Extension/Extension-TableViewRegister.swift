//
//  Extension-Register.swift
//  Shiftdays
//
//  Created by Phùng Anh Đài  on 29/8/24.
//

import Foundation
import UIKit

extension UITableView {
    
    func registerNibCell<T: UITableViewCell>(cellType: T.Type, delegateAndDataSource: UIViewController) {
        let nibName = String(describing: cellType)
        let identifier = String(describing: cellType)
        self.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: identifier)
        // Delegate and dataSource
        self.delegate = delegateAndDataSource as? UITableViewDelegate
        self.dataSource = delegateAndDataSource as? UITableViewDataSource
    }
    func hiddenScroll() {
        self.showsVerticalScrollIndicator = false
    }
}
