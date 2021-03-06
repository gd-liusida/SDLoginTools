//
//  SDResult.swift
//  SDLoginTools
//
//  Created by Liu on 2020/4/11.
//  Copyright © 2020 Sida Liu. All rights reserved.
//

import UIKit
/**
 Used to represent whether a request was successful or encountered an error.
 
 - Success: The request and all post processing operations were successful resulting in the serialization of the
 provided associated value.
 - Failure: The request encountered an error resulting in a failure. The associated values are the original data
 provided by the server as well as the error that caused the failure.
 */
public enum SDResult<Value, Error> {
    /// The request and all post processing operations were successful resulting in the serialization of the
    /// provided associated value.
    case success(Value)
    /// The request encountered an error resulting in a failure. The associated values are the original data
    /// provided by the server as well as the error that caused the failure.
    case failure(Error)
    
    /// Returns `true` if the result is a success, `false` otherwise.
    public var isSuccess: Bool {
        switch self {
        case .success:
            return true
        case .failure:
            return false
        }
    }
    
    /// Returns `true` if the result is a failure, `false` otherwise.
    public var isFailure: Bool {
        return !isSuccess
    }
    
    /// Returns the associated value if the result is a success, `nil` otherwise.
    public var value: Value? {
        switch self {
        case .success(let value):
            return value
        case .failure:
            return nil
        }
    }
    
    /// Returns the associated error value if the result is a failure, `nil` otherwise.
    public var error: Error? {
        switch self {
        case .success:
            return nil
        case .failure(let error):
            return error
        }
    }
}

// MARK: - CustomStringConvertible
extension SDResult: CustomStringConvertible {
    /// The textual representation used when written to an output stream, which includes whether the result was a
    /// success or failure.
    public var description: String {
        switch self {
        case .success:
            return "SUCCESS"
        case .failure:
            return "FAILURE"
        }
    }
}

// MARK: - CustomDebugStringConvertible

extension SDResult: CustomDebugStringConvertible {
    /// The debug textual representation used when written to an output stream, which includes whether the result was a
    /// success or failure in addition to the value or error.
    public var debugDescription: String {
        switch self {
        case .success(let value):
            return "SUCCESS: \(value)"
        case .failure(let error):
            return "FAILURE: \(error)"
        }
    }
}
