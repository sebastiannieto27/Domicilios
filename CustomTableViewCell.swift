//
//  CustomTableViewCell.swift
//  customTableViewCell
//
//  Created by Yash Patel on 01/11/17.
//  Copyright © 2017 Yash Patel. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var busImage: UIImageView!
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var lb_IdRoute: UILabel!
    
    @IBOutlet weak var ld_NameRoute: UILabel!
    
    @IBOutlet weak var lb_NameSchool: UILabel!
    @IBAction func goToMap(sender: AnyObject) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
