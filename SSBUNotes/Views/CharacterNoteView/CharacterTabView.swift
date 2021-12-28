//
//  CharacterTabView.swift
//  SSBUNotes
//
//  Created by maxence on 13/12/2021.
//

import SwiftUI

struct CharacterTabView: View
{
  @Binding var character: Character
  
  var body: some View
  {
    TabView
    {
      CharacterNoteView(character: $character)
        .tabItem
        {
          Label("Notes", systemImage: "square.and.pencil")
        }
        .onAppear(perform: {
          RealmManager.fetch_character_note(
            character_id: character.id,
            completion: { character_note in
              self.character.note = character_note.value
            }
            , notFoundCompletion: {
              self.character.note = "Start \(character.name) notes here..."
            }
          )
        })
      CharacterStageView(character: $character)
        .tabItem
        {
          Label("Stages", systemImage: "option")
        }
      CharacterStatsView(character: character)
        .tabItem
        {
          Label("Stats", systemImage: "brain.head.profile")
        }
    }
    .navigationTitle(character.name)
  }
}

struct CharacterTabView_Previews: PreviewProvider {
    
  static var previews: some View
  {
    Group
    {
      CharacterTabView(character: .constant(CharacterData.mario))
        .previewDevice("iPhone 12 Pro Max")
      CharacterTabView(character: .constant(CharacterData.bowser))
        .preferredColorScheme(.dark)
        .previewDevice("iPad Air (4th generation)")
    }
  }
}

