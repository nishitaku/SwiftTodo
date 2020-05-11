//
//  ViewController.swift
//  Todo
//
//  Created by Takuro Nishino on 2020/05/08.
//  Copyright © 2020年 nishitaku. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    
    private var todoList: [String] = []
    let defaults = UserDefaults.standard
    
    // UITableView、numberOfRowsInSectionの追加(表示するcellし数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    // UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let customCell = tableView.dequeueReusableCell(withIdentifier: "ReuseCell", for: indexPath) as! CustomTableViewCell
        customCell.controlDisplay(indexPath: indexPath, label: todoList[indexPath.row])
        return customCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 追加画面で入力した内容を取得する
        let client = UserDefaultsClient()
        todoList = client.getUserDefaultTodoList()
        
        table.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "ReuseCell")
    }


}

