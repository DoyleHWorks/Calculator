//
//  ArithmeticOperations.swift
//  
//
//  Created by DOYLE on 10/29/24.
//

// Protocol for Operation Classes
protocol Operation {
    func operate(_ num1: Double, _ num2: Double) -> Double
}

// Arithmetic Operation Classes
public class AddOperation: Operation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

public class SubtractOperation: Operation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

public class MultiplyOperation: Operation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

public class DivideOperation: Operation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 / num2
    }
}

public class ModulusOperation: Operation {
    public init() {}
    public func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1.truncatingRemainder(dividingBy: num2) // Since they are Double, cannot use '/'.
    }
}
