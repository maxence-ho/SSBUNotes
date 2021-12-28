//
//  DonkeyKong.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let donkey_kong = Character(
    id: 1,
    url_name: "donkey_kong",
    name: "Donkey Kong",
    background_color: UIColor(named: "donkey_kong_background_color") ?? .black,
    icon: UIImage(named: "donkey_kong_icon") ?? UIImage(),
    image: UIImage(named: "donkey_kong_image") ?? UIImage(),
    note: ""
  )
}
