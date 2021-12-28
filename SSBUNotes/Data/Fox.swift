//
//  Fox.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let fox = Character(
    id: 7,
    url_name: "fox",
    name: "Fox",
    background_color: UIColor(named: "fox_background_color") ?? .black,
    icon: UIImage(named: "fox_icon") ?? UIImage(),
    image: UIImage(named: "fox_image") ?? UIImage(),
    stats: CharacterStatsData.fox_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let fox_stats = CharacterStats(weight: 77)
}
