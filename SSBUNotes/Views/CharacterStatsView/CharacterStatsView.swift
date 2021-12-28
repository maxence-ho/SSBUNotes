//
//  CharacterStatsView.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import SwiftUI

let base_url = "https://ultimateframedata.com/"

struct CharacterStatsView: View
{
  var character: Character
  
  var body: some View
  {
    WebView(request: URLRequest(url: URL(string:"\(base_url)\(character.url_name)")!))
  }
}
  
struct CharacterMoveCell: View
{
  let move: Move
  let section_is_oos: Bool
  
  var body: some View
  {
    HStack
    {
      Text(move.move_type.rawValue)
      Spacer()
      VStack(alignment: .trailing)
      {
        Text("\(section_is_oos ? move.out_of_shield_startup() : move.startupFrame) startup")
        Text("\(move.lagOnShieldFrame) lag on shield")
      }
      .padding()
    }
  }
}

struct CharacterStatsView_Previews: PreviewProvider
{
  static var previews: some View
  {
    Group
    {
      CharacterStatsView(character: CharacterData.mario)
        .previewDevice("iPhone 12 Pro Max")
      CharacterStatsView(character: CharacterData.bowser)
        .preferredColorScheme(.dark)
        .previewDevice("iPad Air (4th generation)")
        .previewInterfaceOrientation(.landscapeLeft)
    }
  }
}
