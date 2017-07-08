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
    var userID: String?
    
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView?
    @IBOutlet weak var searchTextField: UITextField?
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let userID = userID {
            searchTextField?.text = userID
        }
        searchTextField?.delegate = self
        
        let nib = UINib(nibName: "MatchResultTableViewCell", bundle: nil)
        tableView?.register(nib, forCellReuseIdentifier: "MatchResultTableViewCell")
        
    }
    
}


// MARK:
extension SearchResultViewController {
    // MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
    // MARK: Actions
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


// MARK: SearchResultViewController: MatchResultTableViewCellDelegate
extension SearchResultViewController: MatchResultTableViewCellDelegate {
    func showDetail() {
//        let storyboard = UIStoryboard(name: "MatchDetail", bundle: nil)
//        
//        let matchDetailVC = storyboard.instantiateViewController(withIdentifier: "MatchDetailViewController")
//        
//        present(matchDetailVC, animated: true, completion: nil)
        
        performSegue(withIdentifier: "SearchResultSegue", sender: nil)
    }
}


// MARK: SearchResultViewController: UITextFieldDelegate
extension SearchResultViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
