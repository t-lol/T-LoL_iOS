//
//  MatchDetailHeaderView.swift
//  T-LoL
//
//  Created by Daeyun Ethan Kim on 29/06/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit


// MARK: - MatchDetailHeaderView: UITableViewHeaderFooterView
class MatchDetailHeaderView: UITableViewHeaderFooterView {

    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var resultLabel: UIView?
    @IBOutlet weak var catchCountLabel: UILabel?

    
    // MARK: Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("awakeFromNib")
//        setUpViews()
    }
    
//    func setUpViews() {
//        let centerYConstraintForResultLabel = resultLabel?.centerYAnchor.constraint(equalTo: centerYAnchor)
//        let xConstraintForResultLabel = NSLayoutConstraint(item: resultLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 10)
//        let widthConstriantFroResultLabel = NSLayoutConstraint(item: resultLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
//        
//        let centerYConstraintForCatchCountLabel = catchCountLabel?.centerYAnchor.constraint(equalTo: centerYAnchor)
//        let xConstraintForCatchCountLabel = NSLayoutConstraint(item: catchCountLabel, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 10)
//        let widthConstriantFroCatchCountLabel = NSLayoutConstraint(item: catchCountLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
//        
//        NSLayoutConstraint.activate([centerYConstraintForResultLabel, xConstraintForResultLabel, widthConstriantFroResultLabel, centerYConstraintForCatchCountLabel, xConstraintForCatchCountLabel, widthConstriantFroCatchCountLabel])
//    }
}
