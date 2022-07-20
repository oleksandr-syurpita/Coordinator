//
//  YellowViewModel.swift
//  SwiftUINavigationExample
//
//  Created by admin on 19.07.2022.
//

import Foundation

class YellowViewModel: ObservableObject {
    
    enum Result {
        case onTapPageBack
    }
    var onResult:((Result) -> Void)?
    
    func onTapButtonAction() {
        onResult?(.onTapPageBack)
    }
}
