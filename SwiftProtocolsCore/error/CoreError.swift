//
//  CoreError.swift
//  SwiftProtocolsCore
//
//  Created by Jeff Roberts on 8/18/15.
//  Copyright © 2015 nimbleNoggin.io. All rights reserved.
//

import Foundation

public enum CoreError : ErrorType {
    case IllegalStateError
    case SubclassShouldImplementError
    case UnsupportedOperationError
}