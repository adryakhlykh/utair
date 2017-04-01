//
//  TableView.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class TableView: UITableView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        separatorStyle = .none
        rowHeight = UITableViewAutomaticDimension
        estimatedRowHeight = 200
    }
}
