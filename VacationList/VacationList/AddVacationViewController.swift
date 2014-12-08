//
//  AddVacationViewController.swift
//  VacationList
//
//  Created by Joey on 2014/12/7.
//  Copyright (c) 2014年 Xincode9. All rights reserved.
//

import UIKit

class AddVacationViewController: UIViewController {
    
    var vacation = Vacation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var textField: UITextField!
    @IBOutlet var doneButton: UIBarButtonItem!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if sender as NSObject == doneButton {
            if(!textField.text.isEmpty){
                vacation.place = textField.text
            }
            
        }
      
    }
    

}
