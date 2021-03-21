//
//  JHViewController.swift
//  JHChatIM
//
//  Created by gjh on 2021/3/21.
//

import UIKit

class JHViewController: UIViewController {
    
    var _analyzeTitle: String?
    var analyzeTitle: String? {
        get {
            if _analyzeTitle == nil {
                return navigationItem.title
            }
            return _analyzeTitle
        }
    }
    
    var statusBarStyle: UIStatusBarStyle? {
        didSet {
            statusBarStyle = UIStatusBarStyle.lightContent
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.init(red: 239.0, green: 239.0, blue: 244.0, alpha: 1.0) // 灰色
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
