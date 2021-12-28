//
//  MetaKnight.swift
//  SSBUNotes
//
//  Created by maxence on 14/12/2021.
//

import UIKit

extension CharacterData
{
  static let meta_knight = Character(
    id: 30,
    url_name: "meta_knight",
    name: "Meta Knight",
    background_color: UIColor(named: "meta_knight_background_color") ?? .black,
    icon: UIImage(named: "meta_knight_icon") ?? UIImage(),
    image: UIImage(named: "meta_knight_image") ?? UIImage(),
    stats: CharacterStatsData.meta_knight_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let meta_knight_stats = CharacterStats(weight: 80)
}
