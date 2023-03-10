//
//  MainViewController.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/10.
//

import UIKit

protocol MainViewControllerDelegate {
    func logout()
}

class MainViewController: UIViewController {
    var delegate: MainViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UIBarButtonItem(title: "로그아웃", style: .plain, target: self, action: #selector(logoutButtonTapped))
        self.navigationItem.rightBarButtonItem = item
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc func logoutButtonTapped() {
        self.delegate?.logout()
    }
}
