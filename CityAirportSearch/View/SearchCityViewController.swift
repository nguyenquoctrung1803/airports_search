//
//  ViewController.swift
//  CityAirportSearch
//
//  Created by Trung Nguyễn Quốc on 22/07/2023.
//

import UIKit
import RxSwift


class SearchCityViewController: UIViewController, Storyboardable {

    //MARK: - Outlet
    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: SearchCityViewPresentable!
    var viewModelBuilder: SearchCityViewPresentable.ViewModelBuilder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel = viewModelBuilder((searchText: searchTextField.rx.text.orEmpty.asDriver(), ()
        ))
        title = "Aiports"
    }


}

