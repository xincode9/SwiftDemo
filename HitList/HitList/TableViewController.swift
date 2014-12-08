//
//  TableViewController.swift
//  HitList
//
//  Created by Joey on 2014/12/8.
//  Copyright (c) 2014年 Xincode9. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBAction func addName(sender: AnyObject){
            var alert = UIAlertController(title: "新增姓名", message: "請輸入一個名字", preferredStyle: UIAlertControllerStyle.Alert)
        
        //Void 無返回東西 , in 後面是執行語句
        let saveAction = UIAlertAction(title: "確定", style: .Default) { (action:UIAlertAction!) -> Void in
            //                           !  - 解包
            let textfiled = alert.textFields![0] as UITextField
            self.names.append(textfiled.text)
            //self.tableView.reloadData()
            
            
            
            //向TableView 插入一個數據(帶有動畫)
            //取得names Array的最後一個的索引
            let indexPath = NSIndexPath(forItem: (self.names.count - 1), inSection: 0)
            self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            
            
        }
        
        let cancelAction = UIAlertAction(title: "取消", style: .Cancel) { (action:UIAlertAction!) -> Void in
            
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        alert.addTextFieldWithConfigurationHandler { (textfield:UITextField!) -> Void in
            
        }
        
        //彈出來
        self.presentViewController(alert, animated: true, completion: nil)
        
        
    }
    
    //儲存姓名的Array
    var names = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "姓名列表"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return names.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //單元格
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
            //Configure the cell...
        cell.textLabel?.text = names[indexPath.row]
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
