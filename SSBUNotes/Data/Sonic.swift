//
//  Sonic.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let sonic = Character(
    id: 40,
    url_name: "sonic",
    name: "Sonic",
    background_color: UIColor(named: "sonic_background_color") ?? .black,
    icon: UIImage(named: "sonic_icon") ?? UIImage(),
    image: UIImage(named: "sonic_image") ?? UIImage(),
    note: ""
  )
}
