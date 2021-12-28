//
//  Chrom.swift
//  SSBUNotes
//
//  Created by maxence on 14/12/2021.
//

import UIKit

extension CharacterData
{
  static let chrom = Character(
    id: 28,
    url_name: "chrom",
    name: "Chrom",
    background_color: UIColor(named: "chrom_background_color") ?? .black,
    icon: UIImage(named: "chrom_icon") ?? UIImage(),
    image: UIImage(named: "chrom_image") ?? UIImage(),
    stats: CharacterStatsData.chrom_stats,
    note: ""
  )
}

extension CharacterStatsData
{
  static let chrom_stats = CharacterStats(weight: 95)
}
