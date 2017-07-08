//
//  ViewController.swift
//  T-LoL
//
//  Created by Daeyun Ethan Kim on 08/06/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController
class ViewController: UIViewController {

    // MARK: Properties
    
    
    // MARK: Outlets
    @IBOutlet weak var searchTextField: UITextField?
    
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchTextField?.delegate = self
    }
}


// MARK:
extension ViewController {
    // MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller = segue.destination as? SearchResultViewController else {
            print("Error: SearchResultSegue")
            return
        }
        
        controller.userID = searchTextField?.text
    }
    
    
    // MARK: Actions
    @IBAction func searchAction(_ sender: UIButton) {
        let userID = searchTextField?.text
        performSegue(withIdentifier: "SearchResultSegue", sender: userID)
    }
}


// MARK: ViewController: UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
