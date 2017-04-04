//
//  WeatherViewController.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class WeatherViewController: RouterViewController, WeatherViewInput {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var thereImageView: UIImageView!
    @IBOutlet weak var thereLabel: UILabel!
    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var thereView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var leftNavigationBarLabel: NavigationBarTitleLabel!
    @IBOutlet weak var navigationBarImageView: UIImageView!
    @IBOutlet weak var rightNavigationBarLabel: NavigationBarTitleLabel!
    
    // MARK: IBActions
    
    @IBAction func tapOnThereView(_ sender: Any) {
        backLabel.textColor = Color.gray
        backImageView.tintColor = Color.gray
        thereLabel.textColor = Color.blue
        thereImageView.tintColor = Color.blue
        output.didTapOnSegment(withDirection: .to)
    }
   
    @IBAction func tapOnBackView(_ sender: Any) {
        thereLabel.textColor = Color.gray
        thereImageView.tintColor = Color.gray
        backLabel.textColor = Color.blue
        backImageView.tintColor = Color.blue
        output.didTapOnSegment(withDirection: .from)
    }
    
	// MARK: Properties
	
    var output: WeatherViewOutput!
    private var adapter: WeatherAdapter?

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output.setupView()
        initStyle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = Color.blue
        navigationController?.navigationBar.barStyle = .default
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barStyle = .black
    }
    
    // MARK: WeatherViewInput

    func showTitle(withFromCityTitle fromCityTitle: String, toCityTitle: String, imageName: String) {
        navigationBarImageView.image = UIImage(named: imageName)
        leftNavigationBarLabel.text = fromCityTitle
        rightNavigationBarLabel.text = toCityTitle
    }
    
    func setupView(withWeather weather: [SortedWeather]) {
        let adapter = WeatherAdapter(tableView: tableView, weather: weather)
        tableView.dataSource = adapter
        tableView.delegate = adapter
        self.adapter = adapter
        tableView.reloadData()
    }
    
    func setupView(withThereTitle thereTitle: String, backTitle: String, imageName: String) {
        thereLabel.text = thereTitle
        backLabel.text = backTitle
        setupInitialStyle(withImageName: imageName)
    }
    
    // MARK: Private helpers
    
    private func setupInitialStyle(withImageName imageName: String) {
        let thereImage = UIImage(named: imageName)
        if let backImage = thereImage?.cgImage {
            let image = UIImage(cgImage: backImage, scale: 1.0, orientation: .upMirrored)
            backImageView.image  = image.withRenderingMode(.alwaysTemplate)
            backImageView.tintColor = Color.gray
        }
        thereImageView.image = thereImage
        thereLabel.textColor = Color.blue
        backLabel.textColor = Color.gray
    }
    
    private func initStyle() {
        spinner?.color = Color.blue
        let height = CGFloat(1)
        let separator = UIView(frame: .zero)
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.backgroundColor = Color.gray
        thereView.addSubview(separator)
        NSLayoutConstraint.activate([
            separator.topAnchor.constraint(equalTo: thereView.topAnchor),
            separator.bottomAnchor.constraint(equalTo: thereView.bottomAnchor),
            separator.trailingAnchor.constraint(equalTo: thereView.trailingAnchor),
            separator.widthAnchor.constraint(equalToConstant: height)
        ])
    }
}
