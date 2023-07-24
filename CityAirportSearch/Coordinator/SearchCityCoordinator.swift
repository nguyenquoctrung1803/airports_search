//
//  SearchCityCoordinator.swift
//  CityAirportSearch
//
//  Created by Trung Nguyễn Quốc on 22/07/2023.
//

import Foundation
import UIKit

class SearchCityCoordinator: BaseCoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        
        let view = SearchCityViewController.instantiate()
        view.viewModelBuilder = {
            SearchCityViewModel(input: $0)
        }
        navigationController.pushViewController(view, animated: true)
        
    }
}

 
