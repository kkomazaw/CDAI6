//
//  PUCAIViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/25.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class PUCAIViewController: UIViewController {

    @IBOutlet var Fukutsu: UISegmentedControl!
    @IBOutlet var Ketsuben: UISegmentedControl!
    @IBOutlet var Bennokatasa: UISegmentedControl!
    @IBOutlet var Haibenkaisu: UISegmentedControl!
    @IBOutlet var Yakannohaiben: UISegmentedControl!
    @IBOutlet var Katsudosei: UISegmentedControl!
    @IBOutlet var ClearButton: UIButton!
    @IBOutlet var PUCAIscore: UILabel!
    @IBOutlet var Jushodo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
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
    }//@IBAction func myActionRUN()
    
    @IBAction func myActionClear(){
        Fukutsu.selectedSegmentIndex = 0
        Ketsuben.selectedSegmentIndex = 0
        Bennokatasa.selectedSegmentIndex = 0
        Haibenkaisu.selectedSegmentIndex = 0
        Yakannohaiben.selectedSegmentIndex = 0
        Katsudosei.selectedSegmentIndex = 0
        PUCAIscore.text = "0"
        Jushodo.text = "寛解"
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
