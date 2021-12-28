//
//  Wario.swift
//  SSBUNotes
//
//  Created by maxence on 14/12/2021.
//

import UIKit

extension CharacterData
{
  static let wario = Character(
    id: 34,
    url_name: "wario",
    name: "Wario",
    background_color: UIColor(named: "wario_background_color") ?? .black,
    icon: UIImage(named: "wario_icon") ?? UIImage(),
    image: UIImage(named: "wario_image") ?? UIImage(),
    note: ""
  )
}
