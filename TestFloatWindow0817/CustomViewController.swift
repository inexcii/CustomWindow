//
//  CustomViewController.swift
//  TestFloatWindow0817
//
//  Created by Yuan Zhou on 2018/08/18.
//  Copyright © 2018 Yuan Zhou. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    private let window = CustomWindow()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        window.windowLevel = CGFloat.greatestFiniteMagnitude
        window.isHidden = false
        window.rootViewController = self
    }
    
    override func loadView() {
        
        self.view = UIView()
        
        let label = UILabel()
//        label.backgroundColor = UIColor.yellow
        label.attributedText = versionString()
        self.view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        let margins = self.view.layoutMarginsGuide
        label.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -20.0).isActive = true
        label.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -20.0).isActive = true
        label.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        label.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
    }
    
    func versionString() -> NSAttributedString {
        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
        let attributes: [NSAttributedStringKey: Any] = [
            .foregroundColor: UIColor.white,
            .strokeColor: UIColor.black,
            .strokeWidth: -1.0
        ]
        return NSAttributedString(string: version, attributes: attributes)
    }
}
