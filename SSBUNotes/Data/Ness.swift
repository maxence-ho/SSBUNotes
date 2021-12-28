//
//  Ness.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let ness = Character(
    id: 10,
    url_name: "ness",
    name: "Ness",
    background_color: UIColor(named: "ness_background_color") ?? .black,
    icon: UIImage(named: "ness_icon") ?? UIImage(),
    image: UIImage(named: "ness_image") ?? UIImage(),
    note: ""
  )
}
