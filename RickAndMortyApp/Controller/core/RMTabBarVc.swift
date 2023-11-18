//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by suraj kumar on 16/11/23.
//

import UIKit

final class RMTabBarVc: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setupTabs()
    }
    
    func setupTabs() {
        
        let characterVc = RMCharacterVc()
        let locationVc = RMLocationVc()
        let episodeVc = RMEpisodeVc()
        let settingVc = RMSettingVc()
        
        characterVc.title = "Character"
        locationVc.title = "Location"
        episodeVc.title = "Episode"
        settingVc.title = "Setting"
        
        characterVc.navigationItem.largeTitleDisplayMode = .automatic
        locationVc.navigationItem.largeTitleDisplayMode = .automatic
        episodeVc.navigationItem.largeTitleDisplayMode = .automatic
        settingVc.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: characterVc)
        let nav2 = UINavigationController(rootViewController: locationVc)
        let nav3 = UINavigationController(rootViewController: episodeVc)
        let nav4 = UINavigationController(rootViewController: settingVc)
        
        nav1.tabBarItem = UITabBarItem(title: "Character",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Location",
                                       image: UIImage(systemName: "globe"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episode",
                                       image: UIImage(systemName: "tv"),
                                       tag: 2)
        nav4.tabBarItem = UITabBarItem(title: "Setting",
                                       image: UIImage(systemName: "gear"),
                                       tag: 2)
        
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
            
        }
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

