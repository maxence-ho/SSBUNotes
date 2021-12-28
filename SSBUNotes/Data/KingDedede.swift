//
//  KingDedede.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let ddd = Character(
    id: 41,
    url_name: "king_dedede",
    name: "King Dedede",
    background_color: UIColor(named: "ddd_background_color") ?? .black,
    icon: UIImage(named: "ddd_icon") ?? UIImage(),
    image: UIImage(named: "ddd_image") ?? UIImage(),
    stats: CharacterStatsData.ddd_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let ddd_stats = CharacterStats(weight: 107)
}
