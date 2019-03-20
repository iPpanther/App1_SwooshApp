//
//  BorderButton.swift
//  SwooshApp
//
//  Created by Peerapol on 19/3/2562 BE.
//  Copyright © 2562 iPpanther. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
