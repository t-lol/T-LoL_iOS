//
//  MatchDetailViewController.swift
//  T-LoL
//
//  Created by Daeyun Ethan Kim on 29/06/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit

let dCellID = "MatchDetailCollectionViewCell"

// MARK: - MatchDetailViewController: UIViewController
class MatchDetailViewController: UIViewController {
    
    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout?
    @IBOutlet weak var collectionView: UICollectionView?

    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        flowLayout?.minimumInteritemSpacing = 0.0
        flowLayout?.minimumLineSpacing = 0.0
        flowLayout?.itemSize = CGSize(width: view.frame.width, height: view.frame.height)
        
        let nib = UINib(nibName: "MatchDetailCollectionViewCell", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: dCellID)
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dissmissViewController))
        view.addGestureRecognizer(gestureRecognizer)
    }
}


// MARK:
extension MatchDetailViewController {
    // MARK: Action
    func dissmissViewController() {
        dismiss(animated: true, completion: nil)
    }
}



// MARK: MatchDetailViewController: UICollectionViewDataSource, UICollectionViewDelegate
extension MatchDetailViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: dCellID, for: indexPath) as? MatchDetailCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        return cell
    }
}
