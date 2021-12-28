//
//  Zelda.swift
//  SSBUNotes
//
//  Created by maxence on 12/12/2021.
//

import UIKit

extension CharacterData
{
  static let zelda = Character(
    id: 18,
    url_name: "zelda",
    name: "Zelda",
    background_color: UIColor(named: "zelda_background_color") ?? .black,
    icon: UIImage(named: "zelda_icon") ?? UIImage(),
    image: UIImage(named: "zelda_image") ?? UIImage(),
    stats: CharacterStatsData.zelda_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let zelda_stats = CharacterStats(weight: 85)
}
