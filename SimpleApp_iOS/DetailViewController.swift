//
//  DetailViewController.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 28/6/22.
//

import UIKit

class DetailViewController: UIViewController {
    var character: CharacterModel?
    // MARK: - IBOutlets
    
    @IBOutlet weak var wikipediaButton: UIButton!
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
        if let character = character {
            detailCharacterNameLabel.text = character.name
            detailCharacterAgeLabel.text = character.age
            detailCharacterInfoLabel.text = character.info
            detailCharacterAttackLabel.text = character.attack
            detailCharacterHpLabel.text = character.hp
            detailCharacterDefenseLabel.text = character.defense
            detailFaceCharacterImage.image = UIImage(named:character.faceImage)
            detailAttackImage.image = UIImage(named:character.characterAttackIcon)
            detailHpImage.image = UIImage(named:character.characterHpIcon)
            detailDefenseImage.image = UIImage(named:character.characterDefenseIcon)
        }
    }
    
    @IBAction func wikiURL(_ sender: UIButton) {
        if let character = character {
            if let url = URL(string: character.wikipediaButton) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                print("ERROR LOG: MainViewController button githubURL launch failed: safe link not found")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
