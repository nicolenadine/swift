//
//  LoanTermTableViewCell.swift
//  OwnYourLoan
//
//  Created by Nicole Parziale on 6/22/20.
//  Copyright © 2020 Nicole Parziale. All rights reserved.
//

import UIKit

class LoanTermTableViewCell: UITableViewCell {

    @IBOutlet var termLabel: UIView!
    
    @IBOutlet var userTermInput: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
