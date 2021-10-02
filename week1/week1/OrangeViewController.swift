//
//  OrangeViewController.swift
//  week1
//
//  Created by 김윤서 on 2021/10/02.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func touchUpToSendData(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "PurpleViewController") as? PurpleViewController else {return}
        
        nextVC.message = dataTextField.text
        nextVC.modalPresentationStyle = .fullScreen
        
        self.present(nextVC, animated: true, completion: nil)
    }
}
