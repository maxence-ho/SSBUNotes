//
//  Link.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let link = Character(
    id: 2,
    url_name: "link",
    name: "Link",
    background_color: UIColor(named: "link_background_color") ?? .black,
    icon: UIImage(named: "link_icon") ?? UIImage(),
    image: UIImage(named: "link_image") ?? UIImage(),
    note: ""
  )
}
