Features Of Swift That Might Be Lesser Known

Private setter/getter: https://www.natashatherobot.com/swift-magic-public-getter-private-setter/
    Want data in your object to be accessible but not allow it to be alterable or the other way around?
    Use a private setter/getter!

The `fileprivate` keyword:
https://cocoacasts.com/what-is-the-difference-between-private-and-fileprivate-in-swift-3/
    Allows variables and functions to be used in extensions.

The `open` keyword:
http://stackoverflow.com/questions/38947101/what-is-the-open-keyword-in-swift
    Makes variables and functions overridable.

Operator functions: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html
    Operator functions are common in C++ and can make your code more readable if utilized properly.

The `where` keyword:
http://blog.krzyzanowskim.com/2015/11/13/where-where-may-be-used/
    Used to make sure generic parameters conform to multiple protocols.
    Can also be used to modify loops, if-let statements, guard statements and switch cases.

The `mutating` keyword:
https://www.natashatherobot.com/mutating-functions-swift-structs/
    Normally `struct` and `enum` functions can't alter their own values, but no longer with `mutating`!
