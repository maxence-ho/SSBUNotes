//
//  Peach.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let peach = Character(
    id: 13,
    url_name: "peach",
    name: "Peach",
    background_color: UIColor(named: "peach_background_color") ?? .black,
    icon: UIImage(named: "peach_icon") ?? UIImage(),
    image: UIImage(named: "peach_image") ?? UIImage(),
    stats: CharacterStatsData.peach_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let peach_stats = CharacterStats(weight: 89)
}
