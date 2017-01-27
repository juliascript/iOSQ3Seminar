//: Playground - noun: a place where people can play

func fibonacci(of num: Int) -> Int {
    if num < 2 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}

//struct Person {
//    var age = 16
//    var fibAge : Int = fibonacci(of: age)
//}


struct Person {
    var age = 16
    lazy var fibonacciOfAge: Int = {
        return fibonacci(of: self.age)
    }()
}

