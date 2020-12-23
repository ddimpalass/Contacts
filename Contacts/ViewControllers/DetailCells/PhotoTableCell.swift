//
//  PhotoTableCell.swift
//  Contacts
//
//  Created by Apple on 23.12.2020.
//

import UIKit

class PhotoTableCell: UITableViewCell {
    @IBOutlet weak var photoContact: UIImageView!

    override func awakeFromNib() {
            super.awakeFromNib()
            photoContact.layer.cornerRadius = self.photoContact.frame.height / 2
            photoContact.clipsToBounds = true
        }
}
