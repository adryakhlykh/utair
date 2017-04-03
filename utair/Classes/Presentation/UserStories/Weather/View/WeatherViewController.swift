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
    var titleView: NavigationBarTitleView?
    private var adapter: WeatherAdapter?

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output.setupView()
        initStyle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barStyle = .default
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationItem.titleView?.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.barStyle = .black
    }
    
    // MARK: WeatherViewInput

    func showTitle(withFromCityTitle fromCityTitle: String, toCityTitle: String, imageName: String) {
        titleView?.navigationTitleImageView.image = UIImage(named: imageName)
        titleView?.leftNavigationTitleLabel.text = fromCityTitle
        titleView?.rightNavigationTitleLabel.text = toCityTitle
        navigationItem.titleView = titleView
        navigationItem.titleView?.isHidden = true
        if let navigationView = navigationItem.titleView, let titleView = titleView {
            NSLayoutConstraint.activate([
                titleView.topAnchor.constraint(equalTo: navigationView.topAnchor),
                titleView.bottomAnchor.constraint(equalTo: navigationView.bottomAnchor),
                titleView.heightAnchor.constraint(equalTo: navigationView.heightAnchor),
                titleView.leadingAnchor.constraint(equalTo: navigationView.leadingAnchor),
                titleView.trailingAnchor.constraint(equalTo: navigationView.trailingAnchor),
                titleView.widthAnchor.constraint(equalTo: navigationView.widthAnchor)
            ])
        }
    }
    
    func setupView(withWeather weather: [SortedWeather], thereTitle: String, backTitle: String) {
        thereLabel.text = thereTitle
        backLabel.text = backTitle
        let adapter = WeatherAdapter(tableView: tableView, weather: weather)
        tableView.dataSource = adapter
        tableView.delegate = adapter
        self.adapter = adapter
        tableView.reloadData()
    }
    
    // MARK: Private helpers
    
    private func initStyle() {
        initSeparator()
        setupInitialStyle()
    }
    
    private func setupInitialStyle() {
        let thereImage = UIImage(named: "icPlaneDirection")
        if let backImage = thereImage?.cgImage {
            let image = UIImage(cgImage: backImage, scale: 1.0, orientation: .upMirrored)
            backImageView.image  = image.withRenderingMode(.alwaysTemplate)
            backImageView.tintColor = Color.gray
        }
        thereImageView.image = thereImage
        thereLabel.textColor = Color.blue
        backLabel.textColor = Color.gray
    }
    
    private func initSeparator() {
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
