//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Stack<T: Equatable>{
    var items: [T] = []
    var things: Optional<String> = ""
    
    func pop() -> T{
        return items.popLast()!
    }
    
    
    func push(item: T){
        items.append(item)
    }
}

class UsingDict<T: Hashable, U> {
    var dict = [T: U]()
    
    func add(key: T, value: U){
        dict[key] = value
    }
}

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}


