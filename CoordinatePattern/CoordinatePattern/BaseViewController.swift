//
//  BaseViewController.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/09.
//

import UIKit

class BaseViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = ""
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
