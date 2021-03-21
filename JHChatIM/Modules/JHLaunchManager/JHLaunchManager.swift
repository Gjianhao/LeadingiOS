//
//  JHLaunchManager.swift
//  JHChatIM
//
//  Created by gjh on 2021/3/21.
//

import UIKit
import TLTabBarController

class JHLaunchManager: NSObject {
    
    var window: UIWindow?
    var tabBarController: TLTabBarController?
    
    var _curRootVC: UIViewController?
    var curRootVC: UIViewController? {
        didSet {
            _curRootVC = curRootVC
            
            var wind = (window != nil) ? window : UIApplication.shared
                .keyWindow
            
        }
    }
    
    
    // 单例
    static let sharedInstance: JHLaunchManager = {
        let instance = JHLaunchManager()
        return instance
    }()
    
    // 加载窗口
    func launchInWindow(wind: UIWindow) {
        window = wind
        
        let isLogin = true
        if isLogin {
            tabBarController?.viewControllers = _createTabBarChildViewController()
        } else {
            <#statements#>
        }
        
    }
    
    
    // MARK: - 私有方法
    func _createTabBarChildViewController() -> Array<UIViewController> {
        let contactsVC = JHContactsViewController()
        let conversationVC = JHConversationViewController()
        let discoverVC = JHDiscoverViewController()
        let mineVC = JHMineViewController()
        
        return [contactsVC, conversationVC, discoverVC, mineVC]
    }
}
