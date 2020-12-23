//
//  Person.swift
//  Contacts
//
//  Created by Apple on 22.12.2020.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getPersons() -> [Person]{
        
        var personArray: [Person] = []

        for index in 0..<dataManager.firstNameArray.count{
            personArray.append(Person(firstName: dataManager.firstNameArrayShuffled[index],
                                      lastName: dataManager.secondNameArrayShuffled[index],
                                      phoneNumber: dataManager.phoneNumberArrayShuffled[index],
                                      email: dataManager.emailArrayShuffled[index]))
        }
        return personArray
    }
}

