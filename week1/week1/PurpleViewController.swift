//
//  PurpleViewController.swift
//  week1
//
//  Created by 김윤서 on 2021/10/02.
//

import UIKit

class PurpleViewController: UIViewController {
    
    var message: String?
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMessageLabel()

    }
    
    func setMessageLabel() {
        if let msg = message {
            dataLabel.text = msg
            dataLabel.sizeToFit()
        }
    }
    
    @IBAction func touchUpToGoBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
