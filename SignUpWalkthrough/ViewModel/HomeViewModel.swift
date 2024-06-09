//
//  HomeViewModel.swift
//  SignUpWalkthrough
//
//  Created by Abdul Ahad AhmadA on 07/06/24.
//

import Foundation
import UIKit
class HomeViewModel {
     var coordinator: NavigationCoordinatorStack?
        
        init(coordinator: NavigationCoordinatorStack) {
            self.coordinator = coordinator
        }
        
        func goToSignUpScreen() {
            coordinator?.navigateToSignUpVC()
        }
   
}
