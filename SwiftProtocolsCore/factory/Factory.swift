//
//  Factory.swift
//  SwiftProtocolsCore
//
//  Created by Jeff Roberts on 7/31/15.
//  Copyright © 2015 nimbleNoggin.io. All rights reserved.
//

import Foundation

public protocol Factory {
    associatedtype T
    associatedtype CreateWith
    func create(with: CreateWith?) throws -> T
}