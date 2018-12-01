//
//  SpinnerViewController.swift
//  MillionDollarSpinner
//
//  Created by Andrew  Foghel on 12/1/18.
//  Copyright © 2018 Andrew  Foghel. All rights reserved.
//

import UIKit

class SpinnerViewController: UIViewController {
    
    let rotatingView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(rotatingView)
        rotatingView.backgroundColor = .red
        view.addSubview(rotatingView)
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        rotatingView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
}
