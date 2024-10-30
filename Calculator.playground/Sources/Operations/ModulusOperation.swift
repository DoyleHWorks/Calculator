//
//  ArithmeticOperations.swift
//  
//
//  Created by DoyleHWorks on 10/29/24.
//

public class ModulusOperation: AbstractOperation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1.truncatingRemainder(dividingBy: num2) // Since they are Double, cannot use '/'.
    }
}
