//
//  NavigationCoordinatorStack.swift
//  SignUpWalkthrough
//
//  Created by Abdul Ahad AhmadA on 07/06/24.
//

import Foundation
import UIKit
class NavigationCoordinatorStack : Coordinator {
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = HomeViewModel(coordinator: self)
        let view = ViewControllerAccessors.homeViewController
        view.viewModel = viewModel
        navigationController.pushViewController(view, animated: true)
    }
    
    func navigateToSignUpVC() {
        DispatchQueue.main.async {
            //let  viewModel = SignUpViewModel(coordinator: self)
            let view = ViewControllerAccessors.signUpFormViewController
         //   view.viewModel = viewModel
            self.navigationController.pushViewController(view, animated: true)
        }
    }
    
}
