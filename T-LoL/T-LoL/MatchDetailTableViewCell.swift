//
//  MatchDetailTableViewCell.swift
//  T-LoL
//
//  Created by Daeyun Ethan Kim on 29/06/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit

// MARK: - MatchDetailTableViewCell: UITableViewCell
class MatchDetailTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var champIconImageView: UIImageView?
    @IBOutlet var skillIconImageView: [UIImageView]?
    
    @IBOutlet weak var tierLabel: UILabel?
    @IBOutlet weak var playerNameLabel: UILabel?
    @IBOutlet weak var kdaCountLabel: UILabel?
    @IBOutlet weak var kdaRateLabel: UILabel?
    
    @IBOutlet var itemIconImageView: [UIImageView]?
    
    @IBOutlet weak var csCountLabel: UILabel?
    @IBOutlet weak var killCountLabel: UILabel?
    @IBOutlet weak var damageCountProgressView: UIProgressView?
    
    
    // MARK: Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
