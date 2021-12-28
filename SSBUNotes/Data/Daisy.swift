//
//  Daisy.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let daisy = Character(
    id: 14,
    url_name: "daisy",
    name: "Daisy",
    background_color: UIColor(named: "daisy_background_color") ?? .black,
    icon: UIImage(named: "daisy_icon") ?? UIImage(),
    image: UIImage(named: "daisy_image") ?? UIImage(),
    note: ""
  )
}
