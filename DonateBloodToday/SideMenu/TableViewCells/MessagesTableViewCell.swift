//
//  MessagesTableViewCell.swift
//  DonateBloodToday
//
//  Created by xminds on 12/04/21.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    
    //MARK:- IBOutlet Connections
    
    @IBOutlet var imgView_profilePic: UIImageView!
    @IBOutlet var switch_goingOrNotGoing: UISwitch!
    @IBOutlet var lbl_message: UILabel!
    @IBOutlet var btnOutlet_call: UIButton!
    @IBOutlet var btnOutlet_share: UIButton!
    @IBOutlet var lbl_goingOrNotGoing: UILabel!
    
    //MARK:- Initial Functions

    override func awakeFromNib() {
        super.awakeFromNib()
        imgView_profilePic.layer.cornerRadius = 30.0
        imgView_profilePic.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
