//
//  WiiFitTrainer.swift
//  SSBUNotes
//
//  Created by maxence on 28/12/2021.
//

import UIKit

extension CharacterData
{
  static let wiifittrainer = Character(
    id: 44,
    url_name: "wii_fit_trainer",
    name: "WiiFitTrainer",
    background_color: UIColor(named: "wiifittrainer_color") ?? .black,
    icon: UIImage(named: "wiifittrainer_icon") ?? UIImage(),
    image: UIImage(named: "wiifittrainer_image") ?? UIImage(),
    stats: CharacterStatsData.wiifittrainer_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let wiifittrainer_stats = CharacterStats(weight: 107)
}
