//
//  HarveyViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/24.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class HarveyViewController: UIViewController {
    
    @IBOutlet var ZenpanH: UISegmentedControl!
    @IBOutlet var FukutsuH: UISegmentedControl!
    @IBOutlet var ShuryuH: UISegmentedControl!
    @IBOutlet var EkijobenH: UITextField!
    @IBOutlet var KansetsutsuH: UIButton!
    @IBOutlet var BudomakuenH: UIButton!
    @IBOutlet var KessetsuH: UIButton!
    @IBOutlet var AfutaH: UIButton!
    @IBOutlet var EsoseiH: UIButton!
    @IBOutlet var RekkoH: UIButton!
    @IBOutlet var ShinkiH: UIButton!
    @IBOutlet var NoyoH: UIButton!
    @IBOutlet var AriKansetsutsu: UILabel!
    @IBOutlet var AriBudomakuen: UILabel!
    @IBOutlet var AriKessetsu: UILabel!
    @IBOutlet var AriAfuta: UILabel!
    @IBOutlet var AriEsosei: UILabel!
    @IBOutlet var AriRekko: UILabel!
    @IBOutlet var AriShinki: UILabel!
    @IBOutlet var AriNoyo: UILabel!
    @IBOutlet var Hscore: UILabel!
    @IBOutlet var Jushodo: UILabel!
    @IBOutlet var TsugiButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    
    var vKansetsutsuH:Int = 0
    var vBudomakuenH:Int = 0
    var vKessetsuH:Int = 0
    var vAfutaH:Int = 0
    var vEsoseiH:Int = 0
    var vRekkoH:Int = 0
    var vShinkiH:Int = 0
    var vNoyoH:Int = 0
    
    func myClear(){
        AriKansetsutsu.text = ""
        AriBudomakuen.text = ""
        AriKessetsu.text = ""
        AriAfuta.text = ""
        AriEsosei.text = ""
        AriRekko.text = ""
        AriShinki.text = ""
        AriNoyo.text = ""
        ZenpanH.selectedSegmentIndex = 0
        FukutsuH.selectedSegmentIndex = 0
        EkijobenH.text = ""
        ShuryuH.selectedSegmentIndex = 0
        Hscore.text = "0"
        Jushodo.text = "寛解"
        vKansetsutsuH = 0
        vBudomakuenH = 0
        vKessetsuH = 0
        vAfutaH = 0
        vEsoseiH = 0
        vRekkoH = 0
        vShinkiH = 0
        vNoyoH = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myClear()
        // Do any additional setup after loading the view.
    }
    
    func myCalc(){
        let vZenpanH = ZenpanH.selectedSegmentIndex
        let vFukutsuH = FukutsuH.selectedSegmentIndex
        var vEkijobenH:Int = 0
        if let i = Int(EkijobenH.text!){
            vEkijobenH = i
        }
        let vShuryuH = ShuryuH.selectedSegmentIndex
        let vHscore = vZenpanH + vFukutsuH + vEkijobenH + vShuryuH + vKansetsutsuH + vBudomakuenH + vKessetsuH + vAfutaH + vEsoseiH + vRekkoH + vShinkiH + vNoyoH
        Hscore.text = String(vHscore)
        if vHscore <= 4{
            Jushodo.text = "寛解"
        }
        if vHscore >= 5 && vHscore <= 7{
            Jushodo.text = "軽症"
        }
        if vHscore >= 8 && vHscore <= 16{
            Jushodo.text = "中等症"
        }
        if vHscore >= 17{
            Jushodo.text = "重症"
        }
    }//func myCalc()

    @IBAction func myActionRUN(){
        self.myCalc()
    }
    @IBAction func myActionClear(){
        self.myClear()
    }
    @IBAction func myActionTsugi(){
        self.view.endEditing(true)
        self.myCalc()
    }
    @IBAction func myActionKansetsutsu(){
        if vKansetsutsuH == 0{
            vKansetsutsuH = 1
            AriKansetsutsu.text = "あり"
        }
        else{
            vKansetsutsuH = 0
            AriKansetsutsu.text = ""
        }
        self.myCalc()
    }
    @IBAction func myActionBudomakuen(){
        if vBudomakuenH == 0{
            vBudomakuenH = 1
            AriBudomakuen.text = "あり"
        }
        else{
            vBudomakuenH = 0
            AriBudomakuen.text = ""
        }
        self.myCalc()
    }
    @IBAction func myActionKessetsu(){
        if vKessetsuH == 0{
            vKessetsuH = 1
            AriKessetsu.text = "あり"
        }
        else{
            vKessetsuH = 0
            AriKessetsu.text = ""
        }
        self.myCalc()
    }
    @IBAction func myActionAfuta(){
        if vAfutaH == 0{
            vAfutaH = 1
            AriAfuta.text = "あり"
        }
        else{
            vAfutaH = 0
            AriAfuta.text = ""
        }
        self.myCalc()
    }
    @IBAction func myActionEsosei(){
        if vEsoseiH == 0{
            vEsoseiH = 1
            AriEsosei.text = "あり"
        }
        else{
            vEsoseiH = 0
            AriEsosei.text = ""
        }
        self.myCalc()
    }
    @IBAction func myActionRekko(){
        if vRekkoH == 0{
            vRekkoH = 1
            AriRekko.text = "あり"
        }
        else{
            vRekkoH = 0
            AriRekko.text = ""
        }
        self.myCalc()
    }
    @IBAction func myActionShinki(){
        if vShinkiH == 0{
            vShinkiH = 1
            AriShinki.text = "あり"
        }
        else{
            vShinkiH = 0
            AriShinki.text = ""
        }
        self.myCalc()
    }
    @IBAction func myActionNoyo(){
        if vNoyoH == 0{
            vNoyoH = 1
            AriNoyo.text = "あり"
        }
        else{
            vNoyoH = 0
            AriNoyo.text = ""
        }
        self.myCalc()
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
