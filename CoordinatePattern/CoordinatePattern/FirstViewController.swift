//
//  FirstViewController.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/09.
//

import UIKit

class FirstViewController: BaseViewController {
    var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        coordinator?.moveToSecondVC()
        // Do any additional setup after loading the view.
    }


}
