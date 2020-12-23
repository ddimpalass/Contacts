//
//  DetailContactTableViewController.swift
//  Contacts
//
//  Created by Apple on 22.12.2020.
//

import UIKit

class DetailContactTableViewController: UITableViewController {
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = person?.fullName
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "photoTableCell") as! PhotoTableCell
            cell.photoContact.image = UIImage(named: person!.firstName)
            cell.backgroundColor = view.backgroundColor
            
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneNumberTableCell") as! PhoneNumberTableCell
            
            cell.textLabel?.text = "номер телефона"
            cell.detailTextLabel?.text = person?.phoneNumber
            cell.layer.borderWidth = 20
            cell.layer.borderColor = UIColor.systemGroupedBackground.cgColor
            cell.layer.cornerRadius = 30
            cell.clipsToBounds = true
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailTableCell") as! EmailTableCell
            
            cell.textLabel?.text = "почта"
            cell.detailTextLabel?.text = person?.email
            cell.layer.borderWidth = 20
            cell.layer.borderColor = UIColor.systemGroupedBackground.cgColor
            cell.layer.cornerRadius = 30
            cell.clipsToBounds = true
            
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row != 0{
            return 120
        }
        return 190
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 20
        }
}
