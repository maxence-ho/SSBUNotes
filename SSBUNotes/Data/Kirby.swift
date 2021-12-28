//
//  Kirby].swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import UIKit

extension CharacterData
{
  static let kirby = Character(
    id: 6,
    url_name: "kirby",
    name: "Kirby",
    background_color: UIColor(named: "kirby_background_color") ?? .black,
    icon: UIImage(named: "kirby_icon") ?? UIImage(),
    image: UIImage(named: "kirby_image") ?? UIImage(),
    note: ""
  )
}
