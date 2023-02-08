//
//  CustomCollapsableSectionsDemoView.swift
//  collapsable-expandable-list
//
//  Created by Ondrej Kvasnovsky on 2/7/23.
//

import SwiftUI

struct SectionHeader: View {
  
  @State var title: String
  @Binding var isOn: Bool
  @State var onLabel: String
  @State var offLabel: String
  
  var body: some View {
    Button(action: {
      withAnimation {
        isOn.toggle()
      }
    }, label: {
      if isOn {
        Text(onLabel)
      } else {
        Text(offLabel)
      }
    })
    .font(Font.caption)
    .foregroundColor(.accentColor)
    .frame(maxWidth: .infinity, alignment: .trailing)
    .overlay(
      Text(title),
      alignment: .leading
    )
  }
}

struct CustomCollapsableSectionsDemoView: View {
  
  let contacts = [
    "John",
    "Ashley",
    "Bobby",
    "Jimmy",
    "Fredie"
  ]
  
  @State var showingSection1 = true
  @State var showingSection2 = true
  
  var body: some View {
    List {
      Section(
        header: SectionHeader(
          title: "Section 1",
          isOn: $showingSection1,
          onLabel: "Hide",
          offLabel: "Show"
        )
      ) {
        if showingSection1 {
          ForEach(contacts, id: \.self) { contact in
            Text(contact)
          }
        }
      }
      
      Section(
        header: SectionHeader(
          title: "Section 2",
          isOn: $showingSection2,
          onLabel: "Hide",
          offLabel: "Show"
        )
      ) {
        if showingSection2 {
          ForEach(contacts, id: \.self) { contact in
            Text(contact)
          }
        }
      }
    }
  }
}

struct CustomCollapsableSectionsDemoView_Previews: PreviewProvider {
  static var previews: some View {
    CustomCollapsableSectionsDemoView()
      .preferredColorScheme(.dark)
  }
}

