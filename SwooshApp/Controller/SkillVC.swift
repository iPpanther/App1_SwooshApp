//
//  SkillVC.swift
//  SwooshApp
//
//  Created by Peerapol on 20/3/2562 BE.
//  Copyright © 2562 iPpanther. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player!
    var defaultBtnColor: UIColor!
    @IBOutlet weak var finishBtn: BorderButton!
    @IBOutlet weak var beginnerBtn: BorderButton!
    @IBOutlet weak var ballerBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        defaultBtnColor = beginnerBtn.backgroundColor
        finishBtn.setTitleColor(UIColor.gray, for: .normal)
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectSkill(skillLevel: "Beginner", btnType: beginnerBtn)
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectSkill(skillLevel: "Baller", btnType: ballerBtn)
    }
    
    func selectSkill(skillLevel: String, btnType: BorderButton) {
        
        beginnerBtn.backgroundColor = defaultBtnColor
        ballerBtn.backgroundColor = defaultBtnColor
        btnType.backgroundColor = UIColor.gray
        
        player.selectedSkillLevel = skillLevel
        finishBtn.setTitleColor(UIColor.white, for: .normal)
        finishBtn.isEnabled = true
        
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
        performSegue(withIdentifier: "WelcomeVCSegue", sender: self)
    }
}
