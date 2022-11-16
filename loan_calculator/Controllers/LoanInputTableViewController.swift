//
//  LoanInputTableViewController.swift
//  OwnYourLoan
//
//  Created by Nicole Parziale on 6/22/20.
//  Copyright © 2020 Nicole Parziale. All rights reserved.
//

import UIKit

class LoanInputTableViewController: UITableViewController {

    var userLoan = Loan(loanAmount: 1, annualInterestRate: 1, termLengthInYears: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 8
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
           switch indexPath.section {
           case 0:
               let cell = tableView.dequeueReusableCell(withIdentifier: "enterInfo", for: indexPath)
               return cell
           case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "loanAmount", for: indexPath)
               return cell
           case 2:
               let cell = tableView.dequeueReusableCell(withIdentifier: "interest", for: indexPath)
               return cell
           case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "termInYears", for: indexPath)
               return cell
           case 4:
               let cell = tableView.dequeueReusableCell(withIdentifier: "monthlyPayment", for: indexPath)
               return cell
           case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "totalInterest", for: indexPath)
               return cell
           case 6:
               let cell = tableView.dequeueReusableCell(withIdentifier: "totalLoanCost", for: indexPath)
               return cell
           case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonToSetGoals", for: indexPath)
               return cell
           default:
               return UITableViewCell()
           }
       }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
