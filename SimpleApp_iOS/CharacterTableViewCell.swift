//
//  CharacterTableViewCell.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 23/6/22.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    
    @IBOutlet var characterNameLabel: UILabel!
    @IBOutlet var characterAgeLabel: UILabel!
    @IBOutlet var characterInfoLabel: UILabel!
    
    @IBOutlet var characterAttackLabel: UILabel!
    @IBOutlet var characterHpLabel: UILabel!
    @IBOutlet var characterDefenseLabel: UILabel!
    
    @IBOutlet var faceCharacterImage: UIImageView!
    
    @IBOutlet var attackImage: UIImageView!
    @IBOutlet var hpImage: UIImageView!
    @IBOutlet var defenseImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
