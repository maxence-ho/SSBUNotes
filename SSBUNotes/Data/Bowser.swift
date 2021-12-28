//
//  Bowser.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let bowser = Character(
    id: 15,
    url_name: "bowser",
    name: "Bowser",
    background_color: UIColor(named: "bowser_background_color") ?? .black,
    icon: UIImage(named: "bowser_icon") ?? UIImage(),
    image: UIImage(named: "bowser_image") ?? UIImage(),
    stats: CharacterStatsData.bowser_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let bowser_stats = CharacterStats(weight: 135)
}
