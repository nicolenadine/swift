//
//  PrinicipalTableViewCell.swift
//  OwnYourLoan
//
//  Created by Nicole Parziale on 6/22/20.
//  Copyright © 2020 Nicole Parziale. All rights reserved.
//

import UIKit

class LoanAmountTableViewCell: UITableViewCell {

    @IBOutlet var loanAmountLabel: UILabel!
    
    @IBOutlet var userLoanInput: UITextField!
    

    @IBAction func assignLoanAmount(_ sender: UITextField) {
        userLoan.
    }
    
    func convertTextToDouble(){
        guard userLoan.loanAmount = Double(userLoanInput.text!) != nil
            else{
               print("Invalid input from user")
               return
            }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
