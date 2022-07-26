//
//  RedCoordinator.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import Foundation
import SwiftUI

class RedCoordinator: ObservableObject {

    enum Result {
        case navigateBack
    }

    var onResult: ((Result) -> Void)?

    enum Route {
        case yellowScreen(viewModel: YellowViewModel)
    }

    @Published var route: Route? // nil - red screen

    var viewModel: RedViewModel

    init(viewModel: RedViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
            case .navigateBack:
                withAnimation {
                    self?.onResult?(.navigateBack)
                }
            case .shouldOpenYellowScreen:
                // TODO: implement navigation logic to the Yellow screen
                let viewModel = YellowViewModel()
                viewModel.onResult = {[weak self] result in
                    switch result {
                    case .onTapPageBack:
                        self?.route = nil
                    }
                }
                self?.route = .yellowScreen(viewModel: viewModel)
            }
        }
    }
}
