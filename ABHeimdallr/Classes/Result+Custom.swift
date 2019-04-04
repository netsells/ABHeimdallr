//
//  Result+Custom.swift
//  Heimdallr-macOS
//
//  Created by Alex on 04/04/2019.
//  Copyright © 2019 B264 GmbH. All rights reserved.
//

import Foundation

public extension Result {

    func analysis<Result>(ifSuccess: (Success) -> Result, ifFailure: (Failure) -> Result) -> Result {
        switch self {
        case let .success(value):
            return ifSuccess(value)
        case let .failure(value):
            return ifFailure(value)
        }
    }

    func map<U>(_ transform: (Success) -> U) -> Result<U, Error> {
        return flatMap { .success(transform($0)) }
    }

    /// Returns the result of applying `transform` to `Success`es’ values, or re-wrapping `Failure`’s errors.
    func flatMap<U>(_ transform: (Success) -> Result<U, Error>) -> Result<U, Error> {
        switch self {
        case let .success(value): return transform(value)
        case let .failure(error): return .failure(error)
        }
    }
}
