//
//  Lucario.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let lucario = Character(
    id: 43,
    url_name: "lucario",
    name: "Lucario",
    background_color: UIColor(named: "lucario_background_color") ?? .black,
    icon: UIImage(named: "lucario_icon") ?? UIImage(),
    image: UIImage(named: "lucario_image") ?? UIImage(),
    stats: CharacterStatsData.lucario_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let lucario_stats = CharacterStats(weight: 107)
}
