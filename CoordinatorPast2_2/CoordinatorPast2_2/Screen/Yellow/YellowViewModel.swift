//
//  YellowViewModel.swift
//  CoordinatorPast2_2
//
//  Created by admin on 21.07.2022.
//

import Foundation

class YellowViewModel: ObservableObject {
    enum Result {
        case navigationBackYellow
    }
    
    var onResult:((Result) -> Void)?
    
    func navigationBack() {
        onResult?(.navigationBackYellow)
    }
}
