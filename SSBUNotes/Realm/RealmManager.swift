//
//  RealmManager.swift
//  SSBUNotes
//
//  Created by maxence on 13/12/2021.
//

import Foundation
import RealmSwift
import SwiftUI

struct RealmManager
{
  static func fetch_character_green_stage(character_id: Int, completion: @escaping (([Stage]) -> Void))
  {
    DispatchQueue(label: "background").async
    {
      autoreleasepool
      {
        guard
          let realm = try? Realm(),
          let character_stages = realm.objects(CharacterStages.self).filter("character_id == \(character_id)").first
        else { return }
        completion(character_stages.green_stages.map { Stage(managedObject: $0) })
      }
    }
  }
  
  static func fetch_character_red_stage(character_id: Int, completion: @escaping (([Stage]) -> Void))
  {
    DispatchQueue(label: "background").async
    {
      autoreleasepool
      {
        guard
          let realm = try? Realm(),
          let character_stages = realm.objects(CharacterStages.self).filter("character_id == \(character_id)").first
        else { return }
        completion(character_stages.red_stages.map { Stage(managedObject: $0) })
      }
    }
  }
  
  static func write_or_update_character_stages(
    character_id: Int,
    green_stages: [Stage],
    red_stages: [Stage]
  )
  {
    DispatchQueue(label: "background").async
    {
      autoreleasepool
      {
        guard let realm = try? Realm() else { return }
        if let character_stages = realm.objects(CharacterStages.self).filter("character_id == \(character_id)").first
        {
          RealmManager.update_character_stages(
            realm: realm,
            character_stages: character_stages,
            green_stages: green_stages,
            red_stages: red_stages
          )
        }
        else
        {
          RealmManager.add_new_character_stage(
            realm: realm,
            character_id: character_id,
            green_stages: green_stages,
            red_stages: red_stages
          )
        }
      }
    }
  }
  
  static func fetch_character_note(
    character_id: Int,
    completion: @escaping ((CharacterNote) -> Void),
    notFoundCompletion: @escaping (() -> Void)
  )
  {
    DispatchQueue(label: "background").async
    {
      autoreleasepool
      {
        guard
          let realm = try? Realm(),
          let character_note = realm.objects(CharacterNote.self).filter("character_id == \(character_id)").first
        else {
          notFoundCompletion()
          return
        }
        completion(character_note)
      }
    }
  }
  
  static func write_or_update_character_note(character_id: Int, value: String)
  {
    DispatchQueue(label: "background").async
    {
      autoreleasepool
      {
        guard let realm = try? Realm() else { return }
        if let character_note = realm.objects(CharacterNote.self).filter("character_id == \(character_id)").first
        {
          RealmManager.update_character_note(
            realm: realm,
            character_note: character_note,
            value: value
          )
        }
        else
        {
          RealmManager.add_new_character_note(
            realm: realm,
            character_id: character_id,
            value: value
          )
        }
      }
    }
  }
}


extension RealmManager
{
  
  private static func update_character_stages(
    realm: Realm,
    character_stages: CharacterStages,
    green_stages: [Stage],
    red_stages: [Stage]
  )
  {
    try? realm.write {
      character_stages.green_stages.removeAll()
      character_stages.green_stages.append(objectsIn: green_stages.map({ $0.managedObject() }))
      character_stages.red_stages.removeAll()
      character_stages.red_stages.append(objectsIn: red_stages.map({ $0.managedObject() }))
    }
  }
  
  private static func add_new_character_stage(
    realm: Realm,
    character_id: Int,
    green_stages: [Stage],
    red_stages: [Stage]
  )
  {
    try? realm.write
    {
      let green_stage_list = RealmSwift.List<StageObject>()
      green_stage_list.append(objectsIn: green_stages.map({ $0.managedObject() }))
      let red_stage_list = RealmSwift.List<StageObject>()
      red_stage_list.append(objectsIn: red_stages.map({ $0.managedObject() }))
      let new_character_stages = CharacterStages()
      new_character_stages.character_id = character_id
      new_character_stages.green_stages = green_stage_list
      new_character_stages.red_stages = red_stage_list
      realm.add(new_character_stages)
    }
  }
  
  private static func update_character_note(
    realm: Realm,
    character_note: CharacterNote,
    value: String
  )
  {
    try? realm.write {
      character_note.value = value
    }
  }
  
  private static func add_new_character_note(
    realm: Realm,
    character_id: Int,
    value: String
  )
  {
    try? realm.write
    {
      let new_character_note = CharacterNote()
      new_character_note.character_id = character_id
      new_character_note.value = value
      realm.add(new_character_note)
    }
  }
}

public protocol Persistable {
    associatedtype ManagedObject: RealmSwift.Object
    init(managedObject: ManagedObject)
    func managedObject() -> ManagedObject
}
