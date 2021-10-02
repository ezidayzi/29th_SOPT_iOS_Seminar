//
//  NextModalViewController.swift
//  week1
//
//  Created by 김윤서 on 2021/10/02.
//

import UIKit

class NextModalViewController: UIViewController {

    @IBAction func touchUpToGoBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
//        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
