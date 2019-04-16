//
//  ViewController.swift
//  mans
//
//  Created by Kristine Legzdina on 26/02/2019.
//  Copyright © 2019 Kristine Legzdina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblLabrit: UILabel!
    @IBOutlet weak var viewBus: UIView!
    @IBOutlet weak var datetimePic: UIDatePicker!
    @IBOutlet weak var Smtg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBus.layer.cornerRadius = viewBus.frame.size.width/2
        viewBus.clipsToBounds = true
        viewBus.layer.borderWidth = 2.0
    
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = DateFormatter.Style.short
        dateformatter.timeStyle = DateFormatter.Style.short
        Smtg.text = dateformatter.string(from: NSDate() as Date)
    }
   
    @IBAction func datetimePic(_ sender: UIDatePicker) {
        var laiks: Int = Int(datetimePic.countDownDuration / 60)
        laiks -= 3
        let rez: Int = laiks % 7
        
        if (rez == 0 || rez == 1) {
            viewBus.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            }
         else if (rez == 2 || rez == 6) {
                viewBus.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            }
        else {
                viewBus.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.008498134091, alpha: 1)
            }
        }
    }


