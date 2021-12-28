//
//  Mario.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let mario = Character(
    id: 0,
    url_name: "mario",
    name: "Mario",
    background_color: UIColor(named: "mario_background_color") ?? .black,
    icon: UIImage(named: "mario_icon") ?? UIImage(),
    image: UIImage(named: "mario_image") ?? UIImage(),
    note: ""
  )
}
