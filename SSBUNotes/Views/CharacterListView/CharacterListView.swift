//
//  CharacterListView.swift
//  SSBUNotes
//
//  Created by maxence on 09/12/2021.
//

import SwiftUI

struct CharacterListView: View
{
  @State var characters = CharacterData.characters
  @State private var search_text = ""
  
  var items: [GridItem] =
    [ GridItem(.adaptive(minimum: 130, maximum: 260))
    ]
  
  var body: some View
  {
    NavigationView
    {
      ScrollView(.vertical, showsIndicators: false)
      {
        if search_text.isEmpty
        {
          NavigationLink(destination: GeneralNoteView())
          {
            ZStack
            {
              Color.gray
              Text("General notes").bold()
            }
            .frame(height: 60)
          }
          .buttonStyle(PlainButtonStyle())
        }
        LazyVGrid(columns: items, spacing: Theme.margin/2)
        {
          ForEach($characters, id: \.id)
          { character in
            if searchResults.contains(where: { $0.id == character.id }) {
              NavigationLink(destination: CharacterTabView(character: character))
              {
                CharacterCellView(character: character)
              }
            }
          }
        }
      }
      .padding(Theme.margin)
      .ignoresSafeArea(edges: .bottom)
      .navigationTitle("Character List")
      .searchable(
        text: $search_text,
        placement: .navigationBarDrawer(displayMode: .always)
      )
    }
  }
  
  var searchResults: [Character] {
      if search_text.isEmpty {
          return characters
      } else {
        return characters.filter { $0.name.lowercased().contains(search_text.lowercased()) }
      }
  }
}

struct CharacterListView_Previews: PreviewProvider {
    
  static var previews: some View
  {
    Group
    {
      CharacterListView()
        .previewDevice("iPhone 12 Pro Max")
      CharacterListView()
        .preferredColorScheme(.dark)
        .previewDevice("iPad Air (4th generation)")
.previewInterfaceOrientation(.landscapeLeft)
    }
  }
}
