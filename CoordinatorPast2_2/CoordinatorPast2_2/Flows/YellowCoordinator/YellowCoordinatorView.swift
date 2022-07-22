//
//  YellowCoordinatorView.swift
//  CoordinatorPast2_2
//
//  Created by admin on 21.07.2022.
//

import SwiftUI

struct YellowCoordinatorView: View {
    @ObservedObject var coordinator:YellowCoordinator
    var body: some View {
        NavigationView {
            YellowView(viewModel: coordinator.yellowView)
        }
        
    }
}

