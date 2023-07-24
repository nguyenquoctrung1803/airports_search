//
//  AppCoordinator.swift
//  CityAirportSearch
//
//  Created by Trung Nguyễn Quốc on 24/07/2023.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {
    private let window: UIWindow
    
    private let navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        
        let navigationBar = navigationController.navigationBar
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.barTintColor = UIColor(red: 117.0/255.0, green: 194.0/255.0, blue: 246.0/255.0, alpha: 1.0)
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Avenir-Medium", size: 26.0)!, NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationBar.isTranslucent = false
        
        return navigationController
    }()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        
        let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
        self.add(coordinator: searchCityCoordinator)
        searchCityCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

