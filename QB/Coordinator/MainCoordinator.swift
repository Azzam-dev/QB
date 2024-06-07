//
//  MainCoordinator.swift
//  QB
//
//  Created by Azzam AL-Rashed on 25/04/2024.
//

import UIKit

final class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: Initial View Controller
    func start() {
        let navigationVC = NavigationVC.instantiate()
        
        let homeVC = HomeVC.instantiate()
        let chartsVC = ChartsVC.instantiate()
        let projectsVC = ProjectsVC.instantiate()
        let settingsVC = SettingsVC.instantiate()
        
        homeVC.coordinator = self
        chartsVC.coordinator = self
        projectsVC.coordinator = self
        settingsVC.coordinator = self
        
        
        navigationVC.coordinator = self
        navigationVC.viewControllers = [homeVC, chartsVC, projectsVC, settingsVC]
        
        navigationController.pushViewController(navigationVC, animated: false)
    }
    
    
    func viewWorld() {
        let vc = WorldVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    
    //MARK: Home
    
    
    //MARK: Main Settings
    /*
    func viewCredits() {
        let vc = CreditsVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func viewAboutUs() {
        let vc = AboutUsVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func viewTermsOfUse() {
        let vc = TermsOfUseVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewPrivacyPolicy() {
        let vc = PrivacyPolicyVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewSendFeedback() {
        let vc = SendFeedbackVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewSupport() {
        let vc = SupportVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewHelp() {
        let vc = HelpVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewWhatsNewVC() {
        let vc = WhatsNewVC.instantiate()
        navigationController.present(vc, animated: true)
    }
     */
    
 }
 
