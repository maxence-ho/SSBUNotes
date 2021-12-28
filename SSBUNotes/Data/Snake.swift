//
//  Snake.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let snake = Character(
    id: 35,
    url_name: "snake",
    name: "Snake",
    background_color: UIColor(named: "snake_background_color") ?? .black,
    icon: UIImage(named: "snake_icon") ?? UIImage(),
    image: UIImage(named: "snake_image") ?? UIImage(),
    stats: CharacterStatsData.snake_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let snake_stats = CharacterStats(weight: 106)
}
