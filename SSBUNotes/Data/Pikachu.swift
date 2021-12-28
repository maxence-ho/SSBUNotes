//
//  Pikachu.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let pikachu = Character(
    id: 8,
    url_name: "pikachu",
    name: "Pikachu",
    background_color: UIColor(named: "pikachu_background_color") ?? .black,
    icon: UIImage(named: "pikachu_icon") ?? UIImage(),
    image: UIImage(named: "pikachu_image") ?? UIImage(),
    stats: CharacterStatsData.pikachu_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let pikachu_stats = CharacterStats(weight: 79)
}
