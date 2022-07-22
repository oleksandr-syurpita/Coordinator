//
//  RedCoordinatorView.swift
//  CoordinatorPast2_2
//
//  Created by admin on 21.07.2022.
//

import SwiftUI
import SwiftUINavigation
struct RedCoordinatorView: View {
    @ObservedObject var redCoordinator:RedCoordinator
    var body: some View {
        NavigationView{
            ZStack {
                RedView(viewModel: redCoordinator.redViewModel)
                NavigationLink(
                    unwrapping: $redCoordinator.route,
                    case: /RedCoordinator.Route.yellowScreen,
                    destination: {(redCoordinator:Binding<YellowCoordinator>)in
                        YellowCoordinatorView(coordinator: redCoordinator.wrappedValue) .navigationBarHidden(true)
                    }, onNavigate: { _ in}) {}
            }

        }
        
    }
}

