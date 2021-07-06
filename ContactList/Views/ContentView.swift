//
//  ContentView.swift
//  ContactList
//
//  Created by Alex Tegai on 16.06.2021.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            Contacts(persons: persons)
                .tabItem {
                    Image(systemName: SystemImages.contacts.rawValue)
                    Text("Contacts")
                }
            SectionsContactList(persons: persons)
                .tabItem {
                    Image(systemName: SystemImages.phone.rawValue)
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
