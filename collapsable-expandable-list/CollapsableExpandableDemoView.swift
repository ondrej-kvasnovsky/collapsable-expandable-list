//
//  CollapsableExpandableDemoView.swift
//  collapsable-expandable-list
//
//  Created by Ondrej Kvasnovsky on 2/7/23.
//

import SwiftUI

struct CollapsableSectionsDemoView: View {
  
  let contacts = [
    "John",
    "Ashley",
    "Bobby",
    "Jimmy",
    "Fredie"
  ]
  
  var body: some View {
    NavigationView {
      VStack {
        List {
          Section("Section 1") {
            ForEach(contacts, id: \.self) { contact in
              Text(contact)
            }
          }
          
          Section("Section 2") {
            ForEach(contacts, id: \.self) { contact in
              Text(contact)
            }
          }
        }
      }
    }
  }
}

struct CollapsableSectionsDemoView_Previews: PreviewProvider {
  static var previews: some View {
    CollapsableSectionsDemoView()
      .preferredColorScheme(.dark)
  }
}

