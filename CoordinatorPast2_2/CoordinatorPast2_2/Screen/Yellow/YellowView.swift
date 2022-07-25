//
//  YellowView.swift
//  CoordinatorPast2_2
//
//  Created by admin on 21.07.2022.
//

import SwiftUI

struct YellowView: View {
    @ObservedObject var viewModel: YellowViewModel
    var body: some View {
        Button(action: {viewModel.navigationBack()}) {
            Text("BACK")
        }
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView(viewModel: .init())
    }
}
