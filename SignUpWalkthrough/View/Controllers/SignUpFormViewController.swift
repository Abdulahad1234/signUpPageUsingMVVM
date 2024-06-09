//
//  SignUpFormViewController.swift
//  SignUpWalkthrough
//
//  Created by Abdul Ahad AhmadA on 07/06/24.
//

import UIKit

class SignUpFormViewController: UIViewController {
    
    @IBOutlet weak var personalInfoTableView: UITableView!
    
    var viewModel = SignUpViewModel(coordinator: NavigationCoordinatorStack(navigationController: UINavigationController()))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()

        // Do any additional setup after loading the view.
    }
    func registerCells() {
        self.personalInfoTableView.delegate = self
        self.personalInfoTableView.dataSource  = self
        personalInfoTableView.register(UINib(nibName: NameTextTableViewCell.xibName, bundle: nil), forCellReuseIdentifier: NameTextTableViewCell.cellIdentifier)
        
    }

}
extension SignUpFormViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.returnRowsForSection(section: section)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return viewModel.returnTableViewCell(tableView: tableView, indexPath: indexPath)
    }
}

