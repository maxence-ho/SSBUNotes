//
//  IceClimbers.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let ice_climbers = Character(
    id: 16,
    url_name: "ice_climbers",
    name: "Ice climbers",
    background_color: UIColor(named: "ice_climbers_background_color") ?? .black,
    icon: UIImage(named: "ice_climbers_icon") ?? UIImage(),
    image: UIImage(named: "ice_climbers_image") ?? UIImage(),
    stats: CharacterStatsData.ice_climbers_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let ice_climbers_stats = CharacterStats(weight: 92)
}
