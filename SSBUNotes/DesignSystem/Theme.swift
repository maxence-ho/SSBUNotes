//
//  Theme.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import UIKit

struct Theme
{
  static let margin = CGFloat(8)
  
  // MARK: - Colors
  struct Color
  {
    static let blackOverlayColor =
      UIColor(
        red: 0,
        green: 0,
        blue: 0,
        alpha: 0.8
      )
      .cgColor
    
    static let lightblackOverlayColor =
      UIColor(
        red: 0,
        green: 0,
        blue: 0,
        alpha: 0.6
      )
      .cgColor
  }
}
