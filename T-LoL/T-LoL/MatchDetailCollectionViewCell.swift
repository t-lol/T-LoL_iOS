//
//  MatchDetailCollectionViewCell.swift
//  T-LoL
//
//  Created by Daeyun Ethan Kim on 29/06/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit

let kHeaderViewID = "MatchDetailHeaderViewID"
let kCellID = "MatchDetailTableViewCell"

// MARK: - MatchDetailCollectionViewCell: UICollectionViewCell
class MatchDetailCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView?
    
    
    // MARK: Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        

        tableView?.delegate = self
        tableView?.dataSource = self
    
        let headerNib: UINib = UINib(nibName: "MatchDetailHeaderView", bundle: nil)
        tableView?.register(headerNib, forHeaderFooterViewReuseIdentifier: kHeaderViewID)
        
        let cellNib = UINib(nibName: "MatchDetailTableViewCell", bundle: nil)
        tableView?.register(cellNib, forCellReuseIdentifier: "MatchDetailTableViewCell")
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
//        tableView?.delegate = self
//        tableView?.dataSource = self
//        
//        let headerNib: UINib = UINib.init(nibName: "MatchResultHeaderView", bundle: nil)
//        tableView?.register(headerNib, forHeaderFooterViewReuseIdentifier: kHeaderViewID)
    }
    
}

// MARK: MatchDetailCollectionViewCell: UITableViewDelegate, UITableViewDataSource
extension MatchDetailCollectionViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: kHeaderViewID) as? MatchDetailHeaderView else {
            print("없음")
            return nil
        }
        headerView.resultLabel?.frame = CGRect(x: 15, y: 5, width: 200, height: 20)
        headerView.catchCountLabel?.frame = CGRect(x: 250, y: 5, width: 100, height: 20)
    
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MatchDetailTableViewCell", for: indexPath) as? MatchDetailTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}
