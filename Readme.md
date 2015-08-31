# Introduction
swift-protocols-core is an iOS framework written in Swift 2. It consists of a small handful of protocols that represent very high level concepts such as Commands and Factories. The concepts defined in this framework can be used in many different applications.

# Protocols
The following protocols exist within the framework:

## Command
[Command](https://github.com/JeffBNimble/swift-protocols-core/blob/master/SwiftProtocolsCore/command/Command.swift) is a simple protocol with an execute function. The protocol uses generics so that implementations can provide specific return types. Commands are intended to be synchronous on the calling thread.

[AsyncCommand](https://github.com/JeffBNimble/swift-protocols-core/blob/master/SwiftProtocolsCore/command/AsyncCommand.swift) is similar conceptually to the Command protocol, except that it is intended to be asynchronous. The execute function signature defines a closure that is passed and is used to notify the caller of completion or an error.

## Factory
[Factory](https://github.com/JeffBNimble/swift-protocols-core/blob/master/SwiftProtocolsCore/factory/Factory.swift) is a protocol with a create function. The protocol uses generics so that implementations can provide specific created types. The create function provides a means to pass a parameter to the factory to be used in creating.

[TypedFactory](https://github.com/JeffBNimble/swift-protocols-core/blob/master/SwiftProtocolsCore/factory/TypedFactory.swift) is similar conceptually to the Factory protocol, except that the parameter to the create function is the type of thing to create.

## Errors
[CoreError](https://github.com/JeffBNimble/swift-protocols-core/blob/master/SwiftProtocolsCore/error/CoreError.swift) is an enum of a handful of common errors which can be thrown by your functions. The enum values will likely grow over time.

Currently, the following enum values are defined:
* IllegalStateError
* SubclassShouldImplementError
* UnsupportedOperationError

# Installation
Use [Carthage](https://github.com/Carthage/Carthage). This framework requires the use of Swift 2 and XCode 7 or greater.

Specify the following in your Cartfile to use swift-protocols-core:

```github "JeffBNimble/swift-protocols-core" "0.0.7"```
