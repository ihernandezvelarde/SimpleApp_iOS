//
//  MarvelCharactersLivView.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 23/6/22.
//

import UIKit

class MarvelCharactersLivView: UIViewController {

    let charactersList: [String] = ["Character 1","Character 2","Character 3","Character 4","Character 5","Character 6","Character 7","Character 8","Character 9","Character 10","Character 11"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
extension MarvelCharactersLivView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = charactersList[indexPath.row]
        return cell
    }
}


