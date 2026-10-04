//
//  AirplancePageViewController.swift
//  m2l6
//
//  Created by AndreyM on 04.10.2026.
//

import UIKit

class AirplancePageViewController: UIViewController {

    var item : TableRow? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = item?.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    deinit {
        print("deinit")
    }


}
