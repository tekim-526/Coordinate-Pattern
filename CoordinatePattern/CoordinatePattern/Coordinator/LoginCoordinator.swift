//
//  LoginCoordinator.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/10.
//

import UIKit

protocol LoginCoordinatorDelegate {
    func didLoggedIn(_ coordinator: LoginCoordinator)
}

class LoginCoordinator: Coordinator, LoginViewControllerDelegate {
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    var delegate: LoginCoordinatorDelegate?
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController()
        vc.view.backgroundColor = .brown
        vc.delegate = self
        self.navigationController.viewControllers = [vc]
    }
    func login() {
        self.delegate?.didLoggedIn(self)
    }
    
}
