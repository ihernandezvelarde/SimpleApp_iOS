//
//  ViewController.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 22/6/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    let charactersList: [String] = ["Character 1","Character 2","Character 3","Character 4","Character 5","Character 6","Character 7","Character 8","Character 9","Character 10","Character 11"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var titleAppCreator: UILabel!
    @IBOutlet weak var nameAppCreator: UILabel!
    @IBOutlet weak var titleInfoAboutApp: UILabel!
    @IBOutlet weak var firstLineInfo: UILabel!
    @IBOutlet weak var secondLineInfo: UILabel!
    @IBOutlet weak var thirdLineInfo: UILabel!
    @IBOutlet weak var fourthLineInfo: UILabel!
    @IBOutlet weak var fiveLineInfo: UILabel!
    
    public override var preferredStatusBarStyle: UIStatusBarStyle{
        .darkContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = charactersList[indexPath.row]
        return cell
    }
    @IBAction func githubURL(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://github.com/ihernandezvelarde")! as URL, options: [:], completionHandler: nil)
    }
}


