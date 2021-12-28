//
//  CharacterNoteView.swift
//  SSBUNotes
//
//  Created by maxence on 10/12/2021.
//

import SwiftUI

struct CharacterNoteView: View
{
  @Binding var character: Character
  
  var body: some View
  {
    TextEditor(text: $character.note)
      .onChange(of: character.note, perform: { value in
        RealmManager.write_or_update_character_note(
          character_id: character.id,
          value: value
        )
      })
      .onAppear(perform: {
        if character.note.isEmpty
        {
          character.note = "Start \(character.name) notes here..."
        }
      })
      .padding()
  }
}

struct CharacterNoteView_Previews: PreviewProvider {
    
  static var previews: some View
  {
    Group
    {
      CharacterNoteView(character: .constant(CharacterData.mario))
        .previewDevice("iPhone 12 Pro Max")
      CharacterNoteView(character: .constant(CharacterData.bowser))
        .preferredColorScheme(.dark)
        .previewDevice("iPad Air (4th generation)")
    }
  }
}
