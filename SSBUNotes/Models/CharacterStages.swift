//
//  CharacterStages.swift
//  SSBUNotes
//
//  Created by maxence on 13/12/2021.
//

import Foundation
import RealmSwift
import SwiftUI

class CharacterStages: Object
{
  @objc dynamic var character_id: Int = -1
  var green_stages = RealmSwift.List<StageObject>()
  var red_stages = RealmSwift.List<StageObject>()
}
