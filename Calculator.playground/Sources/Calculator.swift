//
//  Calculator.swift
//  
//
//  Created by DoyleHWorks on 10/30/24.
//

// Main Calculator Class
public class Calculator {
    
    // Dictionary of operations, mapping symbols to respective operation instances
    private let operations: [String: AbstractOperation]
    
    public init(operations: [String: AbstractOperation]) {
        self.operations = operations
    }
    
    // Displays the result of an operation in the format: "lhs operation rhs = result"
    public func DisplayResult(_ lhs: Double, _ operation: String, _ rhs: Double, _ result: Double) -> String {
        let displayMessage = "\(lhs) \(operation) \(rhs) = \(result)"
        print(displayMessage)
        return displayMessage
    }
    
    // Executes a calculation based on the provided operator and operands.
    // Handles invalid operators and division by zero by returning NaN.
    public func Calculate(_ lhs: Double, _ operation: String, _ rhs: Double) -> Double {
        
        guard let op = operations[operation] else {
            print("Error: Invalid operator (Expression: \(lhs) \(operation) \(rhs))")
            return Double.nan
        }
        
        if operation == "/" && rhs == 0 {
            print("Error: Division by zero is not allowed. (Expression: \(lhs) \(operation) \(rhs))")
            return Double.nan
        }
        
        let result = op.operate(lhs, rhs)
        _ = DisplayResult(lhs, operation, rhs, result)
        return result
    }
}
