//
//  SecondContactsTableViewController.swift
//  Contacts
//
//  Created by Apple on 22.12.2020.
//

import UIKit

class SecondContactsTableViewController: UITableViewController {
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView {
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.size.width, height: 30))
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = persons[section].fullName
        return label
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneNumberTableCell") as! SecondPhoneNumberTableCell
            cell.textLabel?.text = persons[indexPath.section].phoneNumber
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailTableCell") as! SecondEmailTableCell
            cell.textLabel?.text = persons[indexPath.section].email
            return cell
        }
    }
}
