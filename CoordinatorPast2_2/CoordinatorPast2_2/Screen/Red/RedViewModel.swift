//
//  RedViewModel.swift
//  CoordinatorPast2_2
//
//  Created by admin on 20.07.2022.
//

import Foundation

class RedViewModel:ObservableObject {
    enum Result {
        case navigationBack
        case navigationYellow
    }
    var onResult:((Result) -> Void)?
    
    func onTapButtonBack() {
        onResult?(.navigationBack)
    }
    
    func onTapButtonYellow() {
        onResult?(.navigationYellow)
    }
}
