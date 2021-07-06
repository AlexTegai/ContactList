//
//  ContactDetails.swift
//  ContactList
//
//  Created by Alex Tegai on 16.06.2021.
//

import SwiftUI

struct ContactDetails: View {
    let person: Person
    
    var body: some View {
            Form {
                HStack {
                    Spacer()
                    Image(systemName: SystemImages.avatar.rawValue)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                }
                
                RowView(image: SystemImages.phone.rawValue, contact: person.phoneNumber)
                RowView(image: SystemImages.email.rawValue, contact: person.email)
            }
            .navigationBarTitle(person.fullName)
    }
}

struct PersonDetails_Previews: PreviewProvider {
    static var previews: some View {        
        ContactDetails(person: Person.getContactList().first!)
    }
}






