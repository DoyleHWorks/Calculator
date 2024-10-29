//
//  Calculator.playground - Personal Project for Learning Swift
//
//
//  Created by DOYLE on 10/28/24.
//

class Calculator {
    
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let modulusOperation = ModulusOperation()
    
    func DisplayResult(_ lhs: Double, _ operation: String, _ rhs: Double, _ value: Double) -> String {
        print("\(lhs) \(operation) \(rhs) = \(value)")
        return "\(lhs) \(operation) \(rhs) = \(value)"
    }
    
    func Calculate(_ lhs: Double, _ operation: String, _ rhs: Double) -> Double {
        let result: Double
        
        switch operation {
        case "+" :
            result = addOperation.add(lhs, rhs)
        case "-" :
            result = subtractOperation.subtract(lhs, rhs)
        case "*" :
            result = multiplyOperation.multiply(lhs, rhs)
        case "/" :
            if rhs == 0 {
                print("Error: Division by zero is not allowed.")
                return Double.nan
            }
            result = divideOperation.divide(lhs, rhs)
        case "%" :
            result = modulusOperation.modulus(lhs, rhs)
        default:
            print("Error: Invalid operation")
            return Double.nan
        }
        DisplayResult(lhs, operation, rhs, result)
        return result
    }
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

// User Input --------------------------------------------------------------------
// 사용자 입력값을 따로 받지않고, 직접 함수의 파라미터로 값을 넣어 실행결과를 확인하는 방식으로 진행합니다.
// Playground 에서는 터미널의 readLine() 과 같은 입력 방식을 사용하지 않으므로
// 코드 작성 시 상수나 파라미터를 이용해 값을 입력해 주세요!

calculator.Calculate(10, "+", 20)
calculator.Calculate(10, "-", 20)
calculator.Calculate(10, "*", 20)
calculator.Calculate(10, "/", 20)
calculator.Calculate(10, "%", 5.0)

