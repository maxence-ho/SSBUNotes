//
//  Lucas.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let lucas = Character(
    id: 39,
    url_name: "lucas",
    name: "Lucas",
    background_color: UIColor(named: "lucas_background_color") ?? .black,
    icon: UIImage(named: "lucas_icon") ?? UIImage(),
    image: UIImage(named: "lucas_image") ?? UIImage(),
    stats: CharacterStatsData.lucas_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let lucas_stats = CharacterStats(weight: 107)
}
