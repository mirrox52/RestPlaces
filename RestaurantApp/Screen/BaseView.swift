//
//  BaseView.swift
//  RestaurantApp
//
//  Created by Aliaksandr Batyesheu on 6/20/20.
//  Copyright © 2020 Aliaksandr Batyesheu. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }

    func configure() {

    }
}
