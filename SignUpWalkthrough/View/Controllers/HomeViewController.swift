//
//  HomeViewController.swift
//  SignUpWalkthrough
//
//  Created by Abdul Ahad AhmadA on 06/06/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var getStartedBtn: UIButton!
    
    var viewModel = HomeViewModel(coordinator: NavigationCoordinatorStack(navigationController: UINavigationController()))
    
    //    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//        self.viewModel = HomeViewModel(coordinator: NavigationCoordinatorStack(navigationController: UINavigationController()))
//        super.init(coder: coder)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func getStartedTapped(_ sender: Any) {
        viewModel.goToSignUpScreen()
    }
    

}
