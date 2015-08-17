//: Playground - noun: a place where people can play

import Foundation
import UIKit
import SwiftProtocolsCore

var str = "Hello, playground"

//: IntCommand - returns an Int when executed
public class IntCommand : Command {
    public init() {}
    
    public func execute() -> Int {
        return 55
    }
}

let command1 = IntCommand()
command1.execute()

//: VoidCommand - does something, but returns nothing
public class VoidCommand : Command {
    public init() {}
    
    public func execute() {
        print("Hello there")
    }
}

let command2 = VoidCommand()
command2.execute()

//: StringFactory - Creates a String instance
public class StringFactory : Factory {
    public init() {}
    
    public func create(with: Int?) -> String {
        guard let with = with else {
            return String()
        }
        
        return String(with)
    }
}

let stringFactory = StringFactory()
stringFactory.create(nil)
stringFactory.create(25)

//: TypedStringFactory - Creates a String instance
public class TypedStringFactory : TypedFactory {
    public init() {}
    
    public func create(type: NSObject.Type) -> String {
        return String("Yo boi")
    }
}

let typedStringFactory = TypedStringFactory()
typedStringFactory.create(NSString.self)
