// Personal Project for Learning Swift
//
// Created by DOYLE 2024-10-28 16:31
//
// Calculator

class Calculator {
//    var display: Double = 0
    var number1: Double = 0
    var number2: Double = 0
    
    func Calculate(_ number1: Double, _ operation: String, _ number2: Double) -> Double {
        switch operation {
        case "+" :
            var result = number1 + number2
            print("\(number1) + \(number2) = \(result)")
            return result
        case "-" :
            var result = number1 - number2
            print("\(number1) - \(number2) = \(result)")
            return result
        case "*" :
            var result = number1 * number2
            print("\(number1) * \(number2) = \(result)")
            return result
        case "/" :
            var result = number1 / number2
            print("\(number1) / \(number2) = \(result)")
            return result
        case "%" :
            var result = number1.truncatingRemainder(dividingBy: number2)
            print("\(number1) % \(number2) = \(result)")
            return result
        default:
            return 0
        }
    }
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당


// User Input --------------------------------------------------------------------
// 사용자 입력값을 따로 받지않고, 직접 함수의 파라미터로 값을 넣어 실행결과를 확인하는 방식으로 진행합니다.
// Playground 에서는 터미널의 readLine() 과 같은 입력 방식을 사용하지 않으므로
// 코드 작성 시 상수나 파라미터를 이용해 값을 입력해 주세요!

//calculator.Calculate(10, "+", 20)
//calculator.Calculate(10, "-", 20)
//calculator.Calculate(10, "*", 20)
//calculator.Calculate(10, "/", 20)
//calculator.Calculate(10, "%", 5.0)

