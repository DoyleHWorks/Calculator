//
//  Calculator.playground - Personal Project for Learning Swift
//
//
//  Created by DOYLE on 10/28/24.
//

// Main Class for Calculator
class Calculator {
    
    // Sources_ArithmeticOperations.swift
    private let operations: [String: AbstractOperation]
    
    init(operations: [String: AbstractOperation]) {
        self.operations = operations
    }
    
    // This function takes too many parameters and needs to be refined somehow
    func DisplayResult(_ lhs: Double, _ operation: String, _ rhs: Double, _ value: Double) -> String {
        /// Displays the result in terminal. Also shows the operation expression.
        print("\(lhs) \(operation) \(rhs) = \(value)")
        return "\(lhs) \(operation) \(rhs) = \(value)"
    }
    
    // This function is a hassle to use and should have a String handling instance that translates single String into an expression(Numbers and Operator)
    func Calculate(_ lhs: Double, _ operation: String, _ rhs: Double) -> Double {
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
        DisplayResult(lhs, operation, rhs, result)
        return result
    }
}

// Creates an calculator instance to assign it to a variable
let calculator = Calculator(operations: [
    "+": AddOperation(),
    "-": SubtractOperation(),
    "*": MultiplyOperation(),
    "/": DivideOperation(),
    "%": ModulusOperation()
])

//
// How to Use
//
// Instead of taking user input, please directly input values into the function parameters to check the execution results.
// Since the Playground does not support input methods like readLine() in a terminal,
// please use constants or parameters to input values when writing the code.
//

// Example Inputs
calculator.Calculate(10, "+", 20)
calculator.Calculate(10, "-", 20)
calculator.Calculate(10, "*", 20)
calculator.Calculate(10, "/", 20)
calculator.Calculate(10, "%", 20)

// Example Inputs - Exceptions
calculator.Calculate(10, "/", 0)
calculator.Calculate(10, "?", 20)
