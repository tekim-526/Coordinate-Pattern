//
//  Coordinator.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/09.
//

import UIKit

protocol Coordinator : AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

class AppCoordinator: Coordinator, LoginCoordinatorDelegate, MainCoordinatorDelegate {
    
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var isLoggedIn: Bool = false
   
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isLoggedIn {
            self.showMainViewController()
        } else {
            self.showLoginViewController()
        }
    }
    func showMainViewController() {
        let coordinator = MainCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    func showLoginViewController() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    func didLoggedIn(_ coordinator: LoginCoordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showMainViewController()
    }
    func didLoggedOut(_ coordinator: MainCoordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showLoginViewController()
    }
}




