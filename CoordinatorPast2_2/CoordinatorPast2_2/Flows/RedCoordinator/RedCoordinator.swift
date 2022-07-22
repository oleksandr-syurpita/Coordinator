//
//  RedCoordinator.swift
//  CoordinatorPast2_2
//
//  Created by admin on 21.07.2022.
//

import Foundation
import SwiftUI

class RedCoordinator: ObservableObject {
    enum Result {
        case navigationBack
    }
    
    enum Route {
        case backScreen
        case yellowScreen(viewModel:YellowCoordinator)
    }
    
    @Published var route: Route?
    
    var onResult:((Result) -> Void)?

    var redViewModel: RedViewModel
    
    init(redViewModel: RedViewModel) {
        self.redViewModel = redViewModel
        redViewModel.onResult = { [weak self] result in
            switch result {
            case .navigationBack:
                withAnimation {
                    self?.onResult?(.navigationBack)
                }
            case .navigationYellow:
                self?.yellowScreen()
            }
            
        }
    }
    
    func yellowScreen() {
        let yellowcoordinator = YellowCoordinator(yellowView: YellowViewModel())
        yellowcoordinator.onResult = {[weak self] result in
            switch result {
           
            case .navigationBack:
                self?.route = nil
            }
        }
        route = .yellowScreen(viewModel: yellowcoordinator)
    }
}
