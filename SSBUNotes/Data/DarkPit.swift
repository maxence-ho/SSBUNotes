//
//  DarkPit.swift
//  SSBUNotes
//
//  Created by maxence on 14/12/2021.
//

import UIKit

extension CharacterData
{
  static let dark_pit = Character(
    id: 32,
    url_name: "dark_pit",
    name: "Dark Pit",
    background_color: UIColor(named: "dark_pit_background_color") ?? .black,
    icon: UIImage(named: "dark_pit_icon") ?? UIImage(),
    image: UIImage(named: "dark_pit_image") ?? UIImage(),
    note: ""
  )
}
