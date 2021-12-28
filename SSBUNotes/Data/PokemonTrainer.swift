//
//  PokemonTrainer.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let pokemon_trainer = Character(
    id: 37,
    url_name: "pokemon_trainer",
    name: "Pokemon Trainer",
    background_color: UIColor(named: "pokemon_trainer_background_color") ?? .black,
    icon: UIImage(named: "pokemon_trainer_icon") ?? UIImage(),
    image: UIImage(named: "pokemon_trainer_image") ?? UIImage(),
    stats: CharacterStatsData.pokemon_trainer_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let pokemon_trainer_stats = CharacterStats(weight: 0)
}
