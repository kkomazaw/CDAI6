//
//  LichtigerViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/24.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class LichtigerViewController: UIViewController {

    @IBOutlet var GeriL: UISegmentedControl!
    @IBOutlet var KetsubenL: UISegmentedControl!
    @IBOutlet var FukutsuL: UISegmentedControl!
    @IBOutlet var GaikatsuL: UISegmentedControl!
    @IBOutlet var AttsuL: UISegmentedControl!
    @IBOutlet var BenshikkinL: UISegmentedControl!
    @IBOutlet var YakangeriL: UISegmentedControl!
    @IBOutlet var ShirizaiL: UISegmentedControl!
    @IBOutlet var CAIL: UILabel!
    @IBOutlet var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CAIL.text = "0"
        // Do any additional setup after loading the view.
    }

    @IBAction func myActionRUN(){
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
    @IBAction func myActionClear(){
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
