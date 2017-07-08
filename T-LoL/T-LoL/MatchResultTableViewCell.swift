//
//  MatchResultTableViewCell.swift
//  T-LoL
//
//  Created by Daeyun Ethan Kim on 27/06/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit

// MARK: - MatchResultTableViewCellDelegate: class
protocol MatchResultTableViewCellDelegate: class {
    func showDetail()
}


// MARK: - MatchResultTableViewCell: UITableViewCell
class MatchResultTableViewCell: UITableViewCell {
    
    
    // MARK: Properties
    weak var delegate: MatchResultTableViewCellDelegate?
    
    // MARK: Outlets
    @IBOutlet weak var stackViewForBackgroundColor: UIStackView?
    
    @IBOutlet var resultColorBar: [UIView]?
    
    @IBOutlet weak var gameRoleNDateLabel: UILabel?
    @IBOutlet weak var playTimeLabel: UILabel?
    @IBOutlet weak var showDetailViewButton: UIButton?
    
    
    // SimpleView Outlets
    @IBOutlet weak var simpleViewForBackgroundColor: UIView?
    @IBOutlet weak var champIconImageView: UIImageView?
    
    @IBOutlet var skillIconImageView: [UIImageView]?
    
    @IBOutlet weak var kdaCountLabel: UILabel?
    @IBOutlet weak var kdaRateLabel: UILabel?
    @IBOutlet weak var multiKillLabel: UILabel?
    @IBOutlet weak var levelLabel: UILabel?
    @IBOutlet weak var csLabel: UILabel?
    @IBOutlet weak var killRateLabel: UILabel?
    
    @IBOutlet var itemIconImageView: [UIImageView]?
    
    
    // MARK: Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configureCell() {
        
    }
}


// MARK: MatchResultTableViewCell
extension MatchResultTableViewCell {
    // MARK: Actions
    @IBAction func showDetailACTION(_ sender: UIButton) {
        delegate?.showDetail()
    }
}
