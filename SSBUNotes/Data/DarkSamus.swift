//
//  DarkSamus.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let dark_samus = Character(
    id: 4,
    url_name: "dark_samus",
    name: "Dark Samus",
    background_color: UIColor(named: "dark_samus_background_color") ?? .black,
    icon: UIImage(named: "dark_samus_icon") ?? UIImage(),
    image: UIImage(named: "dark_samus_image") ?? UIImage(),
    note: ""
  )
}
