//
//  AsyncCommand.swift
//  SwiftProtocolsCore
//
//  Created by Jeff Roberts on 7/31/15.
//  Copyright © 2015 nimbleNoggin.io. All rights reserved.
//

import Foundation

public protocol AsyncCommand {
    typealias T
    func execute(result: (T?) -> (), error: (ErrorType?) -> ())
}