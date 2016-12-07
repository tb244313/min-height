//
//  ViewController.swift
//  tableview自适应高度
//
//  Created by CrysTalRock.Ming on 16/10/26.
//  Copyright © 2016年 Sheem. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    var tableView :UITableView!
    
    var catalog = [[String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化列表数据
        catalog.append(["第一节：Swift 环境搭建",
                        "由于Swift开发环境需要在OS X系统中运行，下面就一起来学习一下swift开发环境的搭建方法。第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建第一节：Swift 环境搭建"])
        catalog.append(["第二节：Swift 基本语法",
                        "本节介绍Swift中一些常用的关键字。以及引入、注释等相关操作。"])
        catalog.append(["第三节: Swift 数据类型",
                        "Swift 提供了非常丰富的数据类型，比如：Int、UInt、浮点数、布尔值、字符串、字符等等。"])
        catalog.append(["第四节: Swift 变量",
                        "Swift 每个变量都指定了特定的类型，该类型决定了变量占用内存的大小。"])
        catalog.append(["第五节: Swift 可选(Optionals)类型",
                        "Swift 的可选（Optional）类型，用于处理值缺失的情况。"])
        
        //创建表格视图
        self.tableView = UITableView(frame:CGRect(x:0,y:0,width:self.view.bounds.width,height:self.view.bounds.height),style:UITableViewStyle.plain)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.estimatedRowHeight = 44.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: "cell1")
        self.view.addSubview(self.tableView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func  numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! FirstTableViewCell
        let entry = catalog[indexPath.row]
        cell.label?.text = "\(entry[0]):\(entry[1])"
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

