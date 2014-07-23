//
//  AddToDoItemViewController.swift
//  ere
//
//  Created by 杨凌 on 14-7-22.
//  Copyright (c) 2014年 杨凌. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {

    var toDoItem: ToDoItem = ToDoItem()


    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        if sender as? UIBarButtonItem != self.doneButton{
            return
        }
        
        if (self.textField.text.utf16Count > 0) {
            self.toDoItem.itemName = self.textField.text
            self.toDoItem.completed = false
        }
    }
    

}
