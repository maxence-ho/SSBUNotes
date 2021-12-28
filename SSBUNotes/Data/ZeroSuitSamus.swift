//
//  ZeroSuitSamus.swift
//  SSBUNotes
//
//  Created by maxence on 14/12/2021.
//

import UIKit

extension CharacterData
{
  static let zss = Character(
    id: 33,
    url_name: "zero_suit_samus",
    name: "Zero Suit Samus",
    background_color: UIColor(named: "zss_background_color") ?? .black,
    icon: UIImage(named: "zss_icon") ?? UIImage(),
    image: UIImage(named: "zss_image") ?? UIImage(),
    note: ""
  )
}
