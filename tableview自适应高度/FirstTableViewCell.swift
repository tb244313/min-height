//
//  FirstTableViewCell.swift
//  tableview自适应高度
//
//  Created by CrysTalRock.Ming on 16/10/26.
//  Copyright © 2016年 Sheem. All rights reserved.
//

import UIKit
import SnapKit
class FirstTableViewCell: UITableViewCell {

   var label: UILabel?
    
    override init(style:UITableViewCellStyle,reuseIdentifier:String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor  = UIColor.clear
        self.selectionStyle = .none
        
        initSubViews()
    }
    
    func initSubViews(){
        label = UILabel()
        label?.font = UIFont.boldSystemFont(ofSize: 16)
        label?.numberOfLines = 0
        label?.lineBreakMode = .byWordWrapping
        self.contentView.addSubview(label!)
        label?.snp_makeConstraints({ (make) in
            make.left.equalTo(10)
            make.width.equalTo(UIScreen.main.bounds.width - 20)
            make.top.equalTo(20)
            make.bottom.equalTo(-10)
        })
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
