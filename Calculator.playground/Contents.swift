//
//  Calculator.playground - Personal Project for Learning Swift
//
//
//  Created by DoyleHWorks on 10/28/24.
//

// \Sources\Calculator.swift
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
