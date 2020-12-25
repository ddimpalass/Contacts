//
//  DataManager.swift
//  Contacts
//
//  Created by Apple on 23.12.2020.
//
class DataManager {
    
    static let shared = DataManager()
    
    let firstNameArray = ["Петя",
                          "Вася",
                          "Лиза",
                          "Инна",
                          "Егор",
                          "Стас",
                          "Катя",
                          "Света",
                          "Миша",
                          "Игорь"]
    let secondNameArray = ["Завъялов(а)",
                           "Зайцев(а)",
                           "Суспицин(а)",
                           "Фролов(а)",
                           "Яйкин(а)",
                           "Кузнецов(а)",
                           "Климов(а)",
                           "Дружинин(а)",
                           "Петров(а)",
                           "Прохоров(а)"]
    let phoneNumberArray = ["+7(916)234-32-32",
                            "+7(999)637-21-68",
                            "+7(925)274-24-11",
                            "+7(960)457-99-00",
                            "+7(916)164-36-62",
                            "+7(920)500-34-01",
                            "+7(916)896-33-43",
                            "+7(926)254-85-23",
                            "+7(916)964-43-86",
                            "+7(917)567-98-30"]
    let emailArray = ["cat666@ya.ru",
                      "gender@mail.ru",
                      "slicer67@yahoo.com",
                      "12boss@inbox.ru",
                      "Pro100@mail.ru",
                      "MyMail@yandex.ru",
                      "Cheba1987@gmail.ru",
                      "3211230@gmail.com",
                      "secretName@yandex.ru",
                      "love100@mail.ru"]
    
    let firstNameArrayShuffled: [String]
    let secondNameArrayShuffled: [String]
    let phoneNumberArrayShuffled: [String]
    let emailArrayShuffled: [String]
    
    init() {
        self.firstNameArrayShuffled = firstNameArray.shuffled()
        self.secondNameArrayShuffled = secondNameArray.shuffled()
        self.phoneNumberArrayShuffled = phoneNumberArray.shuffled()
        self.emailArrayShuffled = emailArray.shuffled()
    }
}


