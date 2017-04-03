//
//  WeatherAdapter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class WeatherAdapter: NSObject {
    
    // MARK: Constants
    
    fileprivate let weatherCell = String(describing: WeatherTableViewCell.self)
    fileprivate let sectionsCount = 5
    fileprivate let rowsCount = 1
    fileprivate let day = "EEEE"
    fileprivate let headerHeight = CGFloat(24)
    fileprivate let rowHeight = CGFloat(65)
    
    // MARK: Properties
    
    private var tableView: UITableView
    fileprivate var weather: [SortedWeather]
    
    // MARK: Initialization and deinitialization
    
    init(tableView: UITableView, weather: [SortedWeather]) {
        self.tableView = tableView
        self.weather = weather
        tableView.register(UINib(nibName: weatherCell, bundle: nil), forCellReuseIdentifier: weatherCell)
    }
}

// MARK: UITableViewDataSource

extension WeatherAdapter: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: weatherCell, for: indexPath) as! WeatherTableViewCell
        cell.fill(withWeather: weather[indexPath.section].weather)
        return cell
    }
}

// MARK: UITableViewDelegate

extension WeatherAdapter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return headerHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: headerHeight))
        view.backgroundColor = .white
        let label = UILabel(frame: .zero)
        let padding = CGFloat(24)
        label.font = Font.regular11
        label.textColor = Color.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = weather[section].dayName.uppercased()
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            label.heightAnchor.constraint(equalTo: view.heightAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: padding),
            label.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rowHeight
    }
}
