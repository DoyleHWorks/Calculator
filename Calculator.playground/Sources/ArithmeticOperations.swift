//
//  ArithmeticOperations.swift
//  
//
//  Created by DOYLE on 10/29/24.
//

// Protocol for Operation Classes
public protocol AbstractOperation {
    func operate(_ num1: Double, _ num2: Double) -> Double
}

// Arithmetic Operation Classes
public class AddOperation: AbstractOperation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

public class SubtractOperation: AbstractOperation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

public class MultiplyOperation: AbstractOperation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

public class DivideOperation: AbstractOperation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 / num2
    }
}

public class ModulusOperation: AbstractOperation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1.truncatingRemainder(dividingBy: num2) // Since they are Double, cannot use '/'.
    }
}
