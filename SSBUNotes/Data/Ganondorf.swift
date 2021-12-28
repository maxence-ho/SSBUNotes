//
//  Ganondorf.swift
//  SSBUNotes
//
//  Created by maxence on 14/12/2021.
//

import UIKit

extension CharacterData
{
  static let ganondorf = Character(
    id: 25,
    url_name: "ganondorf",
    name: "Ganondorf",
    background_color: UIColor(named: "ganondorf_background_color") ?? .black,
    icon: UIImage(named: "ganondorf_icon") ?? UIImage(),
    image: UIImage(named: "ganondorf_image") ?? UIImage(),
    note: ""
  )
}
