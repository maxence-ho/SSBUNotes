//
//  Character.swift
//  SSBUNotes
//
//  Created by maxence on 09/12/2021.
//

import UIKit

struct Character: Identifiable
{
  let id: Int
  let url_name: String
  let name: String
  let background_color: UIColor
  let icon: UIImage
  let image: UIImage
  let stats: CharacterStats
  var note: String
}

struct CharacterStats
{
  let weight: Int
}

struct CharacterStatsData {}
