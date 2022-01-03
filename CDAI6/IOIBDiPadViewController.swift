//
//  IOIBDiPadViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/05/05.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class IOIBDiPadViewController: UIViewController,UIPickerViewDelegate {
    
    @IBOutlet var Juso: UISegmentedControl!
    @IBOutlet var Shikiishi: UISegmentedControl!
    @IBOutlet var Hikanraku: UISegmentedControl!
    @IBOutlet var Juretsu: UISegmentedControl!
    @IBOutlet var Joubukabu: UISegmentedControl!
    @IBOutlet var Kyoketsu: UISegmentedControl!
    @IBOutlet var Criteria: UILabel!
    @IBOutlet var clearCDCriteria: UIButton!
    
    @IBAction func myActionRUNCDCriteria(){
        let vJuso = Juso.selectedSegmentIndex
        let vShiki = Shikiishi.selectedSegmentIndex
        let vHikan = Hikanraku.selectedSegmentIndex
        let vJuretsu = Juretsu.selectedSegmentIndex
        let vJoubukabu = Joubukabu.selectedSegmentIndex
        let vKyoketsu = Kyoketsu.selectedSegmentIndex
        if (vJuso == 1 || vShiki == 1) && vKyoketsu == 1 {
            Criteria.text = "確診"
        }
        if vHikan == 1 && (vJuretsu == 1 || vJoubukabu == 1) {
            Criteria.text = "確診"
        }
        if vJuso == 0 && vShiki == 0 && vHikan == 0 {
            if vJuretsu == 1 || vJoubukabu == 1 {
                Criteria.text = "疑診"
            }
        }
        if vHikan == 1 && vJuso == 0 && vShiki == 0 && vJuretsu == 0 && vJoubukabu == 0 {
            Criteria.text = "疑診,腸結核の除外が必要"
        }
        if vJoubukabu == 1 && vJuso == 0 && vShiki == 0 && vHikan == 0 && vJuretsu == 0 {
            Criteria.text = "疑診,3ヶ月存在する事が必要"
        }
        if (vJuso == 1 || vShiki == 1) && vKyoketsu == 0 {
            Criteria.text = "疑診"
        }
        if vJuso + vShiki + vHikan > 1 {
            Criteria.text = "確診"
        }
        if vJuso + vShiki + vHikan + vJuretsu + vJoubukabu == 0 {
            Criteria.text = "クローン病の診断基準を満たさない"
        }
    }//@IBAction func myActionRUNCDCriteria()
    
    @IBAction func myActionClearCDCriteria(){
        Juso.selectedSegmentIndex = 0
        Shikiishi.selectedSegmentIndex = 0
        Hikanraku.selectedSegmentIndex = 0
        Juretsu.selectedSegmentIndex = 0
        Joubukabu.selectedSegmentIndex = 0
        Kyoketsu.selectedSegmentIndex = 0
        Criteria.text = "クローン病の診断基準を満たさない"
    }
    
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
        @IBOutlet var clearButtonIOIBD: UIButton!
        
        @IBAction func myActionRUNIOIBD(){
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
        }//@IBAction func myActionRUNIOIBD()
        
        @IBAction func myActionClearIOIBD(){
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
        }//@IBAction func myActionClearIOIBD()
    
    @IBOutlet var ZenpanPicker: UIPickerView!
    @IBOutlet var FukutsuPicker: UIPickerView!
    @IBOutlet var EkijobenPicker: UIPickerView!
    @IBOutlet var FukubushuryuPicker: UIPickerView!
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
    @IBOutlet var clearButtonHarvey: UIButton!
    
    var vHarveyPickerArray:Array<Int> = [0,0,0,0]
    var vKansetsutsuH:Int = 0
    var vBudomakuenH:Int = 0
    var vKessetsuH:Int = 0
    var vAfutaH:Int = 0
    var vEsoseiH:Int = 0
    var vRekkoH:Int = 0
    var vShinkiH:Int = 0
    var vNoyoH:Int = 0
    var ZenpanTables = ["良好","軽症","中等症","重症","最悪"]
    var FukutsuTables = ["なし","軽症","中等症","高度"]
    var FukubushuryuTables = ["なし","疑い","あり","疼痛"]
    
    func numberOfComponentsInPickerView(_ pickerView: UIPickerView!) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        var c = 0
        if pickerView.tag == 0 {
            c = 5
        }
        if pickerView.tag == 1{
            c = 4
        }
        if pickerView.tag == 2{
            c = 31
        }
        if pickerView.tag == 3{
            c = 4
        }
        return c
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        var c = ""
        if pickerView.tag == 0 {
            c = String(ZenpanTables[row])
        }
        
        if pickerView.tag == 1 {
            c = String(FukutsuTables[row])
        }
        if pickerView.tag == 2 {
            c = String(row)
        }
        if pickerView.tag == 3 {
            c = String(FukubushuryuTables[row])
        }
        return c
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        vHarveyPickerArray[pickerView.tag] = row
        self.myCalc()
    }
    
    func myCalc(){
        var vSumOfHarveyPickers:Int = 0
        for i in vHarveyPickerArray{
            vSumOfHarveyPickers = vSumOfHarveyPickers + i
        }
        let vHscore = vSumOfHarveyPickers + vKansetsutsuH + vBudomakuenH + vKessetsuH + vAfutaH + vEsoseiH + vRekkoH + vShinkiH + vNoyoH
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
    
    @IBAction func myActionClearHarvey(){
        ZenpanPicker.selectRow(0, inComponent: 0, animated: true)
        FukutsuPicker.selectRow(0, inComponent: 0, animated: true)
        EkijobenPicker.selectRow(0, inComponent: 0, animated: true)
        FukubushuryuPicker.selectRow(0, inComponent: 0, animated: true)
        vHarveyPickerArray = [0,0,0,0]
        AriKansetsutsu.text = ""
        AriBudomakuen.text = ""
        AriKessetsu.text = ""
        AriAfuta.text = ""
        AriEsosei.text = ""
        AriRekko.text = ""
        AriShinki.text = ""
        AriNoyo.text = ""
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
