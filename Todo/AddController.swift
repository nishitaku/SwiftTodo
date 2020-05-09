//
//  AddController.swift
//  Todo
//
//  Created by Takuro Nishino on 2020/05/09.
//  Copyright © 2020年 nishitaku. All rights reserved.
//

import UIKit

var todoList = [String]()

class AddController: UIViewController {
    @IBOutlet weak var todoTextField: UITextField!
    @IBAction func todoAddButton(_ sender: Any) {
        todoList.append(todoTextField.text!)
        // フィールドを空にする
        todoTextField.text = ""
        // 変数の中身をUDに追加
        UserDefaults.standard.set(todoTextField, forKey: "todoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
