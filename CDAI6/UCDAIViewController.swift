//
//  UCDAIViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/20.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class UCDAIViewController: UIViewController {
    
    @IBOutlet var Haiben: UISegmentedControl!
    @IBOutlet var Ketsuben: UISegmentedControl!
    @IBOutlet var Naishikyo: UISegmentedControl!
    @IBOutlet var PGA: UISegmentedControl!
    @IBOutlet var UCDAIscore: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func myActionRUN(){
        let vHaiben = Haiben.selectedSegmentIndex
        let vKetsuben = Ketsuben.selectedSegmentIndex
        let vNaishikyo = Naishikyo.selectedSegmentIndex
        let vPGA = PGA.selectedSegmentIndex
        let vUCDAI = vHaiben+vKetsuben+vNaishikyo+vPGA
        UCDAIscore.text = String(vUCDAI)
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
