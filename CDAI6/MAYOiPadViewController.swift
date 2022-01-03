//
//  MAYOiPadViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/05/05.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class MAYOiPadViewController: UIViewController {
    
    @IBOutlet var Haiben: UISegmentedControl!
    @IBOutlet var Ketsuben: UISegmentedControl!
    @IBOutlet var Naishikyo: UISegmentedControl!
    @IBOutlet var PGA: UISegmentedControl!
    @IBOutlet var UCDAIscore: UILabel!
    @IBOutlet var clearButtonM: UIButton!
    
    @IBAction func myActionRUNMayo(){
        let vHaiben = Haiben.selectedSegmentIndex
        let vKetsuben = Ketsuben.selectedSegmentIndex
        let vNaishikyo = Naishikyo.selectedSegmentIndex
        let vPGA = PGA.selectedSegmentIndex
        let vUCDAI = vHaiben+vKetsuben+vNaishikyo+vPGA
        UCDAIscore.text = String(vUCDAI)
    }
    
    @IBAction func myActionClearMayo(){
        Haiben.selectedSegmentIndex = 0
        Ketsuben.selectedSegmentIndex = 0
        Naishikyo.selectedSegmentIndex = 0
        PGA.selectedSegmentIndex = 0
        UCDAIscore.text = "0"
    }
    
    @IBOutlet var GeriL: UISegmentedControl!
    @IBOutlet var KetsubenL: UISegmentedControl!
    @IBOutlet var FukutsuL: UISegmentedControl!
    @IBOutlet var GaikatsuL: UISegmentedControl!
    @IBOutlet var AttsuL: UISegmentedControl!
    @IBOutlet var BenshikkinL: UISegmentedControl!
    @IBOutlet var YakangeriL: UISegmentedControl!
    @IBOutlet var ShirizaiL: UISegmentedControl!
    @IBOutlet var CAIL: UILabel!
    @IBOutlet var clearButtonL: UIButton!
    
    @IBAction func myActionRUNLichtiger(){
        let vGeriL = GeriL.selectedSegmentIndex
        let vKetsubenL = KetsubenL.selectedSegmentIndex
        let vFukutsuL = FukutsuL.selectedSegmentIndex
        let vGaikatsuL = GaikatsuL.selectedSegmentIndex
        let vAttsuL = AttsuL.selectedSegmentIndex
        let vBenshikkinL = BenshikkinL.selectedSegmentIndex
        let vYakangeriL = YakangeriL.selectedSegmentIndex
        let vShirizaiL = ShirizaiL.selectedSegmentIndex
        
        let vCAIL = vGeriL + vKetsubenL + vFukutsuL + vGaikatsuL + vAttsuL + vBenshikkinL + vYakangeriL + vShirizaiL
        CAIL.text = String(vCAIL)
    }
    @IBAction func myActionClearLichtiger(){
        CAIL.text = "0"
        GeriL.selectedSegmentIndex = 0
        KetsubenL.selectedSegmentIndex = 0
        FukutsuL.selectedSegmentIndex = 0
        GaikatsuL.selectedSegmentIndex = 0
        AttsuL.selectedSegmentIndex = 0
        BenshikkinL.selectedSegmentIndex = 0
        YakangeriL.selectedSegmentIndex = 0
        ShirizaiL.selectedSegmentIndex = 0
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
