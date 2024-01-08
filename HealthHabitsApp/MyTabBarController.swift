

import UIKit

class MyTabBarController:  UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MyTabBarController {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let selectedViewController = tabBarController.selectedViewController {
            if let selectedNavigationController = selectedViewController as? UINavigationController {
                // Обработайте переход к UINavigationController
                let topViewController = selectedNavigationController.topViewController
                
                print("Selected navigation controller: \(String(describing: topViewController))")
            } else {
                // Обработайте другие типы контроллеров
                print("Selected view controller: \(String(describing: selectedViewController))")
            }
        }
    }
}
