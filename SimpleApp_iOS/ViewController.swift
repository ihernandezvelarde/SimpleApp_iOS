//
//  ViewController.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 22/6/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    var character = CharacterModel()
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var titleAppCreator: UILabel!
    @IBOutlet weak var nameAppCreator: UILabel!
    @IBOutlet weak var titleInfoAboutApp: UILabel!
    @IBOutlet weak var firstLineInfo: UILabel!
    @IBOutlet weak var secondLineInfo: UILabel!
    @IBOutlet weak var thirdLineInfo: UILabel!
    @IBOutlet weak var fourthLineInfo: UILabel!
    @IBOutlet weak var fiveLineInfo: UILabel!
    
    
    var charactersList = ["Tanjiro Kamado","Inosuke Hashibira","Zenitsu Agatsuma","Nezuko Kamado","Tengen Uzui","Kyojuro Rengoku","Giyu Tomioka","Shinobu Kocho","Muzan Kibutsuji","Akaza","Gyutaro","Daki"]
    let ageCharacterList = ["16","15","16","14","23","20","21","18",">10.000",">133",">126",">126"]
    let infoCharacterList = ["Tanjiro Kamado is the protagonist of Demon Slayer: Kimetsu no Yaiba. He is a Demon Slayer in the Demon Slayer Corps, who joined to find a remedy to turn his sister, Nezuko Kamado, back into a human and to hunt down and kill demons.","Inosuke Hashibira is one of the main protagonists of Demon Slayer: Kimetsu no Yaiba and along with Zenitsu Agatsuma, a traveling companion of Tanjiro Kamado and Nezuko Kamado. He is also a Demon Slayer in the Demon Slayer Corps.","Zenitsu Agatsuma is one of the main protagonists of Demon Slayer: Kimetsu no Yaiba and along with Inosuke Hashibira, a travelling companion of Tanjiro Kamado and Nezuko Kamado. He is also a Demon Slayer in the Demon Slayer Corps.","Nezuko Kamado is the deuteragonist of Demon Slayer: Kimetsu no Yaiba. She is a demon and the younger sister of Tanjiro Kamado and one of the two remaining members of the Kamado family. Formerly a human, she was attacked and transformed into a demon by Muzan Kibutsuji.","Tengen Uzui is a major supporting character of Demon Slayer: Kimetsu no Yaiba and a major character in the Entertainment District Arc. He was a former member of the Demon Slayer Corps, standing as the previous Sound Hashira.","Kyojuro Rengoku was a major supporting character of Demon Slayer: Kimetsu no Yaiba and a major character in the Mugen Train Arc. He was a Demon Slayer of the Demon Slayer Corps and the late Flame Hashira.","Giyu Tomioka is a major supporting character of Demon Slayer: Kimetsu no Yaiba. He is a Demon Slayer of the Demon Slayer Corps and the current Water Hashira.","Shinobu Kocho  is a major supporting character of Demon Slayer: Kimetsu no Yaiba. She is a Demon Slayer of the Demon Slayer Corps and the current Insect Hashira. Shinobu Kocho is also the younger sister of Kanae Kocho.","Muzan Kibutsuji is the main antagonist of Demon Slayer: Kimetsu no Yaiba. He is the Demon King, the first of his kind, as well as the progenitor of all other demons in existence.Muzan is also the leader of the Twelve Kizuki, an organization of the twelve strongest demons in existence that serve directly under him.","Akaza is a major supporting antagonist of Demon Slayer: Kimetsu no Yaiba. He is a demon affiliated with the Twelve Kizuki, holding the position of Upper Rank Three. Over a century ago, Akaza was a human by the name of Hakuji, a prodigious martial artist who trained under Keizo while nursing his daughter, Koyuki,who would later become Akaza's fiancée.","Gyutaro was one of the primary antagonists in the Entertainment District Arc of Demon Slayer: Kimetsu no Yaiba. He was a demon affiliated with the Twelve Kizuki, holding the position of Upper Rank Six, a position he shares with his younger sister, Daki.","Daki was one of the primary antagonists in the Entertainment District Arc of Demon Slayer: Kimetsu no Yaiba. She was a demon affiliated with the Twelve Kizuki, being the secondary holder of the position of Upper Rank Six, a position she shared with the primary holder, her older brother, Gyutaro."]
    let attackCharacterList = ["150","140","140","250","500","510","400","390","1800","600","800","700"]
    let hpCharacterList = ["100","100","100","∞","300","300","250","240","∞","∞","∞","∞"]
    let defenseCharacterList = ["100","100","100","1000","600","600","500","490","10.000","1.500","1.100","1.100"]
    let imageCharacterList = ["tanjiro.png", "inosuke.png","zenitsu.png", "nezuko.png", "tengen.png", "rengoku.png","tomioka.png", "shinobu.png", "muzan.png", "akaza.png", "gyutaro.png","daki.png"]
    
    let attackIcon = "sword.png"
    let hpIcon = "life.png"
    let defenseIcon = "shield.png"
    
    let wikiButton = ["https://kimetsu-no-yaiba.fandom.com/wiki/Tanjiro_Kamado", "https://kimetsu-no-yaiba.fandom.com/wiki/Inosuke_Hashibira", "https://kimetsu-no-yaiba.fandom.com/wiki/Zenitsu_Agatsuma", "https://kimetsu-no-yaiba.fandom.com/wiki/Nezuko_Kamado", "https://kimetsu-no-yaiba.fandom.com/wiki/Tengen_Uzui", "https://kimetsu-no-yaiba.fandom.com/wiki/Kyojuro_Rengoku", "https://kimetsu-no-yaiba.fandom.com/wiki/Giyu_Tomioka", "https://kimetsu-no-yaiba.fandom.com/wiki/Shinobu_Kocho", "https://kimetsu-no-yaiba.fandom.com/wiki/Muzan_Kibutsuji", "https://kimetsu-no-yaiba.fandom.com/wiki/Akaza", "https://kimetsu-no-yaiba.fandom.com/wiki/Gyutaro", "https://kimetsu-no-yaiba.fandom.com/wiki/Daki"]
    
    public override var preferredStatusBarStyle: UIStatusBarStyle{
        .darkContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        // ViewControllers view ist fully loaded and could present further ViewController
        //Here you could do any other UI operations
        

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nib = UINib(nibName: "CharacterTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "CharacterTableViewCell")
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: "CharacterTableViewCell", for: indexPath) as! CharacterTableViewCell
        
        myTableView.rowHeight = 105
        let characterFaceImage = self.imageCharacterList[indexPath.row]
        cell.characterNameLabel.text = charactersList[indexPath.row]
        cell.characterAgeLabel.text = ageCharacterList[indexPath.row]
        cell.characterInfoLabel.text = infoCharacterList[indexPath.row]
        cell.characterAttackLabel.text = attackCharacterList[indexPath.row]
        cell.characterHpLabel.text = hpCharacterList[indexPath.row]
        cell.characterDefenseLabel.text = defenseCharacterList[indexPath.row]
        cell.faceCharacterImage.image = UIImage(named:characterFaceImage)
        cell.attackImage.image = UIImage(named:self.attackIcon)
        cell.hpImage.image = UIImage(named:self.hpIcon)
        cell.defenseImage.image = UIImage(named:self.defenseIcon)
        return cell
    }
    
    @IBAction func githubURL(_ sender: UIButton) {
        
        if Reachability.isConnectedToNetwork() == true
        {
            print("Connected")
            if let url = URL(string: "https://github.com/ihernandezvelarde") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                print("ERROR LOG: MainViewController button githubURL launch failed: safe link not found")
            }
        }
        else{
            let controller = UIAlertController(title: "No Internet Detected", message: "This link requires an Internet connection", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            //let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

            controller.addAction(ok)
            //controller.addAction(cancel)

            present(controller, animated: true, completion: nil)
        }
        
        
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        character.name = charactersList[indexPath.row]
        character.age = ageCharacterList[indexPath.row]
        character.info = infoCharacterList[indexPath.row]
        character.attack = attackCharacterList[indexPath.row]
        character.hp = hpCharacterList[indexPath.row]
        character.defense = defenseCharacterList[indexPath.row]
        character.faceImage = imageCharacterList[indexPath.row]
        character.characterAttackIcon = attackIcon
        character.characterHpIcon = hpIcon
        character.characterDefenseIcon = defenseIcon
        character.wikipediaButton = wikiButton[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: self)
        //inicializar modelo
        
        myTableView.deselectRow(at: indexPath, animated: true)
        

    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.bounces = scrollView.contentOffset.y > 100
        scrollView.bounces = scrollView.contentOffset.x > 100
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = myTableView.indexPathForSelectedRow {
                let destinationVC = segue.destination as? DetailViewController
                destinationVC?.character = character
            }
        }
    }
}

