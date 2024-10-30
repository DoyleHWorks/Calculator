//
//  ArithmeticOperations.swift
//  
//
//  Created by DOYLE on 10/29/24.
//

protocol Operation {
    func operate(_ num1: Double, _ num2: Double) -> Double
}

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
        return num1.truncatingRemainder(dividingBy: num2)
    }
}
