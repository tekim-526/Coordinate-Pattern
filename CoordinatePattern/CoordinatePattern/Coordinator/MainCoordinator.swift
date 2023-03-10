//
//  MainCoordinator.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/10.
//

import UIKit

protocol MainCoordinatorDelegate {
    func didLoggedOut(_ coordinator: MainCoordinator)
}

class MainCoordinator: Coordinator, MainViewControllerDelegate {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    var delegate: MainCoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let vc = MainViewController()
        vc.view.backgroundColor = .cyan
        vc.delegate = self
        self.navigationController.viewControllers = [vc]
    }
    func logout() {
        self.delegate?.didLoggedOut(self)
    }
    
}
