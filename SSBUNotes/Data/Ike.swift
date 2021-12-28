//
//  Ike.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let ike = Character(
    id: 36,
    url_name: "ike",
    name: "Ike",
    background_color: UIColor(named: "ike_background_color") ?? .black,
    icon: UIImage(named: "ike_icon") ?? UIImage(),
    image: UIImage(named: "ike_image") ?? UIImage(),
    stats: CharacterStatsData.ike_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let ike_stats = CharacterStats(weight: 107)
}
