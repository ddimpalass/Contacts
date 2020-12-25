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

        for index in 0..<DataManager.shared.firstNameArray.count{
            personArray.append(Person(firstName: DataManager.shared.firstNameArrayShuffled[index],
                                      lastName: DataManager.shared.secondNameArrayShuffled[index],
                                      phoneNumber: DataManager.shared.phoneNumberArrayShuffled[index],
                                      email: DataManager.shared.emailArrayShuffled[index]))
        }
        return personArray
    }
}

