//
//  MainTableViewController.swift
//  Swift微博
//
//  Created by WZZ on 16/3/9.
//  Copyright © 2016年 WZZ. All rights reserved.
//

import UIKit

class MainTableViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController(HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(HomeTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(HomeTableViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(HomeTableViewController(), title: "我", imageName: "tabbar_profile")
    }
    
    ///  添加控制器
    private func addChildViewController(vc:UIViewController, title: String, imageName: String) {
        // 选中状态下的颜色
        tabBar.tintColor = UIColor.orangeColor()
        
        let homeVc = HomeTableViewController()
        homeVc.tabBarItem.image = UIImage(named: imageName)
        homeVc.tabBarItem.selectedImage = UIImage(named: imageName+"_highlighted")
        homeVc.title = title
        
        let nav = UINavigationController(rootViewController: homeVc)
        self.addChildViewController(nav)
    }
    
    
}
