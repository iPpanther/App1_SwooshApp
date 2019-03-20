//
//  LeagueVCViewController.swift
//  SwooshApp
//
//  Created by Peerapol on 20/3/2562 BE.
//  Copyright © 2562 iPpanther. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    var defaultBtnColor: UIColor!
    @IBOutlet weak var leagueDisplay: UILabel!
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var menBtn: BorderButton!
    @IBOutlet weak var womenBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        defaultBtnColor = menBtn.backgroundColor
        nextBtn.setTitleColor(UIColor.gray, for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onMenTapepd(_ sender: Any) {
        selectLeague(leagueType: "Mens", btnType: menBtn)
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens", btnType: womenBtn)
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Co-ed", btnType: coedBtn)
    }
    
    func selectLeague(leagueType: String, btnType: BorderButton) {
        
        menBtn.backgroundColor = defaultBtnColor
        womenBtn.backgroundColor = defaultBtnColor
        coedBtn.backgroundColor = defaultBtnColor
        btnType.backgroundColor = UIColor.gray
        
        player.desiredLeague = leagueType
        leagueDisplay.text = leagueType
        nextBtn.setTitleColor(UIColor.white, for: .normal)
        nextBtn.isEnabled = true
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
