//
//  ArithmeticOperations.swift
//  
//
//  Created by DOYLE on 10/29/24.
//

public class AddOperation {
    public init() {}
    public func add(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

public class SubtractOperation {
    public init() {}
    public func subtract(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

public class MultiplyOperation {
    public init() {}
    public func multiply(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

public class DivideOperation {
    public init() {}
    public func divide(_ num1: Double, _ num2: Double) -> Double {
        return num1 / num2
    }
}

public class ModulusOperation {
    public init() {}
    public func modulus(_ num1: Double, _ num2: Double) -> Double {
        return num1.truncatingRemainder(dividingBy: num2)
    }
}
