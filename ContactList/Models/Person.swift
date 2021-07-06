//
//  Person.swift
//  ContactList
//
//  Created by Alex Tegai on 16.06.2021.
//

import Foundation

struct Person: Identifiable {
   
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(surname) \(name)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
       
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum SystemImages: String {
    case phone = "phone"
    case email = "tray"
    case avatar = "person.fill"
    case contacts = "person.3"
}


