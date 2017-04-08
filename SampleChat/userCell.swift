//
//  userCell.swift
//  SampleChat
//
//  Created by Roger on 4/7/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit

class userCell: UITableViewCell {

    @IBOutlet weak var firstNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setCheckMark(selected: false);
        // Initialization code
    }
    
    func updateUI(user : User){
        
        firstNameLbl.text = user.firstName;
    }

    func setCheckMark(selected : Bool){
        
        let imageStr = selected ? "messageindicatorchecked1" : "messageindicator1"
        self.accessoryView = UIImageView(image: UIImage(named: imageStr));
        
    }
}
