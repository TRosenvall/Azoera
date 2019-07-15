//
//  AzoeraButton.swift
//  Azoera
//
//  Created by Timothy Rosenvall on 7/15/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class AzoeraButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    func updateFont (to fontName: String) {
        guard let size = self.titleLabel?.font.pointSize else {return}
        self.titleLabel?.font = UIFont(name: fontName, size: size)!
    }
    
    func setupUI () {
        updateFont(to: FontNames.latoRegular)
        self.layer.backgroundColor = UIColor.azoeraGreen.cgColor
        self.setTitleColor(UIColor.mainTextColor, for: .normal)
    }

}
