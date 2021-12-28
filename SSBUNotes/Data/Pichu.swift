//
//  Pichu.swift
//  SSBUNotes
//
//  Created by maxence on 12/12/2021.
//

import UIKit

extension CharacterData
{
  static let pichu = Character(
    id: 20,
    url_name: "pichu",
    name: "Pichu",
    background_color: UIColor(named: "pichu_background_color") ?? .black,
    icon: UIImage(named: "pichu_icon") ?? UIImage(),
    image: UIImage(named: "pichu_image") ?? UIImage(),
    stats: CharacterStatsData.pichu_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let pichu_stats = CharacterStats(weight: 62)
}
