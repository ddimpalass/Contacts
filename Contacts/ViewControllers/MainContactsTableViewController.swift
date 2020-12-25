//
//  MainContactsTableViewController.swift
//  Contacts
//
//  Created by Apple on 22.12.2020.
//

import UIKit

class MainContactsTableViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? DetailContactTableViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        viewController?.person = persons[indexPath.row]
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
