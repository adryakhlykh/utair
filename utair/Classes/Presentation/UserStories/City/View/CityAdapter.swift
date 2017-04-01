//
//  CityAdapter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class CityAdapter: NSObject {
    
    // MARK: Constants
    
    fileprivate let cityCell = String(describing: CityTableViewCell.self)
    
    // MARK: Properties
    
    private var tableView: UITableView
    fileprivate var cities: [City]
    var block: CityBlock?
    
    // MARK: Initialization and deinitialization
    
    init(tableView: UITableView, cities: [City]) {
        self.tableView = tableView
        self.cities = cities
        tableView.register(UINib(nibName: cityCell, bundle: nil), forCellReuseIdentifier: cityCell)
    }
}

// MARK: UITableViewDataSource

extension CityAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cityCell, for: indexPath) as! CityTableViewCell
        cell.fill(withCity: cities[indexPath.row])
        return cell
    }
}

// MARK: UITableViewDelegate

extension CityAdapter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        block?(cities[indexPath.row])
    }
}
