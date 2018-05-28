//
//  DetailViewController.swift
//  Custom TableView Cell
//
//  Created by D7703_24 on 2018. 5. 28..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var cellImage: String = ""
    var cellName : String = ""
    var cellLocation : String = ""
    @IBOutlet weak var cellType: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellNamePass: UILabel!
    @IBOutlet weak var cellLocationPass: UILabel!
    @IBOutlet weak var cellTypePass: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellImageView.image = UIImage(named: cellImage)
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
