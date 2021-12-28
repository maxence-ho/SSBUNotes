//
//  CaptainFalcon.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let captain_falcon = Character(
    id: 11,
    url_name: "captain_falcon",
    name: "Captain Falcon",
    background_color: UIColor(named: "captain_falcon_background_color") ?? .black,
    icon: UIImage(named: "captain_falcon_icon") ?? UIImage(),
    image: UIImage(named: "captain_falcon_image") ?? UIImage(),
    stats: CharacterStatsData.captain_falcon_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let captain_falcon_stats = CharacterStats(weight: 104)
}
