//
//  Villager.swift
//  SSBUNotes
//
//  Created by maxence on 28/12/2021.
//

import UIKit

extension CharacterData
{
  static let villager = Character(
    id: 44,
    url_name: "villager",
    name: "Villager",
    background_color: UIColor(named: "villager_color") ?? .black,
    icon: UIImage(named: "villager_icon") ?? UIImage(),
    image: UIImage(named: "villager_image") ?? UIImage(),
    stats: CharacterStatsData.villager_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let villager_stats = CharacterStats(weight: 107)
}

