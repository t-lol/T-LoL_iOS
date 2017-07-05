//
//  SearchResultViewController.swift
//  T-LoL
//
//  Created by Daeyun Ethan Kim on 27/06/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit

// MARK: - SearchResultViewController: UIViewController
class SearchResultViewController: UIViewController {

    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView?
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "MatchResultTableViewCell", bundle: nil)
        tableView?.register(nib, forCellReuseIdentifier: "MatchResultTableViewCell")
        
    }
    
}

// MARK: SearchResultViewController: UITableViewDelegate, UITableViewDataSource
extension SearchResultViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        let count = section == 0 ? 1 : 2
        
        //        return count
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MatchResultTableViewCell", for: indexPath) as? MatchResultTableViewCell else {
            return UITableViewCell()
        }
        cell.delegate = self
        
        return cell
    }
}

// MARK: SearchResultViewController
extension SearchResultViewController {
    // MARK: Actions
}

// MARK: SearchResultViewController: MatchResultTableViewCellDelegate
extension SearchResultViewController: MatchResultTableViewCellDelegate {
    func showDetail() {
//        let storyboard = UIStoryboard(name: "MatchDetail", bundle: nil)
//        
//        let matchDetailVC = storyboard.instantiateViewController(withIdentifier: "MatchDetailViewController")
//        
//        present(matchDetailVC, animated: true, completion: nil)
        
        performSegue(withIdentifier: "SearchResultSegue", sender: Any.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
