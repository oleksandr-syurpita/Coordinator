//
//  ContentView.swift
//  CoordinatorPast2_2
//
//  Created by admin on 20.07.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel
    var body: some View {
        ZStack {
            VStack {
                Button(action: {viewModel.onTapButton()}) {
                    Text("Next")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
