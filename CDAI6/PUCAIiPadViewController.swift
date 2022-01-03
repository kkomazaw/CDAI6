//
//  PUCAIiPadViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/05/05.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class PUCAIiPadViewController: UIViewController {
    
    @IBOutlet var Fukutsu: UISegmentedControl!
    @IBOutlet var Ketsuben: UISegmentedControl!
    @IBOutlet var Bennokatasa: UISegmentedControl!
    @IBOutlet var Haibenkaisu: UISegmentedControl!
    @IBOutlet var Yakannohaiben: UISegmentedControl!
    @IBOutlet var Katsudosei: UISegmentedControl!
    @IBOutlet var ClearButton: UIButton!
    @IBOutlet var PUCAIscore: UILabel!
    @IBOutlet var Jushodo: UILabel!
    
    @IBAction func myActionRUNPUCAI(){
        let vFukutsu = Fukutsu.selectedSegmentIndex * 5
        let vKetsuben = Ketsuben.selectedSegmentIndex * 10
        let vBennokatasa = Bennokatasa.selectedSegmentIndex * 5
        let vHaibenkaisu = Haibenkaisu.selectedSegmentIndex * 5
        let vYakannohaiben = Yakannohaiben.selectedSegmentIndex * 10
        let vKatsudosei = Katsudosei.selectedSegmentIndex * 5
        let vPUCAIscore = vFukutsu + vKetsuben + vBennokatasa + vHaibenkaisu + vYakannohaiben + vKatsudosei
        PUCAIscore.text = String(vPUCAIscore)
        if vPUCAIscore <= 5{
            Jushodo.text = "寛解"
        }
        if vPUCAIscore >= 10 && vPUCAIscore <= 30{
            Jushodo.text = "軽症"
        }
        if vPUCAIscore >= 35 && vPUCAIscore <= 60{
            Jushodo.text = "中等"
        }
        if vPUCAIscore >= 65{
            Jushodo.text = "重症"
        }
    }//@IBAction func myActionRUNPUCAI()
    
    @IBAction func myActionClearPUCAI(){
        Fukutsu.selectedSegmentIndex = 0
        Ketsuben.selectedSegmentIndex = 0
        Bennokatasa.selectedSegmentIndex = 0
        Haibenkaisu.selectedSegmentIndex = 0
        Yakannohaiben.selectedSegmentIndex = 0
        Katsudosei.selectedSegmentIndex = 0
        PUCAIscore.text = "0"
        Jushodo.text = "寛解"
    }
    
    @IBOutlet var IsshukannoHaiben:UISegmentedControl!
    @IBOutlet var KetsubenR:UISegmentedControl!
    @IBOutlet var HyoukashaIppanJoutai:UISegmentedControl!
    @IBOutlet var FukutsuR:UISegmentedControl!
    @IBOutlet var TaionJosho:UISegmentedControl!
    @IBOutlet var Kosaien:UIButton!
    @IBOutlet var KessetsuseiKohan:UIButton!
    @IBOutlet var Kansetsuen:UIButton!
    @IBOutlet var AriKosaien:UILabel!
    @IBOutlet var AriKessetsuseiKohan:UILabel!
    @IBOutlet var AriKansetsuen:UILabel!
    @IBOutlet var RinshoKensaShoken:UISegmentedControl!
    @IBOutlet var clearButtonR:UIButton!
    @IBOutlet var RachScore:UILabel!
    @IBOutlet var Kankai:UILabel!
    
    var vKosaien:Int = 0
    var vKessetsuseiKohan:Int = 0
    var vKansetsuen:Int = 0
    
    func myCalcR(){
        let vIsshukannoHaiben = IsshukannoHaiben.selectedSegmentIndex
        let vKetsubenR = KetsubenR.selectedSegmentIndex * 2
        let vHyoukashaIppanJotai = HyoukashaIppanJoutai.selectedSegmentIndex
        let vFukutsuR = FukutsuR.selectedSegmentIndex
        let vTaionJosho = TaionJosho.selectedSegmentIndex * 3
        var vRinshoKensaShoken = RinshoKensaShoken.selectedSegmentIndex
        if vRinshoKensaShoken == 3{
            vRinshoKensaShoken = 4
        }
        let vRachScore = vIsshukannoHaiben + vKetsubenR + vHyoukashaIppanJotai + vFukutsuR + vTaionJosho + vKosaien + vKessetsuseiKohan + vKansetsuen + vRinshoKensaShoken
        RachScore.text = String(vRachScore)
        if vRachScore <= 4{
            Kankai.text = "寛解"
        }
        else{
            Kankai.text = ""
        }
    }//func myCalcR()
    
    @IBAction func myActionKosaien(){
        if vKosaien == 0{
            AriKosaien.text = "あり"
            vKosaien = 3
        }
        else{
            AriKosaien.text = ""
            vKosaien = 0
        }
        self.myCalcR()
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
        self.myCalcR()
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
        self.myCalcR()
    }
    
    @IBAction func myActionRUNR(){
        self.myCalcR()
    }
    
    @IBAction func myActionClearR(){
        IsshukannoHaiben.selectedSegmentIndex = 0
        KetsubenR.selectedSegmentIndex = 0
        HyoukashaIppanJoutai.selectedSegmentIndex = 0
        FukutsuR.selectedSegmentIndex = 0
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
    
    @IBOutlet var KetsubenSEO: UISegmentedControl!
    @IBOutlet var HaibenSEO: UISegmentedControl!
    @IBOutlet var SekichinSEO: UITextField!
    @IBOutlet var HbSEO: UITextField!
    @IBOutlet var AlbSEO: UITextField!
    @IBOutlet var SEOIndex: UILabel!
    @IBOutlet var SEODegree: UILabel!
    @IBOutlet var EnterButtonSEO: UIButton!
    @IBOutlet var clearButtonSEO: UIButton!
    
    func myCalcSEO(){
        var vSekichinSEO:Double = 0
        if let i = Double(SekichinSEO.text!){
            vSekichinSEO = i * 0.5
        }
        else{
            return
        }
        var vHbSEO:Double = 0
        if let i = Double(HbSEO.text!){
            vHbSEO = i * (-4)
        }
        else{
            return
        }
        var vAlbSEO:Double = 0
        if let i = Double(AlbSEO.text!){
            vAlbSEO = i * (-15)
        }
        else{
            return
        }
        let vKetsubenSEO = Double(KetsubenSEO.selectedSegmentIndex * 60)
        let vHaibenSEO = Double((HaibenSEO.selectedSegmentIndex + 1) * 13)
        let vSEOIndex = Int(round(vKetsubenSEO + vHaibenSEO + vSekichinSEO + vHbSEO + vAlbSEO + 200.0))
        SEOIndex.text = String(vSEOIndex)
        if vSEOIndex <= 150 {
            SEODegree.text = "軽症"
        }
        if vSEOIndex > 150 && vSEOIndex < 220 {
            SEODegree.text = "中等症"
        }
        if vSEOIndex >= 220 {
            SEODegree.text = "重症"
        }
    }//func myCalcSEO()
    
    @IBAction func myActionRUNSEO(){
        if SekichinSEO.isEditing{
            if Double(HbSEO.text!) == nil{
                HbSEO.becomeFirstResponder()
            }
        }
        else if HbSEO.isEditing{
            if Double(AlbSEO.text!) == nil{
                AlbSEO.becomeFirstResponder()
            }
        }
        else if AlbSEO.isEditing{
            if Double(SekichinSEO.text!) == nil{
                SekichinSEO.becomeFirstResponder()
            }
        }
        if Double(SekichinSEO.text!) != nil && Double(HbSEO.text!) != nil && Double(AlbSEO.text!) != nil{
            self.view.endEditing(true)
            self.myCalcSEO()
        }
}//@IBAction func myActionRUNSEO()
    
    @IBAction func myActionClearSEO(){
        KetsubenSEO.selectedSegmentIndex = 0
        HaibenSEO.selectedSegmentIndex = 0
        SekichinSEO.text = ""
        HbSEO.text = ""
        AlbSEO.text = ""
        SEOIndex.text = ""
        SEODegree.text = ""
        SekichinSEO.becomeFirstResponder()
    }
    
    @IBAction func myActionChangeValue(){
        self.myCalcSEO()
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
