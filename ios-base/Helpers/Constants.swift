//
//  Constants.swift
//  ios-base
//
//  Created by German Lopez on 3/29/16.
//  Copyright © 2016 Rootstrap Inc. All rights reserved.
//

import Foundation
import UIKit

//Add global constants here

struct App {
  static let domain = Bundle.main.bundleIdentifier ?? ""
  
  static func error(
    domain: ErrorDomain = .generic, code: Int? = nil,
    localizedDescription: String = ""
  ) -> NSError {
    return NSError(domain: App.domain + "." + domain.rawValue,
                   code: code ?? 0,
                   userInfo: [NSLocalizedDescriptionKey: localizedDescription])
  }
}

enum ErrorDomain: String {
  case generic = "GenericError"
  case parsing = "ParsingError"
}

struct UI {
  enum Defaults {
  }
  
  enum ViewController {
  }
  
  enum Button {
    static let cornerRadious: CGFloat = 10.0
    static let height: CGFloat = 45.0
  }
  
  enum TextField {
  }
  
  enum Label {
  }
}
