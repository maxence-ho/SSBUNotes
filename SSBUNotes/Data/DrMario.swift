//
//  DrMario.swift
//  SSBUNotes
//
//  Created by maxence on 12/12/2021.
//

import UIKit

extension CharacterData
{
  static let dr_mario = Character(
    id: 19,
    url_name: "dr_mario",
    name: "Dr Mario",
    background_color: UIColor(named: "dr_mario_background_color") ?? .black,
    icon: UIImage(named: "dr_mario_icon") ?? UIImage(),
    image: UIImage(named: "dr_mario_image") ?? UIImage(),
    note: ""
  )
}
