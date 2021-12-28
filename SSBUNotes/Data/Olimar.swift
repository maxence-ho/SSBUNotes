//
//  Olimar.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let olimar = Character(
    id: 42,
    url_name: "olimar",
    name: "Olimar",
    background_color: UIColor(named: "olimar_background_color") ?? .black,
    icon: UIImage(named: "olimar_icon") ?? UIImage(),
    image: UIImage(named: "olimar_image") ?? UIImage(),
    stats: CharacterStatsData.olimar_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let olimar_stats = CharacterStats(weight: 107)
}
