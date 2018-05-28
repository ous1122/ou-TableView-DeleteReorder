//
//  DITDeliever.swift
//  DITFoodDelivery
//
//  Created by D7703_17 on 2018. 5. 21..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class FoodStoreTableViewController: UITableViewController {
    var foodStoreNames = ["번개반점", "아딸", "왕짜장", "토마토도시락 동의과학대점", "늘해랑",  "홍콩반점0410 양정점"]
    var foodStoreImages = ["01", "02", "03", "04", "05",  "06"]
    var foodStoreLocation = ["부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 393-18",
                             "부산광역시 부산진구 양정1동 356-22", "부산광역시 부산진구 양정동",
                            "부산광역시 부산진구 양정1동 350-1", "부산광역시 부산진구 양정1동 중앙대로 902"]
    var foodStoreType = ["중국식당", "분식점", "중국식당", "도시락", "돼지국밥집", "중국식당"]
    var foodStoreTel = ["000-0000-0000", "000-0000-0001", "000-0000-0002", "000-0000-0003", "000-0000-0004", "000-0000-0005",]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = " DIT 철가방"
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return foodStoreNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! FoodStoreTableViewCell

        // Configure the cell...
//        cell.textLabel?.text = foodStoreNames[indexPath.row]
//        cell.imageView?.image = UIImage(named: foodStoreImages[indexPath.row])
//        cell.imageView?.image = UIImage(named:"02")
        
        cell.nameLabel.text = foodStoreNames[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: foodStoreImages[indexPath.row])
        cell.locationLabel.text = foodStoreLocation[indexPath.row]
        cell.typeLabel.text = foodStoreType[indexPath.row]

        return cell
    }
/*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionMenu = UIAlertController(title:"전화걸기", message:foodStoreTel[indexPath.row], preferredStyle: .actionSheet)
        
        let callAction = UIAlertAction(title: "전화를 겁니다.", style: .default) {(action: UIAlertAction) -> Void in
            
            let alert = UIAlertController(title: self.foodStoreNames[indexPath.row]+"에 전화를 걸었습니다.", message: self.foodStoreNames[indexPath.row]+"에 전화를 걸어버렸다.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "알겠습니다.", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        //print("전화를 걸고 있습니다.")
    }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        optionMenu.addAction(callAction)
        optionMenu.addAction(cancelAction)
        present(optionMenu, animated: true, completion: nil)
    }
      */
        
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let tmp1 = foodStoreNames[to.row]
        foodStoreNames[to.row] = foodStoreNames[fromIndexPath.row]
        foodStoreNames[fromIndexPath.row] = tmp1
        
        let tmp2 = foodStoreImages[to.row]
        foodStoreImages[to.row] = foodStoreImages[fromIndexPath.row]
        foodStoreImages[fromIndexPath.row] = tmp2
        
        tableView.reloadData()
    }
     */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
     if segue.identifier == "showDetail" {
        if let indexPath = tableView.indexPathForSelectedRow {
            let destinationController = segue.destination as! DetailViewController
            destinationController.title = foodStoreNames[indexPath.row]
            
            //이미지 넘기기
            destinationController.cellImage = foodStoreImages[indexPath.row]
        }
    }

}
}
