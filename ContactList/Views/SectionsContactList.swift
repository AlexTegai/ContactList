//
//  SectionsContactList.swift
//  ContactList
//
//  Created by Alex Tegai on 16.06.2021.
//

import SwiftUI

struct SectionsContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullName).fontWeight(.bold)) {
                        RowView(
                            image: SystemImages.phone.rawValue,
                            contact: person.phoneNumber
                        )
                        RowView(
                            image: SystemImages.email.rawValue,
                            contact: person.email
                        )
                    }
                }
                .textCase(.none)  
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContactList(persons: Person.getContactList())
    }
}

