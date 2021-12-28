//
//  Yoshi.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let yoshi = Character(
    id: 5,
    url_name: "yoshi",
    name: "Yoshi",
    background_color: UIColor(named: "yoshi_background_color") ?? .black,
    icon: UIImage(named: "yoshi_icon") ?? UIImage(),
    image: UIImage(named: "yoshi_image") ?? UIImage(),
    note: ""
  )
}
