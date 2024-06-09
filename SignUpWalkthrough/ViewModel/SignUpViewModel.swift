//
//  SignUpViewModel.swift
//  SignUpWalkthrough
//
//  Created by Abdul Ahad AhmadA on 07/06/24.
//

import Foundation
import UIKit
class SignUpViewModel {
     var coordinator: NavigationCoordinatorStack?
        
        init(coordinator: NavigationCoordinatorStack) {
            self.coordinator = coordinator
        }
    
    func returnTableViewCell( tableView: UITableView, indexPath: IndexPath?) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTextTableViewCell.cellIdentifier, for: indexPath ?? IndexPath()) as? NameTextTableViewCell
        return cell ?? UITableViewCell()
    }
    func returnRowsForSection(section: Int) -> Int {
        return 1
    }
}
