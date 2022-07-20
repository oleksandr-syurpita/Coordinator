//
//  YellowCoordinator.swift
//  SwiftUINavigationExample
//
//  Created by admin on 19.07.2022.
//

import Foundation

class YellowCoordinator: ObservableObject {
    
    enum Route {
        case  navigationBack
    }
    var route: Route?
    var viewModel: YellowViewModel
    
    init(viewModel: YellowViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = {[weak self] result in
            switch result {
            case .onTapPageBack:
                self?.route = nil
            }
        }
    }
}
