//
//  LoginViewcontroller.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/10.
//

import UIKit

protocol LoginViewControllerDelegate {
    func login()
}

class LoginViewController: UIViewController {
    var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UIBarButtonItem(title: "로그인", style: .plain, target: self, action: #selector(loginButtonTapped))
        self.navigationItem.rightBarButtonItem = item
    }
    deinit {
        print("- \(type(of: self)) deinit")
    }
    @objc func loginButtonTapped() {
        self.delegate?.login()
    }
}
