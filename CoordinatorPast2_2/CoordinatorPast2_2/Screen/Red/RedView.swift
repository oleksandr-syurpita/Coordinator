//
//  RedView.swift
//  CoordinatorPast2_2
//
//  Created by admin on 20.07.2022.
//

import SwiftUI

struct RedView: View {
    @ObservedObject var viewModel: RedViewModel
    var body: some View {
        ZStack {
            VStack {
                Button(action: {viewModel.onTapButtonBack()}) {
                    Text("back")
                }
                Button(action: {viewModel.onTapButtonYellow()}) {
                    Text("Yellow Screen")
                }
            }
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView(viewModel: .init())
    }
}
