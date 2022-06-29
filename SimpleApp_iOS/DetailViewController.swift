//
//  DetailViewController.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 28/6/22.
//

import UIKit

class DetailViewController: UIViewController {
    var characterNameText: String?
    
    // MARK: - IBOutlets
    @IBOutlet weak var detailCharacterNameLabel: UILabel!
    
    @IBOutlet var detailCharacterAgeLabel: UILabel!
    @IBOutlet var detailCharacterInfoLabel: UILabel!
    
    @IBOutlet var detailCharacterAttackLabel: UILabel!
    @IBOutlet var detailCharacterHpLabel: UILabel!
    @IBOutlet var detailCharacterDefenseLabel: UILabel!
    
    @IBOutlet var detailFaceCharacterImage: UIImageView!
    
    @IBOutlet var detailAttackImage: UIImageView!
    @IBOutlet var detailHpImage: UIImageView!
    @IBOutlet var detailDefenseImage: UIImageView!
    
    // MARK: -View Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let characterNameText = characterNameText {
            detailCharacterNameLabel.text = characterNameText
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("__PRINT 2: \(characterNameText)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
