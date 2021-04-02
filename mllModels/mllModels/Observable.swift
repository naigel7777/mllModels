//
//  Observable.swift
//  mllModels
//
//  Created by Nail Safin on 21.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation
public struct ObservableOption: OptionSet, CustomStringConvertible {
    public static let initial = ObservableOption(rawValue: 1 << 0)
    public static let old = ObservableOption(rawValue: 1 << 1)
    public static let new = ObservableOption(rawValue: 1 << 2)
    
    public var rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public var description: String {
        switch self {
        case .initial:
            return "initial"
        case .new:
            return "new"
        case .old:
            return "old"
        default:
            return "Observable option \(rawValue)"
        }
    }
}


public class Observable<Type> {
    
    fileprivate class Callback{
        fileprivate weak var observer: AnyObject?
        fileprivate let option: [ObservableOption]
        fileprivate let closure: (Type, ObservableOption) -> Void
        
        fileprivate init(observer: AnyObject?,
                         option: [ObservableOption],
                         closure: @escaping (Type, ObservableOption) -> Void) {
            self.observer = observer
            self.closure = closure
            self.option = option
        }
        
    }
    public var value: Type {
        didSet {
            
           removeNilObserverCallbacks()
            notifyCallbacks(value: oldValue, option: .old)
            notifyCallbacks(value: value, option: .new)
        
        }
    }
    
    public init(_ value:Type) {
        self.value = value
    }
    
    private var callbacks: [Callback] = []
    
    public func addObserver(observer: AnyObject?,
                            removeIfExist:Bool = true,
    option: [ObservableOption],
    closure: @escaping (Type, ObservableOption) -> Void) {
        if removeIfExist{
            removeObserver(observer)
        }
        let callback = Callback(observer: observer,
                                option: option,
                                closure: closure)
        callbacks.append(callback)
        
        if option.contains(.initial) {
            closure(value, .initial)
        }
    }
    public func removeObserver(_ observer: AnyObject?) {
        callbacks = callbacks.filter {$0.observer !== observer }
    }
    
    private func removeNilObserverCallbacks() {
        callbacks = callbacks.filter {$0.observer != nil }
    }
    
    private func notifyCallbacks(value: Type,
                                 option: ObservableOption) {
        let callbacksToNotify = callbacks.filter { $0.option.contains(option) }
        callbacksToNotify.forEach { $0.closure(value, option) }
    }
}
