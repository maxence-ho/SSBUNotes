//
//  DiddyKong.swift
//  SSBUNotes
//
//  Created by maxence on 15/12/2021.
//

import UIKit

extension CharacterData
{
  static let diddy_kong = Character(
    id: 38,
    url_name: "diddy_kong",
    name: "Diddy Kong",
    background_color: UIColor(named: "diddy_kong_background_color") ?? .black,
    icon: UIImage(named: "diddy_kong_icon") ?? UIImage(),
    image: UIImage(named: "diddy_kong_image") ?? UIImage(),
    note: ""
  )
}
