//
//  CharacterData.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import UIKit
import SwiftUI

class CharacterData
{
  static let characters: [Character] =
    [ mario
    , donkey_kong
    , link
    , samus
    , dark_samus
    , yoshi
    , kirby
    , fox
    , pikachu
    , luigi
    , ness
    , captain_falcon
    , jigglypuff
    , peach
    , daisy
    , bowser
    , ice_climbers
    , sheik
    , zelda
    , dr_mario
    , pichu
    , falco
    , marth
    , lucina
    , young_link
    , ganondorf
    , roy
    , chrom
    , mr_game_and_watch
    , meta_knight
    , pit
    , dark_pit
    , zss
    , wario
    , snake
    , ike
    , pokemon_trainer
    , diddy_kong
    , lucas
    , sonic
    , ddd
    , olimar
    , lucario
    , rob
    ]
    .sorted(by: { $0.id < $1.id })
}
