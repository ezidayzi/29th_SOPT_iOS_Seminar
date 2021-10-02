//
//  ViewController.swift
//  week1
//
//  Created by 김윤서 on 2021/10/02.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var happyLabel: UILabel!
    
    @IBAction func touchUpChangeLabelButton(_ sender: Any) {
        happyLabel.text = "응 행복해"
        happyLabel.font = .systemFont(ofSize: 15)
        happyLabel.textColor = .blue
    }
    
    @IBAction func touchUpToGoNextModalViewController(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "NextModalViewController") else {return}
        self.navigationController?.pushViewController(nextVC, animated: true)
//        self.present(nextVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

