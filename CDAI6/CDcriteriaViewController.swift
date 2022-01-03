//
//  CDcriteriaViewController.swift
//  CDAI6
//
//  Created by Matsui Keiji on 2017/04/20.
//  Copyright © 2017年 Matsui Keiji. All rights reserved.
//

import UIKit

class CDcriteriaViewController: UIViewController {
    
    @IBOutlet var Juso: UISegmentedControl!
    @IBOutlet var Shikiishi: UISegmentedControl!
    @IBOutlet var Hikanraku: UISegmentedControl!
    @IBOutlet var Juretsu: UISegmentedControl!
    @IBOutlet var Joubukabu: UISegmentedControl!
    @IBOutlet var Kyoketsu: UISegmentedControl!
    @IBOutlet var Criteria: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
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
