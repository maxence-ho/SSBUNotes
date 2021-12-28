//
//  Samus.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let samus = Character(
    id: 3,
    url_name: "samus",
    name: "Samus",
    background_color: UIColor(named: "samus_background_color") ?? .black,
    icon: UIImage(named: "samus_icon") ?? UIImage(),
    image: UIImage(named: "samus_image") ?? UIImage(),
    stats: CharacterStatsData.samus_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let samus_stats = CharacterStats(weight: 108)
}
