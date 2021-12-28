//
//  Stage.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import Foundation
import RealmSwift
import UIKit

struct Stage: Identifiable
{
  let id: Int
  let stage_type: StageType
}

extension Stage: Persistable, Equatable
{
  public init(managedObject: StageObject)
  {
    id = managedObject.id
    stage_type = StageType(rawValue: managedObject.stage_type_value)!
  }
  
  public func managedObject() -> StageObject
  {
      let stage = StageObject()
      stage.id = id
      stage.stage_type_value = stage_type.rawValue
      return stage
  }
  
  static func ==(lhs: Stage, rhs: Stage) -> Bool
  {
      return lhs.id == rhs.id && lhs.stage_type == rhs.stage_type
  }
}

@objc class StageObject: Object
{
  @objc dynamic var id: Int = -1
  @objc dynamic var stage_type_value: String = "battlefield"
}

enum StageType: String
{
  case battlefield
  case final_destination
  case small_battlefield
  case pokemon_stadium_2
  case yoshi_story
  case kalos
  case northern_crater
  case town_and_city
  case smashville
  case lylat
}

extension StageType
{
  var name: String
  {
    switch self
    {
    case .battlefield: return "Battlefield"
    case .final_destination: return "Destination Finale"
    case .small_battlefield: return "Small Battlefield"
    case .pokemon_stadium_2: return "Pokemon Stadium 2"
    case .yoshi_story: return "Yoshi's Story"
    case .kalos: return "Kalos"
    case .northern_crater: return "Northern Crater"
    case .town_and_city: return "Town And City"
    case .smashville: return "Smashville"
    case .lylat: return "Lylat"
    }
  }
}

extension Stage
{
  var image: UIImage
  {
    return UIImage(named: "\(self.stage_type.rawValue)_image") ?? UIImage()
  }
  
  static var allCase: [Stage]
  {
    return
      [ Stage(id: 0, stage_type: .battlefield)
      , Stage(id: 1, stage_type: .final_destination)
      , Stage(id: 2, stage_type: .small_battlefield)
      , Stage(id: 3, stage_type: .pokemon_stadium_2)
      , Stage(id: 4, stage_type: .yoshi_story)
      , Stage(id: 5, stage_type: .kalos)
      , Stage(id: 6, stage_type: .northern_crater)
      , Stage(id: 7, stage_type: .town_and_city)
      , Stage(id: 8, stage_type: .smashville)
      , Stage(id: 9, stage_type: .lylat)
      ]
  }
}
