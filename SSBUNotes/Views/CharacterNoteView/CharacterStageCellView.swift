//
//  CharacterStageCellView.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import SwiftUI

struct CharacterStageCellView: View
{
  let stage: Stage
  
  var body: some View
  {
    ZStack
    {
      Image(uiImage: stage.image)
        .resizable()
        .scaledToFit()
      VStack
      {
        Spacer()
        ZStack(alignment: .bottom)
        {
          HStack
          {
            Text(stage.stage_type.name)
              .bold()
              .foregroundColor(Color.white)
            Spacer()
          }
          .padding(Theme.margin)
        }
        .background(Color(Theme.Color.lightblackOverlayColor))
      }
    }
  }
}

struct CharacterStageCellView_Previews: PreviewProvider {
    
  static var previews: some View
  {
    Group
    {
      CharacterStageCellView(stage: Stage.allCase.first!)
        .previewDevice("iPhone 12 Pro Max")
      CharacterStageCellView(stage: Stage.allCase.last!)
        .preferredColorScheme(.dark)
        .previewDevice("iPad Air (4th generation)")
.previewInterfaceOrientation(.landscapeLeft)
    }
  }
}
