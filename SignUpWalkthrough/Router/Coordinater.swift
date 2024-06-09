//
//  Coordinater.swift
//  SignUpWalkthrough
//
//  Created by Abdul Ahad AhmadA on 07/06/24.
//

import Foundation
import UIKit
protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
