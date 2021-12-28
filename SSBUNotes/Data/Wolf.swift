//
//  Wolf.swift
//  SSBUNotes
//
//  Created by maxence on 28/12/2021.
//

import UIKit

extension CharacterData
{
  static let wolf = Character(
    id: 44,
    url_name: "wolf",
    name: "Wolf",
    background_color: UIColor(named: "wolf_color") ?? .black,
    icon: UIImage(named: "wolf_icon") ?? UIImage(),
    image: UIImage(named: "wolf_image") ?? UIImage(),
    stats: CharacterStatsData.wolf_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let wolf_stats = CharacterStats(weight: 107)
}

