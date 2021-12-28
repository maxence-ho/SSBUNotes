//
//  Lucina.swift
//  SSBUNotes
//
//  Created by maxence on 12/12/2021.
//

import UIKit

extension CharacterData
{
  static let lucina = Character(
    id: 23,
    url_name: "lucina",
    name: "Lucina",
    background_color: UIColor(named: "lucina_background_color") ?? .black,
    icon: UIImage(named: "lucina_icon") ?? UIImage(),
    image: UIImage(named: "lucina_image") ?? UIImage(),
    stats: CharacterStatsData.lucina_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let lucina_stats = CharacterStats(weight: 90)
}
