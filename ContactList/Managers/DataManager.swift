//
//  DataManager.swift
//  ContactList
//
//  Created by Alex Tegai on 16.06.2021.
//

class DataManager {
    
    static let shared = DataManager()
        
    let names = [
        "Jason", "Broke", "Scarlette", "Charlotte",
        "Jin", "Klark", "John", "Joe"
    ]
    
    let surnames = [
        "Dow", "Smoth", "McDrew", "Helson",
        "Williams", "Buttler", "Black", "Selton"
    ]
    
    let emails = [
        "sdsd@mail.com", "wewe@mail.com", "klklk@mail.com",
        "wfsfw@mail.com", "wdpwkf@mail.com", "pokn@mail.com",
        "fooh@mail.com", "lkgoht@mail.com"
    ]
    
    let phoneNumbers = [
        "2124443", "3245323", "2342344", "3535367",
        "6463355", "6652467", "4546722", "5467741"
    ]
    
    private init() {}
}
