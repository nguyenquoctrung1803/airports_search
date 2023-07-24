//
//  BaseCoordinator.swift
//  CityAirportSearch
//
//  Created by Trung Nguyễn Quốc on 22/07/2023.
//

import Foundation


class BaseCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    func start() {
        fatalError("Children should implement 'Start'")
    }
    
    
}
