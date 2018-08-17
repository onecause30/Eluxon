//
//  ViewController.swift
//  Eluxon
//
//  Created by Anthony Hall on 8/16/18.
//  Copyright © 2018 Anthony Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var onOffLbl: UILabel!
    
    @IBOutlet weak var toggleBTN: UIButton!

    var switchStatus: SwitchStatus = .off
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
        toggleBTN.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            onOffLbl.text = "🌚OFF🌚"
            onOffLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }else{
            toggleBTN.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLbl.text = "🌝ON🌝"
            onOffLbl.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            
        }
        
        
    }
    

}

