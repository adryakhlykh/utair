//
//  FlightAdapter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightAdapter: NSObject {
    
    // MARK: Constants
    
    fileprivate let cityTableViewCell = String(describing: FlightCityTableViewCell.self)
    fileprivate let dateTableViewCell = String(describing: FlightDateTableViewCell.self)
    fileprivate let peopleTableViewCell = String(describing: FlightPeopleTableViewCell.self)
    fileprivate let cellsCount = 3
    fileprivate let iphone4SScreenHeight = CGFloat(480)
    
    // MARK: Properties
    
    private var tableView: UITableView
    
    // MARK: Initialization and deinitialization
    
    init(tableView: UITableView) {
        self.tableView = tableView
        tableView.register(UINib(nibName: cityTableViewCell, bundle: nil), forCellReuseIdentifier: cityTableViewCell)
        tableView.register(UINib(nibName: dateTableViewCell, bundle: nil), forCellReuseIdentifier: dateTableViewCell)
        tableView.register(UINib(nibName: peopleTableViewCell, bundle: nil), forCellReuseIdentifier: peopleTableViewCell)
    }
}

// MARK: UITableViewDataSource

extension FlightAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: cityTableViewCell, for: indexPath) as! FlightCityTableViewCell
                cell.fill(withIndex: indexPath.row)
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: dateTableViewCell, for: indexPath) as! FlightDateTableViewCell
                cell.keyboardShowBlock = { [weak self] height in
                    if tableView.frame.height <= self?.iphone4SScreenHeight ?? 0 {
                        tableView.setContentOffset(CGPoint(x: 0, y: height / 2), animated: true)
                    }
                }
                cell.keyboardHideBlock = { [weak self] in
                    if tableView.frame.height <= self?.iphone4SScreenHeight ?? 0 {
                        tableView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
                    }
                }
                return cell
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: peopleTableViewCell, for: indexPath) as! FlightPeopleTableViewCell
                return cell
            default:
                return UITableViewCell()
        }
    }
}

// MARK: UITableViewDelegate

extension FlightAdapter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
