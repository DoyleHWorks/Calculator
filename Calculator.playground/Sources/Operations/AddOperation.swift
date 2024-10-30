//
//  AddOperation.swift
//  
//
//  Created by DoyleHWorks on 10/30/24.
//

public class AddOperation: AbstractOperation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}
