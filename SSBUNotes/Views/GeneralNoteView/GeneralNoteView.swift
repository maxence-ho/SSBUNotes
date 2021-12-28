//
//  GeneralNoteView.swift
//  SSBUNotes
//
//  Created by maxence on 11/12/2021.
//

import SwiftUI
import RealmSwift

struct GeneralNoteView: View
{
  private let character_id: Int = -1
  @State private var note: String = ""
  
  var body: some View
  {
    TextEditor(text: $note)
      .onChange(of: note, perform: { value in
        RealmManager.write_or_update_character_note(
          character_id: character_id,
          value: value
        )
      })
      .padding()
      .navigationTitle("General notes")
      .onAppear(perform: {
        RealmManager.fetch_character_note(
          character_id: character_id,
          completion: { character_note in
            if character_note.value.isEmpty {
              self.note = "Start your note here..."
            }
            else
            {
              self.note = character_note.value
            }
          },
          notFoundCompletion: {
            self.note = "Start your note here..."
          }
        )
      })
  }
}
