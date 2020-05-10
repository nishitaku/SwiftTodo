//
//  ViewController.swift
//  Todo
//
//  Created by Takuro Nishino on 2020/05/08.
//  Copyright © 2020年 nishitaku. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // UITableView、numberOfRowsInSectionの追加(表示するcellし数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    // UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todoCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        todoCell.textLabel!.text = todoList[indexPath.row]
        return todoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // 追加画面で入力した内容を取得する
        if UserDefaults.standard.object(forKey: "todoList") != nil {
            todoList = UserDefaults.standard.object(forKey: "todoList") as! [String]
        }
    }


}

