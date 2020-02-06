//
//  Command.swift
//  
//
//  Created by Illia Khrypunov on 2/6/20.
//

import Foundation

public struct Command<T> {
  private let action: (T) -> Void
  
  public init(with action: @escaping (T) -> Void) {
    self.action = action
  }
  
  public func perform(with value: T) {
    action(value)
  }
}

public extension Command where T == Void {
  public func perform() {
    perform(with: ())
  }
}
