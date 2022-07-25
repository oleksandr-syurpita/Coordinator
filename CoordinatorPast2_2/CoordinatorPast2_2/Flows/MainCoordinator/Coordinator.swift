//
//  Coordinator.swift
//  CoordinatorPast2_2
//
//  Created by admin on 20.07.2022.
//

import Foundation

class Coordinator: ObservableObject {

    enum Route {
        case redScreen(redCoordinator: RedCoordinator)
    }
    
    @Published var route: Route?
    
    var viewModel: ContentViewModel
    init(viewModel: ContentViewModel){
        self.viewModel = viewModel
        viewModel.onResult = {[weak self] result in
            switch result {
                
            case .navigationNext:
                self?.navigationBackRed()
            }
            
        }
    }
    func navigationBackRed() {
        let coordinator = RedCoordinator(
            redViewModel: RedViewModel())
        coordinator.onResult = { [weak self] result in
            switch result {
                
            case .navigationBack:
                self?.route = nil
            }
        }
        route = .redScreen(redCoordinator: coordinator)
    }
}
