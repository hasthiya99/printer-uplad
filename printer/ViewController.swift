//
//  ViewController.swift
//  printer
//
//  Created by Rashminda Bandara on 5/20/20.
//  Copyright © 2020 Rashminda kumara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func print(_ sender: Any) {
        
        let printController = UIPrintInteractionController.shared
         // 2
         let printInfo = UIPrintInfo(dictionary:nil)
         printInfo.outputType = .general
         printInfo.jobName = "print"
         printController.printInfo = printInfo
                 
         // 3
        let formatter = UIMarkupTextPrintFormatter(markupText: textLbl.text!)
         formatter.perPageContentInsets = UIEdgeInsets(top: 72, left: 72, bottom: 72, right: 72)
         printController.printFormatter = formatter
                 
         // 4
        printController.present(animated: true, completionHandler: nil)
    }
    
}

