//
//  CDAIViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/18.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class CDAIViewController: UIViewController {

    @IBOutlet var Geri: UITextField!
    @IBOutlet var Hemat: UITextField!
    @IBOutlet var Shincho: UITextField!
    @IBOutlet var Taiju: UITextField!
    @IBOutlet var Kaki: UITextField!
    @IBOutlet var Danjo: UISegmentedControl!
    @IBOutlet var decimal: UIButton!
    @IBOutlet var Tugi: UIButton!
    @IBOutlet var Ropemin: UISegmentedControl!
    @IBOutlet var Tumor: UISegmentedControl!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var CDAindex: UILabel!
    @IBOutlet var RopeminNoShiyo: UILabel!
    @IBOutlet var FukubuShuryu: UILabel!
    @IBOutlet var ShukantekinaIppanjotai: UILabel!
    @IBOutlet var KakoisshukannnoHukutsu: UILabel!
    @IBOutlet var Hukutsu1: UIButton!
    @IBOutlet var Hukutsu2: UIButton!
    @IBOutlet var Hukutsu3: UIButton!
    @IBOutlet var Hukutsu4: UIButton!
    @IBOutlet var Hukutsu5: UIButton!
    @IBOutlet var Hukutsu6: UIButton!
    @IBOutlet var Hukutsu7: UIButton!
    @IBOutlet var Ippan1: UIButton!
    @IBOutlet var Ippan2: UIButton!
    @IBOutlet var Ippan3: UIButton!
    @IBOutlet var Ippan4: UIButton!
    @IBOutlet var Ippan5: UIButton!
    @IBOutlet var Ippan6: UIButton!
    @IBOutlet var Ippan7: UIButton!
    @IBOutlet var HukutsuNashi: UIButton!
    @IBOutlet var HukutsuKeido: UIButton!
    @IBOutlet var HukutsuChuto: UIButton!
    @IBOutlet var HukutsuKoudo: UIButton!
    @IBOutlet var IppanRyoko: UIButton!
    @IBOutlet var IppanKeisho: UIButton!
    @IBOutlet var IppanFuryo: UIButton!
    @IBOutlet var IppanJusho: UIButton!
    @IBOutlet var IppanGekisho: UIButton!
    @IBOutlet var Lhukutsu1: UILabel!
    @IBOutlet var Lhukutsu2: UILabel!
    @IBOutlet var Lhukutsu3: UILabel!
    @IBOutlet var Lhukutsu4: UILabel!
    @IBOutlet var Lhukutsu5: UILabel!
    @IBOutlet var Lhukutsu6: UILabel!
    @IBOutlet var Lhukutsu7: UILabel!
    @IBOutlet var Lippan1: UILabel!
    @IBOutlet var Lippan2: UILabel!
    @IBOutlet var Lippan3: UILabel!
    @IBOutlet var Lippan4: UILabel!
    @IBOutlet var Lippan5: UILabel!
    @IBOutlet var Lippan6: UILabel!
    @IBOutlet var Lippan7: UILabel!
    @IBOutlet var Jushodo: UILabel!
    
    var vHukutsu1:Double = 0
    var vHukutsu2:Double = 0
    var vHukutsu3:Double = 0
    var vHukutsu4:Double = 0
    var vHukutsu5:Double = 0
    var vHukutsu6:Double = 0
    var vHukutsu7:Double = 0
    var vIppan1:Double = 0
    var vIppan2:Double = 0
    var vIppan3:Double = 0
    var vIppan4:Double = 0
    var vIppan5:Double = 0
    var vIppan6:Double = 0
    var vIppan7:Double = 0
    var vFlagHukutsu:Int = 0
    var vFlagIppan:Int = 0

    func clearHukutsuLabel() {
        Lhukutsu1.text = ""
        Lhukutsu2.text = ""
        Lhukutsu3.text = ""
        Lhukutsu4.text = ""
        Lhukutsu5.text = ""
        Lhukutsu6.text = ""
        Lhukutsu7.text = ""
    }
    
    func hideHukutsuLabel() {
        Lhukutsu1.isHidden = true
        Lhukutsu2.isHidden = true
        Lhukutsu3.isHidden = true
        Lhukutsu4.isHidden = true
        Lhukutsu5.isHidden = true
        Lhukutsu6.isHidden = true
        Lhukutsu7.isHidden = true
    }
    
    func showHukutsuLabel() {
        Lhukutsu1.isHidden = false
        Lhukutsu2.isHidden = false
        Lhukutsu3.isHidden = false
        Lhukutsu4.isHidden = false
        Lhukutsu5.isHidden = false
        Lhukutsu6.isHidden = false
        Lhukutsu7.isHidden = false
    }
    
    func clearIppanLabel() {
        Lippan1.text = ""
        Lippan2.text = ""
        Lippan3.text = ""
        Lippan4.text = ""
        Lippan5.text = ""
        Lippan6.text = ""
        Lippan7.text = ""
    }
    
    func hideIppanLabel() {
        Lippan1.isHidden = true
        Lippan2.isHidden = true
        Lippan3.isHidden = true
        Lippan4.isHidden = true
        Lippan5.isHidden = true
        Lippan6.isHidden = true
        Lippan7.isHidden = true
    }
    
    func showIppanLabel() {
        Lippan1.isHidden = false
        Lippan2.isHidden = false
        Lippan3.isHidden = false
        Lippan4.isHidden = false
        Lippan5.isHidden = false
        Lippan6.isHidden = false
        Lippan7.isHidden = false
    }
    
    func hideHukutsuWeekButton() {
        Hukutsu1.isHidden = true
        Hukutsu2.isHidden = true
        Hukutsu3.isHidden = true
        Hukutsu4.isHidden = true
        Hukutsu5.isHidden = true
        Hukutsu6.isHidden = true
        Hukutsu7.isHidden = true
    }
    
    func showHukutsuWeekButton() {
        Hukutsu1.isHidden = false
        Hukutsu2.isHidden = false
        Hukutsu3.isHidden = false
        Hukutsu4.isHidden = false
        Hukutsu5.isHidden = false
        Hukutsu6.isHidden = false
        Hukutsu7.isHidden = false
    }
    
    func hideIppanWeekButton() {
        Ippan1.isHidden = true
        Ippan2.isHidden = true
        Ippan3.isHidden = true
        Ippan4.isHidden = true
        Ippan5.isHidden = true
        Ippan6.isHidden = true
        Ippan7.isHidden = true
    }
    
    func showIppanWeekButton() {
        Ippan1.isHidden = false
        Ippan2.isHidden = false
        Ippan3.isHidden = false
        Ippan4.isHidden = false
        Ippan5.isHidden = false
        Ippan6.isHidden = false
        Ippan7.isHidden = false
    }
    
    func hideHukutsuDegreeButton() {
        HukutsuNashi.isHidden = true
        HukutsuKeido.isHidden = true
        HukutsuChuto.isHidden = true
        HukutsuKoudo.isHidden = true
    }
    
    func showHukutsuDegreeButton() {
        HukutsuNashi.isHidden = false
        HukutsuKeido.isHidden = false
        HukutsuChuto.isHidden = false
        HukutsuKoudo.isHidden = false
    }
    
    func hideIppanDegreeButton() {
        IppanRyoko.isHidden = true
        IppanKeisho.isHidden = true
        IppanFuryo.isHidden = true
        IppanJusho.isHidden = true
        IppanGekisho.isHidden = true
    }
    
    func showIppanDegreeButton() {
        IppanRyoko.isHidden = false
        IppanKeisho.isHidden = false
        IppanFuryo.isHidden = false
        IppanJusho.isHidden = false
        IppanGekisho.isHidden = false
    }
    
    override func viewDidLoad() {
        Geri.becomeFirstResponder()
        self.clearHukutsuLabel()
        self.clearIppanLabel()
        self.hideHukutsuDegreeButton()
        self.hideIppanDegreeButton()
        super.viewDidLoad()
    }
    
    func myCalc(){
        if Double(Geri.text!) == nil || Double(Hemat.text!) == nil || Double(Shincho.text!) == nil || Double(Taiju.text!) == nil || Double(Kaki.text!) == nil{
            CDAindex.text = ""
            Jushodo.text = ""
            return
        }
        var he:Double = 0.0
        var shin:Double = 0.0
        var tai:Double = 0.0
        var vy1:Double = 0.0
        var vy2:Double = 0.0
        var vy3:Double = 0.0
        var vy4:Double = 0.0
        var vy5:Double = 0.0
        var vy6:Double = 0.0
        var vy7:Double = 0.0
        var vy8:Double = 0.0
        var ge:Double = 0.0
        var ka:Double = 0.0
        var da:Double = 0.0
        var huk:Double = 0.0
        var shuka:Double = 0.0
        var rope:Double = 0.0
        var tum:Double = 0.0
        var cda:Double = 0.0
        if let i = Double(Geri.text!){
            ge = i
        }
        if let i = Double(Hemat.text!){
            he = i
        }
        if let i = Double(Shincho.text!){
            shin = i
        }
        if let i = Double(Taiju.text!){
            tai = i
        }
        if let i = Double(Kaki.text!){
            ka = i
        }
        if ka > 6{
            Kaki.text = "6"
            ka = 6.0
        }
        da = Double(Danjo.selectedSegmentIndex)
        rope = Double(Ropemin.selectedSegmentIndex)
        tum = Double(Tumor.selectedSegmentIndex)
        huk = vHukutsu1+vHukutsu2+vHukutsu3+vHukutsu4+vHukutsu5+vHukutsu6+vHukutsu7
        shuka = vIppan1+vIppan2+vIppan3+vIppan4+vIppan5+vIppan6+vIppan7
        vy1 = ge * 2.0
        vy2 = huk * 5.0
        vy3 = shuka * 7.0
        vy4 = ka * 20
        vy5 = rope * 30
        if tum == 0.0{
            vy6 = 0.0
        }
        if tum == 1.0{
            vy6 = 20.0
        }
        if tum == 2.0{
            vy6 = 50.0
        }
        if da == 0.0{
            vy7 = (47.0 - he) * 6.0
        }
        if da == 1.0{
            vy7 = (42.0 - he) * 6.0
        }
        if vy7 < 0.0{
            vy7 = 0.0
        }
        if shin != 0.0{
        vy8 = 100.0 * (1 - tai / (shin * shin * 0.0022))
        if vy8 < 0.0{
            vy8 = 0.0
            }
        }//if shin != 0.0
        cda = round(vy1 + vy2 + vy3 + vy4 + vy5 + vy6 + vy7 + vy8)
        if cda < 0.0{
            cda = 0.0
        }
        CDAindex.text = String(Int(cda))
        if cda<150 {
            Jushodo.text = "緩解"
        }
        if cda>=150 && cda<220 {
            Jushodo.text = "軽症"
        }
        if cda>=220 && cda<300 {
            Jushodo.text = "中等症"
        }
        if cda>=300 && cda<450 {
            Jushodo.text = "重症"
        }
        if cda>=450 {
            Jushodo.text = "劇症"
        }
    }

    @IBAction func myActiondecimal(){
        if Hemat.isEditing {
            if Hemat.text?.range(of: ".") == nil{
                Hemat.text?.append(".")
            }//if Hemat.text?.range(of: ".") == nil
        }//if Hemat.isEditing
        if Taiju.isEditing{
            if Taiju.text?.range(of: ".") == nil{
                Taiju.text?.append(".")
            }//if Taiju.text?.range(of: ".") == nil
        }//if Taiju.isEditing
        if Shincho.isEditing{
            if Shincho.text?.range(of: ".") == nil{
                Shincho.text?.append(".")
            }//if Shincho.text?.range(of: ".") == nil
        }//if Shincho.isEditing
    }//@IBAction func myActiondecimal()
    
    @IBAction func myActionTsugi(){
        self.view.endEditing(true)
        self.myCalc()
    }
    @IBAction func myActionRUN(){
        self.myCalc()
    }
    @IBAction func myActionClear(){
        Geri.text = ""
        Hemat.text = ""
        Shincho.text = ""
        Taiju.text = ""
        Kaki.text = ""
        Danjo.selectedSegmentIndex=0
        Ropemin.selectedSegmentIndex=0
        Tumor.selectedSegmentIndex=0
        self.clearHukutsuLabel()
        self.clearIppanLabel()
        vHukutsu1=0.0
        vHukutsu2=0.0
        vHukutsu3=0.0
        vHukutsu4=0.0
        vHukutsu5=0.0
        vHukutsu6=0.0
        vHukutsu7=0.0
        vIppan1=0.0
        vIppan2=0.0
        vIppan3=0.0
        vIppan4=0.0
        vIppan5=0.0
        vIppan6=0.0
        vIppan7=0.0
        CDAindex.text = ""
        Jushodo.text = ""
        Geri.becomeFirstResponder()
        vFlagHukutsu=0
        vFlagIppan=0
    }
    
    func HukutsuShowHide(){
        self.hideHukutsuWeekButton()
        self.hideHukutsuLabel()
        self.showHukutsuDegreeButton()
        self.hideIppanWeekButton()
        self.hideIppanLabel()
        self.hideIppanDegreeButton()
        RopeminNoShiyo.isHidden = false
        FukubuShuryu.isHidden = false
        Ropemin.isHidden = false
        Tumor.isHidden = false
        ShukantekinaIppanjotai.isHidden = true
    }
    
    @IBAction func myActionHukutsu1(){
        self.HukutsuShowHide()
        Hukutsu1.isHidden = false
        vFlagHukutsu = 1
    }
    @IBAction func myActionHukutsu2(){
        self.HukutsuShowHide()
        Hukutsu2.isHidden = false
        vFlagHukutsu = 2
    }
    @IBAction func myActionHukutsu3(){
        self.HukutsuShowHide()
        Hukutsu3.isHidden = false
        vFlagHukutsu = 3
    }
    @IBAction func myActionHukutsu4(){
        self.HukutsuShowHide()
        Hukutsu4.isHidden = false
        vFlagHukutsu = 4
    }
    @IBAction func myActionHukutsu5(){
        self.HukutsuShowHide()
        Hukutsu5.isHidden = false
        vFlagHukutsu = 5
    }
    @IBAction func myActionHukutsu6(){
        self.HukutsuShowHide()
        Hukutsu6.isHidden = false
        vFlagHukutsu = 6
    }
    @IBAction func myActionHukutsu7(){
        self.HukutsuShowHide()
        Hukutsu7.isHidden = false
        vFlagHukutsu = 7
    }
    
    func IppanShowHide(){
        self.hideIppanWeekButton()
        self.hideIppanLabel()
        self.showIppanDegreeButton()
        RopeminNoShiyo.isHidden = true
        FukubuShuryu.isHidden = true
        Ropemin.isHidden = true
        Tumor.isHidden = true
    }
    
    @IBAction func myActionIppan1(){
        self.IppanShowHide()
        Ippan1.isHidden = false
        vFlagIppan = 1
    }
    @IBAction func myActionIppan2(){
        self.IppanShowHide()
        Ippan2.isHidden = false
        vFlagIppan = 2
    }
    @IBAction func myActionIppan3(){
        self.IppanShowHide()
        Ippan3.isHidden = false
        vFlagIppan = 3
    }
    @IBAction func myActionIppan4(){
        self.IppanShowHide()
        Ippan4.isHidden = false
        vFlagIppan = 4
    }
    @IBAction func myActionIppan5(){
        self.IppanShowHide()
        Ippan5.isHidden = false
        vFlagIppan = 5
    }
    @IBAction func myActionIppan6(){
        self.IppanShowHide()
        Ippan6.isHidden = false
        vFlagIppan = 6
    }
    @IBAction func myActionIppan7(){
        self.IppanShowHide()
        Ippan7.isHidden = false
        vFlagIppan = 7
    }
    @IBAction func myActionHukutsuNashi(){
        self.showHukutsuWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideHukutsuDegreeButton()
        ShukantekinaIppanjotai.isHidden = false
        switch vFlagHukutsu {
        case 1:
            Lhukutsu1.text = "なし"
            vHukutsu1 = 0
        case 2:
            Lhukutsu2.text = "なし"
            vHukutsu2 = 0
        case 3:
            Lhukutsu3.text = "なし"
            vHukutsu3 = 0
        case 4:
            Lhukutsu4.text = "なし"
            vHukutsu4 = 0
        case 5:
            Lhukutsu5.text = "なし"
            vHukutsu5 = 0
        case 6:
            Lhukutsu6.text = "なし"
            vHukutsu6 = 0
        case 7:
            Lhukutsu7.text = "なし"
            vHukutsu7 = 0
        default:
            break
        }//switch vFlagHukutsu
        self.myCalc()
    }
    @IBAction func myActionHukutsuKeido(){
        self.showHukutsuWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideHukutsuDegreeButton()
        ShukantekinaIppanjotai.isHidden = false
        switch vFlagHukutsu {
        case 1:
            Lhukutsu1.text = "軽度"
            vHukutsu1 = 1
        case 2:
            Lhukutsu2.text = "軽度"
            vHukutsu2 = 1
        case 3:
            Lhukutsu3.text = "軽度"
            vHukutsu3 = 1
        case 4:
            Lhukutsu4.text = "軽度"
            vHukutsu4 = 1
        case 5:
            Lhukutsu5.text = "軽度"
            vHukutsu5 = 1
        case 6:
            Lhukutsu6.text = "軽度"
            vHukutsu6 = 1
        case 7:
            Lhukutsu7.text = "軽度"
            vHukutsu7 = 1
        default:
            break
        }//switch vFlagHukutsu
        self.myCalc()
    }
    @IBAction func myActionHukutsuChuto(){
        self.showHukutsuWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideHukutsuDegreeButton()
        ShukantekinaIppanjotai.isHidden = false
        switch vFlagHukutsu {
        case 1:
            Lhukutsu1.text = "中等"
            vHukutsu1 = 2
        case 2:
            Lhukutsu2.text = "中等"
            vHukutsu2 = 2
        case 3:
            Lhukutsu3.text = "中等"
            vHukutsu3 = 2
        case 4:
            Lhukutsu4.text = "中等"
            vHukutsu4 = 2
        case 5:
            Lhukutsu5.text = "中等"
            vHukutsu5 = 2
        case 6:
            Lhukutsu6.text = "中等"
            vHukutsu6 = 2
        case 7:
            Lhukutsu7.text = "中等"
            vHukutsu7 = 2
        default:
            break
        }//switch vFlagHukutsu
        self.myCalc()
    }
    @IBAction func myActionHukutsuKoudo(){
        self.showHukutsuWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideHukutsuDegreeButton()
        ShukantekinaIppanjotai.isHidden = false
        switch vFlagHukutsu {
        case 1:
            Lhukutsu1.text = "高度"
            vHukutsu1 = 3
        case 2:
            Lhukutsu2.text = "高度"
            vHukutsu2 = 3
        case 3:
            Lhukutsu3.text = "高度"
            vHukutsu3 = 3
        case 4:
            Lhukutsu4.text = "高度"
            vHukutsu4 = 3
        case 5:
            Lhukutsu5.text = "高度"
            vHukutsu5 = 3
        case 6:
            Lhukutsu6.text = "高度"
            vHukutsu6 = 3
        case 7:
            Lhukutsu7.text = "高度"
            vHukutsu7 = 3
        default:
            break
        }//switch vFlagHukutsu
        self.myCalc()
    }
    @IBAction func myActionIppanRyoko(){
        self.showIppanWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideIppanDegreeButton()
        RopeminNoShiyo.isHidden = false
        FukubuShuryu.isHidden = false
        Ropemin.isHidden = false
        Tumor.isHidden = false
        switch vFlagIppan {
        case 1:
            Lippan1.text = "良好"
            vIppan1 = 0
        case 2:
            Lippan2.text = "良好"
            vIppan2 = 0
        case 3:
            Lippan3.text = "良好"
            vIppan3 = 0
        case 4:
            Lippan4.text = "良好"
            vIppan4 = 0
        case 5:
            Lippan5.text = "良好"
            vIppan5 = 0
        case 6:
            Lippan6.text = "良好"
            vIppan6 = 0
        case 7:
            Lippan7.text = "良好"
            vIppan7 = 0
        default:
            break
        }//switch vFlagIppan
        self.myCalc()
    }
    @IBAction func myActionIppanKeisho(){
        self.showIppanWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideIppanDegreeButton()
        RopeminNoShiyo.isHidden = false
        FukubuShuryu.isHidden = false
        Ropemin.isHidden = false
        Tumor.isHidden = false
        switch vFlagIppan {
        case 1:
            Lippan1.text = "軽症"
            vIppan1 = 1
        case 2:
            Lippan2.text = "軽症"
            vIppan2 = 1
        case 3:
            Lippan3.text = "軽症"
            vIppan3 = 1
        case 4:
            Lippan4.text = "軽症"
            vIppan4 = 1
        case 5:
            Lippan5.text = "軽症"
            vIppan5 = 1
        case 6:
            Lippan6.text = "軽症"
            vIppan6 = 1
        case 7:
            Lippan7.text = "軽症"
            vIppan7 = 1
        default:
            break
        }//switch vFlagIppan
        self.myCalc()
    }
    @IBAction func myActionIppanFuryo(){
        self.showIppanWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideIppanDegreeButton()
        RopeminNoShiyo.isHidden = false
        FukubuShuryu.isHidden = false
        Ropemin.isHidden = false
        Tumor.isHidden = false
        switch vFlagIppan {
        case 1:
            Lippan1.text = "不良"
            vIppan1 = 2
        case 2:
            Lippan2.text = "不良"
            vIppan2 = 2
        case 3:
            Lippan3.text = "不良"
            vIppan3 = 2
        case 4:
            Lippan4.text = "不良"
            vIppan4 = 2
        case 5:
            Lippan5.text = "不良"
            vIppan5 = 2
        case 6:
            Lippan6.text = "不良"
            vIppan6 = 2
        case 7:
            Lippan7.text = "不良"
            vIppan7 = 2
        default:
            break
        }//switch vFlagIppan
        self.myCalc()
    }
    @IBAction func myActionIppanJusho(){
        self.showIppanWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideIppanDegreeButton()
        RopeminNoShiyo.isHidden = false
        FukubuShuryu.isHidden = false
        Ropemin.isHidden = false
        Tumor.isHidden = false
        switch vFlagIppan {
        case 1:
            Lippan1.text = "重症"
            vIppan1 = 3
        case 2:
            Lippan2.text = "重症"
            vIppan2 = 3
        case 3:
            Lippan3.text = "重症"
            vIppan3 = 3
        case 4:
            Lippan4.text = "重症"
            vIppan4 = 3
        case 5:
            Lippan5.text = "重症"
            vIppan5 = 3
        case 6:
            Lippan6.text = "重症"
            vIppan6 = 3
        case 7:
            Lippan7.text = "重症"
            vIppan7 = 3
        default:
            break
        }//switch vFlagIppan
        self.myCalc()
    }
    @IBAction func myActionIppanGekisho(){
        self.showIppanWeekButton()
        self.showIppanWeekButton()
        self.showIppanLabel()
        self.showHukutsuLabel()
        self.hideIppanDegreeButton()
        RopeminNoShiyo.isHidden = false
        FukubuShuryu.isHidden = false
        Ropemin.isHidden = false
        Tumor.isHidden = false
        switch vFlagIppan {
        case 1:
            Lippan1.text = "劇症"
            vIppan1 = 4
        case 2:
            Lippan2.text = "劇症"
            vIppan2 = 4
        case 3:
            Lippan3.text = "劇症"
            vIppan3 = 4
        case 4:
            Lippan4.text = "劇症"
            vIppan4 = 4
        case 5:
            Lippan5.text = "劇症"
            vIppan5 = 4
        case 6:
            Lippan6.text = "劇症"
            vIppan6 = 4
        case 7:
            Lippan7.text = "劇症"
            vIppan7 = 4
        default:
            break
        }//switch vFlagIppan
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
