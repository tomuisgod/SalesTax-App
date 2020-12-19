//
//  ViewController.swift
//  SalesTax
//
//  Created by tomu on 19/12/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceTxt: UITextField!
    
    @IBOutlet weak var salesTaxTxt:
        UITextField!
    @IBOutlet weak var totalPriceLbl:
        UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = "Sales Tax Calculator"
    }
    @IBAction func calcTotal( sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "$\(totalPrice)"
    }
}

