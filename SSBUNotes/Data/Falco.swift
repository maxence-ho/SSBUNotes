//
//  Falco.swift
//  SSBUNotes
//
//  Created by maxence on 12/12/2021.
//

import UIKit

extension CharacterData
{
  static let falco = Character(
    id: 21,
    url_name: "falco",
    name: "Falco",
    background_color: UIColor(named: "falco_background_color") ?? .black,
    icon: UIImage(named: "falco_icon") ?? UIImage(),
    image: UIImage(named: "falco_image") ?? UIImage(),
    stats: CharacterStatsData.falco_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let falco_stats = CharacterStats(weight: 135)
}
