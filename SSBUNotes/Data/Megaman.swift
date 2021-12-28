//
//  Megaman.swift
//  SSBUNotes
//
//  Created by maxence on 28/12/2021.
//

import UIKit

extension CharacterData
{
  static let megaman = Character(
    id: 44,
    url_name: "megaman",
    name: "Megaman",
    background_color: UIColor(named: "megaman_color") ?? .black,
    icon: UIImage(named: "megaman_icon") ?? UIImage(),
    image: UIImage(named: "megaman_image") ?? UIImage(),
    note: ""
  )
}
