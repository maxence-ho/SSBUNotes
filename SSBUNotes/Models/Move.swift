//
//  Move.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import Foundation

struct Move: Identifiable
{
  let id = UUID()
  let move_type: MoveType
  let startupFrame: Int
  let lagOnShieldFrame: Int
}

extension Move
{
  func out_of_shield_startup() -> Int
  {
    switch self.move_type
    {
    case .fair, .nair, .upair, .dair, .bair: return startupFrame + 3
    default: return startupFrame
    }
  }
}

enum MoveType: String
{
  case nair
  case fair
  case bair
  case upair
  case dair
  case jab
  case grab
  case neutral_b
  case side_b
  case upB
  case downB
  case dtilt
  case uptilt
  case sidetilt
  case up_smash
  case down_smash
  case side_smash
}
