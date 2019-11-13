//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Ben Gohlke on 8/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets/Properties
    
    enum Currency {
        case cad
        case mxn
    }
    
    var currency = Currency = .cad
    
    
    @IBOutlet weak var fromCurrencyTextField: UITextField!
    @IBOutlet weak var toCurrencyTextField: UITextField!
    
    @IBOutlet weak var toCurrencyLabel: UILabel!
    
    @IBOutlet weak var cadButton: UIButton!
    @IBOutlet weak var mxnButton: UIButton!

    // MARK: - Actions
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        guard let dollarsString = fromCurrencyTextField.text else { return }
        
        let dollars = Double(dollarsString) else { return }
        
        let convertedCurrency = convert(dollars: dollars)
        
        toCurrencyTextField = "$\(convertedCurrency)"
        
        }
        
        
    }

    
    @IBAction func cadButtonTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        mxnButton.isSelected.toggle()
        
        if sender.isSelected {
            currency = .cad
            
        toCurrencyLabel.text = "Currency (CAD)"
    
        }
    }
    @IBAction func mxnButtonTapped(_ sender: UIButton) {
        
         sender.isSelected.toggle()
             cadButton.isSelected.toggle()
             
             if sender.isSelected {
                 currency = .mxn
                 
             toCurrencyLabel.text = "Currency (MXN)"
         
        
        
    }
    
    // MARK: - Helper Methods
}

    func convert(dollars: Double) -> Double {
        switch currency {
        case .cad:
            return dollars * 1.32
        case .mxn:
            return dollars * 19.12
        }

        }

}
