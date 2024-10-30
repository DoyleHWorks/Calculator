//
//  Calculator.swift
//  
//
//  Created by DoyleHWorks on 10/30/24.
//

// Main Class for Calculator
public class Calculator {
    
    // Sources_ArithmeticOperations.swift
    private let operations: [String: AbstractOperation]
    
    public init(operations: [String: AbstractOperation]) {
        self.operations = operations
    }
    
    // This function takes too many parameters and needs to be refined somehow
    public func DisplayResult(_ lhs: Double, _ operation: String, _ rhs: Double, _ result: Double) -> String {
        /// Displays the result in terminal. Also shows the operation expression.
        let displayMessage = "\(lhs) \(operation) \(rhs) = \(result)"
        print(displayMessage)
        return displayMessage
    }
    
    // This function is a hassle to use and should have a String handling instance that translates single String into an expression(Numbers and Operator)
    public func Calculate(_ lhs: Double, _ operation: String, _ rhs: Double) -> Double {
        /// Performs a calculation based on the provided operator and operands.
        /// - Parameters:
        ///   - lhs: The left-hand side operand (Double).
        ///   - operation: A string representing the mathematical operator ("+", "-", "*", "/", or "%").
        ///   - rhs: The right-hand side operand (Double).
        /// - Returns: The result of the operation as a Double. If division by zero occurs, returns NaN. If an invalid operator is provided, returns NaN.
        /// - Note: Prints an error message if division by zero or an invalid operator is encountered.
        
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
