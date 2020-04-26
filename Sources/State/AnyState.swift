//
//  AnyState.swift
//  
//
//  Created by Mihael Isaev on 26.04.2020.
//

import Foundation

public protocol AnyState {
    func listen(_ listener: @escaping () -> Void)
}

public class AnyStates {
    private let _expression: () -> Void
    lazy var value: () -> Void = {
        self._expression()
    }
    
    init (_ states: [AnyState], expression: @escaping () -> Void) {
        _expression = expression
        states.forEach { $0.listen(expression) }
    }
}
