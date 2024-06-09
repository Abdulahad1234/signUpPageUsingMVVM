//
//  ViewControllerAccessors.swift
//  SignUpWalkthrough
//
//  Created by Abdul Ahad AhmadA on 07/06/24.
//

import Foundation
import UIKit
class ViewControllerAccessors {
    public struct ViewControllerNibNames {
      static  let homeViewController = "HomeViewController"
      static  let signUpFormViewController = "SignUpFormViewController"
    }
    static var homeViewController: HomeViewController {
        if let viewController = StoryboardAccessors.mainStoryboard.instantiateViewController(withIdentifier: ViewControllerNibNames.homeViewController) as? HomeViewController {
            return viewController
        } else {
            return HomeViewController()
        }
    }
    static var signUpFormViewController: SignUpFormViewController {
        if let viewController = StoryboardAccessors.mainStoryboard.instantiateViewController(withIdentifier: ViewControllerNibNames.signUpFormViewController) as? SignUpFormViewController {
            return viewController
        } else {
            return SignUpFormViewController()
        }
    }
}
