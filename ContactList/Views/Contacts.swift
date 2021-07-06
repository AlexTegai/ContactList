//
//  Contacts.swift
//  ContactList
//
//  Created by Alex Tegai on 16.06.2021.
//

import SwiftUI

struct Contacts: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: ContactDetails(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(persons: Person.getContactList())
    }
}
