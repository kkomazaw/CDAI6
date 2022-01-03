//
//  CDAIiPadViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/29.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class CDAIiPadViewController: UIViewController, UIPickerViewDelegate {
    @IBOutlet var IsshukannoGeri:UITextField!
    @IBOutlet var Hematocrit:UITextField!
    @IBOutlet var Shincho:UITextField!
    @IBOutlet var Taiju:UITextField!
    @IBOutlet var Kansetsuen:UIButton!
    @IBOutlet var Kosaien:UIButton!
    @IBOutlet var KessetsuseiKohan:UIButton!
    @IBOutlet var Rekko:UIButton!
    @IBOutlet var SonotanoRoko:UIButton!
    @IBOutlet var KakoIsshukanHatsunetsu:UIButton!
    @IBOutlet var AriKansetsuen:UILabel!
    @IBOutlet var AriKosaien:UILabel!
    @IBOutlet var AriKessetsuseiKohan:UILabel!
    @IBOutlet var AriRekko:UILabel!
    @IBOutlet var AriSonotanoRoko:UILabel!
    @IBOutlet var AriKakoIsshukanHatsunetsu:UILabel!
    @IBOutlet var Seibetsu:UISegmentedControl!
    @IBOutlet var Ropemin:UISegmentedControl!
    @IBOutlet var Fukubushuryu:UISegmentedControl!
    @IBOutlet var FukutsuPicker1:UIPickerView!
    @IBOutlet var FukutsuPicker2:UIPickerView!
    @IBOutlet var FukutsuPicker3:UIPickerView!
    @IBOutlet var FukutsuPicker4:UIPickerView!
    @IBOutlet var FukutsuPicker5:UIPickerView!
    @IBOutlet var FukutsuPicker6:UIPickerView!
    @IBOutlet var FukutsuPicker7:UIPickerView!
    @IBOutlet var IppanPicker1:UIPickerView!
    @IBOutlet var IppanPicker2:UIPickerView!
    @IBOutlet var IppanPicker3:UIPickerView!
    @IBOutlet var IppanPicker4:UIPickerView!
    @IBOutlet var IppanPicker5:UIPickerView!
    @IBOutlet var IppanPicker6:UIPickerView!
    @IBOutlet var IppanPicker7:UIPickerView!
    @IBOutlet var clearButton:UIButton!
    @IBOutlet var CDAIscore:UILabel!
    @IBOutlet var Jushodo:UILabel!
    @IBOutlet var EnterButton:UIButton!

    var FukutsuTables = ["なし","軽度","中等","高度"]
    var IppanTables = ["良好","軽症","不良","重症","劇症"]
    var fukutsuArrayDouble:Array<Double> = [0,0,0,0,0,0,0]
    var ippanArrayDouble:Array<Double> = [0,0,0,0,0,0,0]
    var vKansetsuen:Double = 0
    var vKosaien:Double = 0
    var vKessetsuseiKohan:Double = 0
    var vRekko:Double = 0
    var vSonotanoRoko:Double = 0
    var vKakoIsshukanHatsunetsu:Double = 0
    
    func numberOfComponentsInPickerView(_ pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        var c = 0
        if pickerView.tag <= 7 {
            c = 4
        }
        
        if pickerView.tag >= 8{
            c = 5
        }
        return c
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        var c = ""
        if pickerView.tag <= 7 {
            c = "\(FukutsuTables[row])"
        }
       
        if pickerView.tag >= 8 {
            c = "\(IppanTables[row])"
        }
        return c
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag <= 7{
            fukutsuArrayDouble[pickerView.tag - 1] = Double(row)
        }
        if pickerView.tag >= 8{
            ippanArrayDouble[pickerView.tag - 8] = Double(row)
        }
        self.myCalc()
    }
    
    func myCalc(){
        var vy1:Double = 0.0
        var vy2:Double = 0.0
        var vy3:Double = 0.0
        var vy4:Double = 0.0
        var vy5:Double = 0.0
        var vy6:Double = 0.0
        var vy7:Double = 0.0
        var vy8:Double = 0.0
        var vIsshukannoGeri:Double = 0.0
        if let i = Double(IsshukannoGeri.text!){
            vIsshukannoGeri = i
        }
        else{
            IsshukannoGeri.text = ""
        }
        var vHematocrit:Double = 0.0
        if let i = Double(Hematocrit.text!){
            vHematocrit = i
        }
        else{
            Hematocrit.text = ""
        }
        var vShincho:Double = 0.0
        if let i = Double(Shincho.text!){
            vShincho = i
        }
        else{
            Shincho.text = ""
        }
        var vTaiju:Double = 0.0
        if let i = Double(Taiju.text!){
            vTaiju = i
        }
        else{
            Taiju.text = ""
        }
        if Double(IsshukannoGeri.text!) == nil || Double(Hematocrit.text!) == nil || Double(Shincho.text!) == nil || Double(Taiju.text!) == nil {
            CDAIscore.text = ""
            Jushodo.text = ""
            return
        }
        self.view.endEditing(true)
        let vChokangai = vKansetsuen + vKosaien + vKessetsuseiKohan + vRekko + vSonotanoRoko + vKakoIsshukanHatsunetsu
        var vFukutsu:Double = 0.0
        for i in fukutsuArrayDouble{
            vFukutsu = vFukutsu + i
        }
        var vIppan:Double = 0.0
        for i in ippanArrayDouble{
            vIppan = vIppan + i
        }
        vy1 = vIsshukannoGeri * 2.0
        vy2 = vFukutsu * 5.0
        vy3 = vIppan * 7.0
        vy4 = vChokangai * 20.0
        let vRopemin = Double(Ropemin.selectedSegmentIndex)
        vy5 = vRopemin * 30.0
        switch Fukubushuryu.selectedSegmentIndex {
        case 0:
            vy6 = 0.0
        case 1:
            vy6 = 20.0
        case 2:
            vy6 = 50.0
        default:
            break
        }//switch Fukubushuryu.selectedSegmentIndex
        switch Seibetsu.selectedSegmentIndex {
        case 0:
            vy7 = (47.0 - vHematocrit) * 6.0
        case 1:
            vy7 = (42.0 - vHematocrit) * 6.0
        default:
            break
        }//switch Seibetsu.selectedSegmentIndex
        if vy7 < 0{
            vy7 = 0.0
        }//if vy7 < 0
        if vShincho != 0{
            vy8 = 100.0 * (1 - vTaiju / (vShincho * vShincho * 0.0022))
            if vy8 < 0{
                vy8 = 0.0
            }
        }//if vShincho != 0
        var vCDAIscore = round(vy1 + vy2 + vy3 + vy4 + vy5 + vy6 + vy7 + vy8)
        if vCDAIscore < 0{
            vCDAIscore = 0
        }
        CDAIscore.text = String(Int(vCDAIscore))
        if vCDAIscore < 150{
            Jushodo.text = "寛解"
        }
        if vCDAIscore >= 150 && vCDAIscore < 220{
            Jushodo.text = "軽症"
        }
        if vCDAIscore >= 220 && vCDAIscore < 300{
            Jushodo.text = "中等症"
        }
        if vCDAIscore >= 300 && vCDAIscore < 450{
            Jushodo.text = "重症"
        }
        if vCDAIscore >= 450{
            Jushodo.text = "劇症"
        }
    }//func myCalc()
    
    @IBAction func myActionKansetsuen(){
        if vKansetsuen == 0{
            vKansetsuen = 1.0
            AriKansetsuen.text = "あり"
        }
        else{
            vKansetsuen = 0.0
            AriKansetsuen.text = ""
        }
        self.myCalc()
    }//@IBAction func myActionKansetsuen()
    @IBAction func myActionKosaien(){
        if vKosaien == 0{
            vKosaien = 1.0
            AriKosaien.text = "あり"
        }
        else{
            vKosaien = 0.0
            AriKosaien.text = ""
        }
        self.myCalc()
    }//@IBAction func myActionKosaien()
    @IBAction func myActionKessetsuseiKohan(){
        if vKessetsuseiKohan == 0{
            vKessetsuseiKohan = 1.0
            AriKessetsuseiKohan.text = "あり"
        }
        else{
            vKessetsuseiKohan = 0.0
            AriKessetsuseiKohan.text = ""
        }
        self.myCalc()
    }//@IBAction func myActionKessetsuseiKohan()
    @IBAction func myActionRekko(){
        if vRekko == 0{
            vRekko = 1.0
            AriRekko.text = "あり"
        }
        else{
            vRekko = 0.0
            AriRekko.text = ""
        }
        self.myCalc()
    }//@IBAction func myActionRekko()
    @IBAction func myActionSonotanoRoko(){
        if vSonotanoRoko == 0{
            vSonotanoRoko = 1.0
            AriSonotanoRoko.text = "あり"
        }
        else{
            vSonotanoRoko = 0.0
            AriSonotanoRoko.text = ""
        }
        self.myCalc()
    }//@IBAction func myActionSonotanoRoko()
    @IBAction func myActionKakoIsshukanHatsunetsu(){
        if vKakoIsshukanHatsunetsu == 0{
            vKakoIsshukanHatsunetsu = 1.0
            AriKakoIsshukanHatsunetsu.text = "あり"
        }
        else{
            vKakoIsshukanHatsunetsu = 0.0
            AriKakoIsshukanHatsunetsu.text = ""
        }
        self.myCalc()
    }//@IBAction func myActionKakoIsshukanHatsunetsu()
    
    @IBAction func myActionRUN(){
        self.myCalc()
    }
    
    @IBAction func myActionClear(){
        IsshukannoGeri.text = ""
        Hematocrit.text = ""
        Shincho.text = ""
        Taiju.text = ""
        AriKansetsuen.text = ""
        AriKosaien.text = ""
        AriKessetsuseiKohan.text = ""
        AriRekko.text = ""
        AriSonotanoRoko.text = ""
        AriKakoIsshukanHatsunetsu.text = ""
        Seibetsu.selectedSegmentIndex = 0
        Ropemin.selectedSegmentIndex = 0
        Fukubushuryu.selectedSegmentIndex = 0
        FukutsuPicker1.selectRow(0, inComponent: 0, animated: true)
        FukutsuPicker2.selectRow(0, inComponent: 0, animated: true)
        FukutsuPicker3.selectRow(0, inComponent: 0, animated: true)
        FukutsuPicker4.selectRow(0, inComponent: 0, animated: true)
        FukutsuPicker5.selectRow(0, inComponent: 0, animated: true)
        FukutsuPicker6.selectRow(0, inComponent: 0, animated: true)
        FukutsuPicker7.selectRow(0, inComponent: 0, animated: true)
        IppanPicker1.selectRow(0, inComponent: 0, animated: true)
        IppanPicker2.selectRow(0, inComponent: 0, animated: true)
        IppanPicker3.selectRow(0, inComponent: 0, animated: true)
        IppanPicker4.selectRow(0, inComponent: 0, animated: true)
        IppanPicker5.selectRow(0, inComponent: 0, animated: true)
        IppanPicker6.selectRow(0, inComponent: 0, animated: true)
        IppanPicker7.selectRow(0, inComponent: 0, animated: true)
        CDAIscore.text = ""
        Jushodo.text = ""
        fukutsuArrayDouble = [0,0,0,0,0,0,0]
        ippanArrayDouble = [0,0,0,0,0,0,0]
        vKansetsuen = 0
        vKosaien = 0
        vKessetsuseiKohan = 0
        vRekko = 0
        vSonotanoRoko = 0
        vKakoIsshukanHatsunetsu = 0
        IsshukannoGeri.becomeFirstResponder()
    }
    
    @IBAction func myActionEnter(){
        if IsshukannoGeri.isEditing{
            if Double(Hematocrit.text!) == nil{
            Hematocrit.becomeFirstResponder()
            }
        }
        else if Hematocrit.isEditing{
            if Double(Shincho.text!) == nil{
            Shincho.becomeFirstResponder()
            }
        }
        else if Shincho.isEditing{
            if Double(Taiju.text!) == nil{
            Taiju.becomeFirstResponder()
            }
        }
        else if Taiju.isEditing{
            if Double(IsshukannoGeri.text!) == nil{
                IsshukannoGeri.becomeFirstResponder()
            }
        }
        if Double(IsshukannoGeri.text!) != nil && Double(Hematocrit.text!) != nil && Double(Shincho.text!) != nil && Double(Taiju.text!) != nil {
            self.myCalc()
        }
    }//@IBAction func myActionEnter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IsshukannoGeri.becomeFirstResponder()
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
