//
//  NoticeTableViewController.swift
//  CAUDormitory_prototype
//
//  Created by CAUADC on 2018. 2. 1..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class NoticeTableViewController: UITableViewController {

    var notices:[Notice] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let notice1 = Notice.init(title: "[생활관]2017-동계방학 퇴관 안내/Moving Out Guide", date: "18.01.31")
        notice1.images.append(#imageLiteral(resourceName: "img1_1"))
        notice1.images.append(#imageLiteral(resourceName: "img1_2"))
        notice1.images.append(#imageLiteral(resourceName: "img1_3"))
        
        let notice2 = Notice.init(title: "[생활관]2018년도 1학기 생활관 입퇴관 관련 신청 안내", date: "18.01.31")
        notice2.images.append(#imageLiteral(resourceName: "img2_1"))
        
        let notice3 = Notice.init(title: "[긴급]생활관 정전 및 단수 일정 변경 안내", date: "18.01.31")
        notice3.images.append(#imageLiteral(resourceName: "img1_1"))
        notice3.images.append(#imageLiteral(resourceName: "img3_2"))
        
        notices.append(notice1)
        notices.append(notice2)
        notices.append(notice3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return notices.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        var notice = notices[indexPath.row]

        cell.textLabel?.text = notice.title
        cell.detailTextLabel?.text = notice.date
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

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
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let selectedRow = indexPath.row
            
            
            let vc = segue.destination as? NoticeImageTableViewController
            
            vc?.notice = notices[selectedRow]
        }
        
        
    }
    

}
