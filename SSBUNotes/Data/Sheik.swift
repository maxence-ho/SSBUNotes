//
//  Sheik.swift
//  SSBUNotes
//
//  Created by maxence on 12/12/2021.
//

import UIKit

extension CharacterData
{
  static let sheik = Character(
    id: 17,
    url_name: "sheik",
    name: "Sheik",
    background_color: UIColor(named: "sheik_background_color") ?? .black,
    icon: UIImage(named: "sheik_icon") ?? UIImage(),
    image: UIImage(named: "sheik_image") ?? UIImage(),
    stats: CharacterStatsData.sheik_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let sheik_stats = CharacterStats(weight: 78)
}
