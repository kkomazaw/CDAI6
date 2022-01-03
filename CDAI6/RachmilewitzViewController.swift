//
//  RachmilewitzViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/26.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class RachmilewitzViewController: UIViewController {
    
    @IBOutlet var IsshukannoHaiben:UISegmentedControl!
    @IBOutlet var Ketsuben:UISegmentedControl!
    @IBOutlet var HyoukashaIppanJoutai:UISegmentedControl!
    @IBOutlet var Fukutsu:UISegmentedControl!
    @IBOutlet var TaionJosho:UISegmentedControl!
    @IBOutlet var Kosaien:UIButton!
    @IBOutlet var KessetsuseiKohan:UIButton!
    @IBOutlet var Kansetsuen:UIButton!
    @IBOutlet var AriKosaien:UILabel!
    @IBOutlet var AriKessetsuseiKohan:UILabel!
    @IBOutlet var AriKansetsuen:UILabel!
    @IBOutlet var RinshoKensaShoken:UISegmentedControl!
    @IBOutlet var clearButton:UIButton!
    @IBOutlet var RachScore:UILabel!
    @IBOutlet var Kankai:UILabel!
    
    var vKosaien:Int = 0
    var vKessetsuseiKohan:Int = 0
    var vKansetsuen:Int = 0
    
    func myCalc(){
        let vIsshukannoHaiben = IsshukannoHaiben.selectedSegmentIndex
        let vKetsuben = Ketsuben.selectedSegmentIndex * 2
        let vHyoukashaIppanJotai = HyoukashaIppanJoutai.selectedSegmentIndex
        let vFukutsu = Fukutsu.selectedSegmentIndex
        let vTaionJosho = TaionJosho.selectedSegmentIndex * 3
        var vRinshoKensaShoken = RinshoKensaShoken.selectedSegmentIndex
        if vRinshoKensaShoken == 3{
            vRinshoKensaShoken = 4
        }
        let vRachScore = vIsshukannoHaiben + vKetsuben + vHyoukashaIppanJotai + vFukutsu + vTaionJosho + vKosaien + vKessetsuseiKohan + vKansetsuen + vRinshoKensaShoken
        RachScore.text = String(vRachScore)
        if vRachScore <= 4{
            Kankai.text = "寛解"
        }
        else{
            Kankai.text = ""
        }
    }//func myCalc()
    
    @IBAction func myActionKosaien(){
        if vKosaien == 0{
            AriKosaien.text = "あり"
            vKosaien = 3
        }
        else{
            AriKosaien.text = ""
            vKosaien = 0
        }
        self.myCalc()
    }
    
    @IBAction func myActionKessetsuseiKohan(){
        if vKessetsuseiKohan == 0{
            AriKessetsuseiKohan.text = "あり"
            vKessetsuseiKohan = 3
        }
        else{
            AriKessetsuseiKohan.text = ""
            vKessetsuseiKohan = 0
        }
        self.myCalc()
    }
    
    @IBAction func myActionKansetsuen(){
        if vKansetsuen == 0{
            AriKansetsuen.text = "あり"
            vKansetsuen = 3
        }
        else{
            AriKansetsuen.text = ""
            vKansetsuen = 0
        }
        self.myCalc()
    }
    
    @IBAction func myActionRUN(){
        self.myCalc()
    }
    
    @IBAction func myActionClear(){
        IsshukannoHaiben.selectedSegmentIndex = 0
        Ketsuben.selectedSegmentIndex = 0
        HyoukashaIppanJoutai.selectedSegmentIndex = 0
        Fukutsu.selectedSegmentIndex = 0
        TaionJosho.selectedSegmentIndex = 0
        vKosaien = 0
        vKessetsuseiKohan = 0
        vKansetsuen = 0
        AriKosaien.text = ""
        AriKessetsuseiKohan.text = ""
        AriKansetsuen.text = ""
        RinshoKensaShoken.selectedSegmentIndex = 0
        RachScore.text = "0"
        Kankai.text = "寛解"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
