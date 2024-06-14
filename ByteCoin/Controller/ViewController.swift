//
//  ViewController.swift
//  ByteCoin
//
//  Created by Soham Kayal on 15/06/2024.
//  Copyright © 2019 Soham Kayal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    let coinManager = CoinManager();
    
    // for determining the total number of columns for the picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    // for determining the total number of rows for the picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count;
    }
    
    // returns rowtitle for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row];
    }
    
    // prints the value of the row when selcted
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // print(coinManager.currencyArray[row]);
        coinManager.getCoinPrice(for: coinManager.currencyArray[row]);
    }
    

    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currencyPicker.dataSource = self;
        currencyPicker.delegate = self;
    }


}

