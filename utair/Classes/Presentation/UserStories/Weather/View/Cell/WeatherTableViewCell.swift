//
//  WeatherTableViewCell.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets

    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Constants
    
    fileprivate let collectionViewCell = String(describing: WeatherCollectionViewCell.self)
    
    // MARK: Properties
    
    fileprivate var weather: [Weather]?
    
    // MARK: Internal helpers
    
    func fill(withWeather weather: [Weather]) {
        self.weather = weather
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: collectionViewCell, bundle: nil), forCellWithReuseIdentifier: collectionViewCell)
        collectionView.reloadData()
    }
}

// MARK: UICollectionViewDataSource

extension WeatherTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return weather?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewCell, for: indexPath) as! WeatherCollectionViewCell
        
        if let weather = weather { cell.fill(withWeather: weather[indexPath.row]) }
        return cell
    }
}
