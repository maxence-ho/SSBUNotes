//
//  Jigglypuff.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let jigglypuff = Character(
    id: 12,
    url_name: "jigglypuff",
    name: "Jigglypuff",
    background_color: UIColor(named: "jigglypuff_background_color") ?? .black,
    icon: UIImage(named: "jigglypuff_icon") ?? UIImage(),
    image: UIImage(named: "jigglypuff_image") ?? UIImage(),
    note: ""
  )
}
