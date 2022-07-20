//
//  Yellow.swift
//  SwiftUINavigationExample
//
//  Created by admin on 19.07.2022.
//

import SwiftUI

struct YellowView: View {
    @ObservedObject var viewModel: YellowViewModel
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.75).ignoresSafeArea()
            VStack {
                Button {viewModel.onTapButtonAction()} label: {
                    Text("⬅️ Navigate Back")
                        .padding()
                        .accentColor(.white)
                }
            }
        }
    }
}
struct Yellow_Previews: PreviewProvider {
    static var previews: some View {
        YellowView(viewModel: .init())
    }
}
