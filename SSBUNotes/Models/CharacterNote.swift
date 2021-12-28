//
//  CharacterNote.swift
//  SSBUNotes
//
//  Created by maxence on 13/12/2021.
//

import Foundation
import RealmSwift
import SwiftUI

class CharacterNote: Object
{
  @objc dynamic var character_id: Int = 0
  @objc dynamic var value: String = ""
}

extension CharacterNote
{
  static func ==(lhs: CharacterNote, rhs: CharacterNote) -> Bool {
      return lhs.character_id == rhs.character_id && lhs.value == rhs.value
  }
}

extension CharacterNote
{
  static var `default` = CharacterNote(value: "")
}
