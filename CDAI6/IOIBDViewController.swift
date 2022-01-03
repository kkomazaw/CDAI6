//
//  IOIBDViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/20.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class IOIBDViewController: UIViewController {
    
    @IBOutlet var FukutsuIBD: UISegmentedControl!
    @IBOutlet var GeriIBD: UISegmentedControl!
    @IBOutlet var KomonIBD: UISegmentedControl!
    @IBOutlet var RokoIBD: UISegmentedControl!
    @IBOutlet var SonotaIBD: UISegmentedControl!
    @IBOutlet var FukubushuryuIBD: UISegmentedControl!
    @IBOutlet var TaijugenshoIBD: UISegmentedControl!
    @IBOutlet var HatsunetsuIBD: UISegmentedControl!
    @IBOutlet var AttsuIBD: UISegmentedControl!
    @IBOutlet var KesshikisoIBD: UISegmentedControl!
    @IBOutlet var IOIBDscore: UILabel!
    @IBOutlet var Katsudosei: UILabel!
    @IBOutlet var clearButton: UIButton!

    @IBAction func myActionRUN(){
        let vFukutsuIBD = FukutsuIBD.selectedSegmentIndex
        let vGeriIBD = GeriIBD.selectedSegmentIndex
        let vKomonIBD = KomonIBD.selectedSegmentIndex
        let vRokoIBD = RokoIBD.selectedSegmentIndex
        let vSonotaIBD = SonotaIBD.selectedSegmentIndex
        let vFukubushuryuIBD = FukubushuryuIBD.selectedSegmentIndex
        let vTaijugenshoIBD = TaijugenshoIBD.selectedSegmentIndex
        let vHatsunetsuIBD = HatsunetsuIBD.selectedSegmentIndex
        let vAttsuIBD = AttsuIBD.selectedSegmentIndex
        let vKesshikisoIBD = KesshikisoIBD.selectedSegmentIndex
        let vIOIBDscore = vFukutsuIBD + vGeriIBD + vKomonIBD + vRokoIBD + vSonotaIBD + vFukubushuryuIBD + vTaijugenshoIBD + vHatsunetsuIBD + vAttsuIBD + vKesshikisoIBD
        IOIBDscore.text = String(vIOIBDscore)
        if vIOIBDscore >= 2 {
            Katsudosei.text = "活動性"
        }
        else{
            Katsudosei.text = ""
        }

    }
    
    @IBAction func myActionClear(){
        FukutsuIBD.selectedSegmentIndex = 0
        GeriIBD.selectedSegmentIndex = 0
        KomonIBD.selectedSegmentIndex = 0
        RokoIBD.selectedSegmentIndex = 0
        SonotaIBD.selectedSegmentIndex = 0
        FukubushuryuIBD.selectedSegmentIndex = 0
        TaijugenshoIBD.selectedSegmentIndex = 0
        HatsunetsuIBD.selectedSegmentIndex = 0
        AttsuIBD.selectedSegmentIndex = 0
        KesshikisoIBD.selectedSegmentIndex = 0
        Katsudosei.text = ""
        IOIBDscore.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Katsudosei.text = ""
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
