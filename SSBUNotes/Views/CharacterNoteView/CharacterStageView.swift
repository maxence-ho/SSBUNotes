//
//  CharacterStageView.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import SwiftUI

struct CharacterStageView: View
{
  
  @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
  @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?

  var items: [GridItem]
  {
    if horizontalSizeClass == .compact && verticalSizeClass == .regular
    {
      // iPhone Portrait
      return [ GridItem(.adaptive(minimum: 200, maximum: 260))
      ]
    }
    else if horizontalSizeClass == .regular && verticalSizeClass == .compact
    {
      // iPhone Landscape
      return [ GridItem(.adaptive(minimum: 200, maximum: 410))
      ]
    }
    else if horizontalSizeClass == .regular && verticalSizeClass == .regular
    {
      // iPad Portrait/Landscape
      return [ GridItem(.adaptive(minimum: 260, maximum: 520))
      ]
    }
    else
    {
      return [ GridItem(.adaptive(minimum: 130, maximum: 260))
      ]
    }
  }
  
  @Binding var character: Character
  @State private var green_stages: [Stage] = []
  @State private var red_stages: [Stage] = []
  
  var body: some View
  {
    ScrollView {
      VStack
      {
        LazyVGrid(
          columns: items,
          alignment: .center,
          spacing: Theme.margin/2
        )
        {
          ForEach(Stage.allCase, id: \.id)
          { stage in
            CharacterStageCellView(stage: stage)
              .onTapGesture
              {
                toggleStage(stage: stage)
              }
              .border(getBorderColor(stage: stage), width: 4)
          }
        }
        Spacer().frame(minHeight: Theme.margin*5)
      }
      .padding(Theme.margin)
      .onAppear(perform: {
        RealmManager.fetch_character_green_stage(
          character_id: character.id,
          completion: { value in
            self.green_stages = value
          }
        )
        RealmManager.fetch_character_red_stage(
          character_id: character.id,
          completion: { value in
            self.red_stages = value
          }
        )
      })
      Text("Click on stage cell to toggle status.")
        .font(.footnote)
    }
  }
  
  private func toggleStage(stage: Stage)
  {
    if green_stages.contains(stage)
    {
      green_stages.removeAll(where: { $0 == stage })
      red_stages.append(stage)
    }
    else if red_stages.contains(stage)
    {
      red_stages.removeAll(where: { $0 == stage })
    }
    else
    {
      green_stages.append(stage)
    }
    RealmManager.write_or_update_character_stages(
      character_id: character.id,
      green_stages: green_stages,
      red_stages: red_stages
    )
  }
  
  private func getBorderColor(stage: Stage) -> Color
  {
    if green_stages.contains(stage)
    {
      return Color.green
    }
    else if red_stages.contains(stage)
    {
      return Color.red
    }
    else
    {
      return Color.clear
    }
  }
}

struct CharacterStageView_Previews: PreviewProvider {
    
  static var previews: some View
  {
    Group
    {
      CharacterStageView(character: .constant(CharacterData.mario))
        .previewDevice("iPhone 12 Pro Max")
      CharacterStageView(character: .constant(CharacterData.bowser))
        .preferredColorScheme(.dark)
        .previewDevice("iPad Air (4th generation)")
.previewInterfaceOrientation(.landscapeLeft)
    }
  }
}
