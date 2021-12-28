//
//  CharacterCellView.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import SwiftUI

struct CharacterCellView: View
{
  @Binding var character: Character
  
  var body: some View
  {
    ZStack
    {
      Color(character.background_color)
      HStack
      {
        Spacer()
        Image(uiImage: character.image)
          .resizable()
          .scaledToFit()
      }
      VStack
      {
        Spacer()
        ZStack(alignment: .bottom)
        {
          HStack
          {
            Text(character.name)
              .bold()
              .foregroundColor(Color.white)
            Spacer()
          }
          .padding(Theme.margin)
        }
        .background(Color(Theme.Color.blackOverlayColor))
      }
    }
    .frame(height: 130)
  }
}

struct CharacterCellView_Previews: PreviewProvider
{
    
  static var previews: some View
  {
    Group
    {
      CharacterCellView(character: .constant(CharacterData.mario))
        .previewDevice("iPhone 12 Pro Max")
      CharacterCellView(character: .constant(CharacterData.bowser))
        .previewDevice("iPad Air (4th generation)")
    }
  }
}
