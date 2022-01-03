//
//  SeoViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/23.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class SeoViewController: UIViewController {
    
    @IBOutlet var KetsubenSEO: UISegmentedControl!
    @IBOutlet var HaibenSEO: UISegmentedControl!
    @IBOutlet var SekichinSEO: UITextField!
    @IBOutlet var HbSEO: UITextField!
    @IBOutlet var AlbSEO: UITextField!
    @IBOutlet var SEOIndex: UILabel!
    @IBOutlet var SEODegree: UILabel!
    @IBOutlet var decimalButton: UIButton!
    @IBOutlet var RUNButton: UIButton!
    @IBOutlet var clearButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        SEOIndex.text = ""
        SEODegree.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActiondecimal(){
        if SekichinSEO.isEditing {
            if SekichinSEO.text?.range(of: ".") == nil{
                SekichinSEO.text?.append(".")
            }//if SekichinSEO.text?.range(of: ".") == nil
        }//if SekichinSEO.isEditing
        if HbSEO.isEditing{
            if HbSEO.text?.range(of: ".") == nil{
                HbSEO.text?.append(".")
            }//if HbSEO.text?.range(of: ".") == nil
        }//if HbSEO.isEditing
        if AlbSEO.isEditing{
            if AlbSEO.text?.range(of: ".") == nil{
                AlbSEO.text?.append(".")
            }//if AlbSEO.text?.range(of: ".") == nil
        }//if AlbSEO.isEditing
    }//@IBAction func myActiondecimal()
    
    func myCalc(){
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
    }//func myCalc()
    
    @IBAction func myActionRUN(){
        self.view.endEditing(true)
        self.myCalc()
    }
    
    @IBAction func myActionClear(){
        KetsubenSEO.selectedSegmentIndex = 0
        HaibenSEO.selectedSegmentIndex = 0
        SekichinSEO.text = ""
        HbSEO.text = ""
        AlbSEO.text = ""
        SEOIndex.text = ""
        SEODegree.text = ""
    }
    
    @IBAction func myActionChangeValue(){
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
