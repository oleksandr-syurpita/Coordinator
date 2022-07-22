//
//  YellowCoordinator.swift
//  CoordinatorPast2_2
//
//  Created by admin on 21.07.2022.
//

import Foundation
class YellowCoordinator:ObservableObject {
    
    enum Result {
        case navigationBack
    }
    enum Route {
    }
    var onResult:((Result) -> Void)?
    var route:Route?
    
    var yellowView: YellowViewModel
    
    init(yellowView:YellowViewModel) {
        self.yellowView = yellowView
        yellowView.onResult = { [weak self] result in
            switch result {
                
            case .navigationBackYellow:
                self?.onResult?(.navigationBack)
            }
            
        }
    }
}
