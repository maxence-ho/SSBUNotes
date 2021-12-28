//
//  Luigi.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let luigi = Character(
    id: 9,
    url_name: "luigi",
    name: "Luigi",
    background_color: UIColor(named: "luigi_background_color") ?? .black,
    icon: UIImage(named: "luigi_icon") ?? UIImage(),
    image: UIImage(named: "luigi_image") ?? UIImage(),
    stats: CharacterStatsData.luigi_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let luigi_stats = CharacterStats(weight: 97)
}
