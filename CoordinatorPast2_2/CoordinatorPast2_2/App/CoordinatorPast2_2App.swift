//
//  CoordinatorPast2_2App.swift
//  CoordinatorPast2_2
//
//  Created by admin on 20.07.2022.
//

import SwiftUI

@main
struct CoordinatorPast2_2App: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorView(coordinator: Coordinator(viewModel: ContentViewModel()))
        }
    }
}
