//
//  Calculator.playground - Personal Project for Learning Swift
//
//
//  Created by DOYLE on 10/28/24.
//

// Main Class for Calculator
class Calculator {
    
    // Sources_ArithmeticOperations.swift
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let modulusOperation = ModulusOperation()
    
    // This function takes too many parameters and needs to be refined somehow
    func DisplayResult(_ lhs: Double, _ operation: String, _ rhs: Double, _ value: Double) -> String {
        /// Displays the result in terminal. Also shows the operation expression.
        print("\(lhs) \(operation) \(rhs) = \(value)")
        return "\(lhs) \(operation) \(rhs) = \(value)"
    }
    
    func Calculate(_ lhs: Double, _ operation: String, _ rhs: Double) -> Double {
        /// Performs a calculation based on the provided operator and operands.
        /// - Parameters:
        ///   - lhs: The left-hand side operand (Double).
        ///   - operation: A string representing the mathematical operator ("+", "-", "*", "/", or "%").
        ///   - rhs: The right-hand side operand (Double).
        /// - Returns: The result of the operation as a Double. If division by zero occurs, returns NaN. If an invalid operator is provided, returns NaN.
        /// - Note: Prints an error message if division by zero or an invalid operator is encountered.
        let result: Double
        
        switch operation {
        case "+" :
            result = addOperation.operate(lhs, rhs)
        case "-" :
            result = subtractOperation.operate(lhs, rhs)
        case "*" :
            result = multiplyOperation.operate(lhs, rhs)
        case "/" :
            if rhs == 0 { // Exception: Divided by Zero
                print("Error: Division by zero is not allowed.")
                return Double.nan
            }
            result = divideOperation.operate(lhs, rhs)
        case "%" :
            result = modulusOperation.operate(lhs, rhs)
        default: // Exception: Invalid Operator
            print("Error: Invalid operator")
            return Double.nan
        }
        DisplayResult(lhs, operation, rhs, result)
        return result
    }
}

let calculator = Calculator() // Creates an instance to assign it to a variable
Calculator.Calculate

//
// How to Use
//
// Instead of taking user input, please directly input values into the function parameters to check the execution results.
// Since the Playground does not support input methods like readLine() in a terminal,
// please use constants or parameters to input values when writing the code.
//

calculator.Calculate(10, "+", 20)
calculator.Calculate(10, "-", 20)
calculator.Calculate(10, "*", 20)
calculator.Calculate(10, "/", 20)
calculator.Calculate(10, "%", 5.0)

