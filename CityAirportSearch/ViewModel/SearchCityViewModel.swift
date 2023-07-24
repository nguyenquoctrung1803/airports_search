//
//  SearchCityViewModel.swift
//  CityAirportSearch
//
//  Created by Trung Nguyễn Quốc on 22/07/2023.
//

import Foundation
import RxCocoa
import RxSwift


protocol SearchCityViewPresentable {
    typealias Input = (
        searchText: Driver<String>, ()
    )
    typealias Output = ()
    
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input: SearchCityViewPresentable.Input { get }
    var output: SearchCityViewPresentable.Output { get }
}


class SearchCityViewModel: SearchCityViewPresentable {
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    
    init(input: SearchCityViewPresentable.Input) {
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
    }
    
    
}


private extension SearchCityViewModel {
    static func output(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output{
        return ()
    }
}
