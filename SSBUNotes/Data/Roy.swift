//
//  Roy.swift
//  SSBUNotes
//
//  Created by maxence on 14/12/2021.
//

import UIKit

extension CharacterData
{
  static let roy = Character(
    id: 27,
    url_name: "roy",
    name: "Roy",
    background_color: UIColor(named: "roy_background_color") ?? .black,
    icon: UIImage(named: "roy_icon") ?? UIImage(),
    image: UIImage(named: "roy_image") ?? UIImage(),
    stats: CharacterStatsData.roy_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let roy_stats = CharacterStats(weight: 95)
}
