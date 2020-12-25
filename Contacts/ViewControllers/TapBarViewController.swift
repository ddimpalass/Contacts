//
//  TapBarViewController.swift
//  Contacts
//
//  Created by Apple on 25.12.2020.
//

import UIKit

class TapBarViewController: UITabBarController {

    var persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]){
        let mainNavigationVC = viewControllers?.first as? UINavigationController
        let mainContactsTableVC = mainNavigationVC?.viewControllers.first as? MainContactsTableViewController
        let secondNavigationVC = viewControllers?.last as? UINavigationController
        let secondContactsTableVC = secondNavigationVC?.viewControllers.last as? SecondContactsTableViewController
        mainContactsTableVC?.persons = persons
        secondContactsTableVC?.persons = persons
    }

}
