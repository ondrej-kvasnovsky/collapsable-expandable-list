//
//  CollapsableSectionsFormDemoView.swift
//  collapsable-expandable-list
//
//  Created by Ondrej Kvasnovsky on 2/7/23.
//

import SwiftUI

struct CollapsableSectionsFormDemoView: View {
  
  let contacts = [
    "John",
    "Ashley",
    "Bobby",
    "Jimmy",
    "Fredie"
  ]
  
  var body: some View {
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
    .listStyle(SidebarListStyle())
  }
}

struct CollapsableSectionsFormDemoView_Previews: PreviewProvider {
  static var previews: some View {
    CollapsableSectionsFormDemoView()
      .preferredColorScheme(.dark)
  }
}

