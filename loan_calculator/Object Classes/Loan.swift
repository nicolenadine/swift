//
//  Loan.swift
//  OwnYourLoan
//
//  Created by Nicole Parziale on 6/18/20.
//  Copyright © 2020 Nicole Parziale. All rights reserved.
//

import Foundation

struct Loan {
    
    // Mark: user supplied values
    var loanAmount: Double
    var annualInterestRate: Double
    var termLengthinYears: Double
    
    // Mark: interest rate taken from annual to monthly rate
    var rateInMonths: Double {
        return (annualInterestRate / Double(100)) / Double(12)
    }
    
    // Mark: Loan length converted from years into months.
    var totalNumPayments: Double {
        return termLengthinYears * Double(12)
    }
    
    // Mark: extracted portion of formula for reuse and simplification
    var powRateAndTerm: Double {
        return pow( (1.0 + rateInMonths), (totalNumPayments) )
    }
    
    var monthlyPaymentAmount: Double {
        return ( loanAmount * (rateInMonths * powRateAndTerm)
            / (powRateAndTerm - 1.0) )
    }
    
    var totalLoanCost: Double {
        return monthlyPaymentAmount * totalNumPayments
    }

    var totalInterestPaid: Double {
        return totalLoanCost - loanAmount
    }
    
    init(loanAmount amount: Double, annualInterestRate rate: Double, termLengthInYears term: Double) {
        self.loanAmount = amount
        self.annualInterestRate = rate
        self.termLengthinYears = term
    }
    
    mutating func modifyLoanAmount(amount: Double){
        self.loanAmount = amount
    }
    
    mutating func modifyInterestRate(interest: Double){
        self.annualInterestRate = interest
    }
    
    mutating func modifyTermLength(term: Double){
        self.termLengthInYears = term
    }

}


