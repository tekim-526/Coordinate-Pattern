//
//  Coordinator.swift
//  CoordinatePattern
//
//  Created by Kim TaeSoo on 2023/03/09.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let vc = FirstViewController()
        vc.coordinator = self
        vc.view.backgroundColor = .green
        navigationController.pushViewController(vc, animated: false)
    }
    func moveToSecondVC() {
        let vc = SecondViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
