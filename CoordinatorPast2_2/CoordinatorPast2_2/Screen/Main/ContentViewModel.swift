//
//  ContentViewModel.swift
//  CoordinatorPast2_2
//
//  Created by admin on 20.07.2022.
//

import Foundation

class ContentViewModel: ObservableObject {
    enum Result {
        case navigationNext
    }
    var onResult: ((Result) -> Void)?
    func onTapButton() {
        onResult?(.navigationNext)
    }
}
