//
//  ViewController.swift
//  SimpleApp_iOS
//
//  Created by Irene Hernández on 22/6/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var titleAppCreator: UILabel!
    @IBOutlet weak var nameAppCreator: UILabel!
    @IBOutlet weak var titleInfoAboutApp: UILabel!
    @IBOutlet weak var firstLineInfo: UILabel!
    @IBOutlet weak var secondLineInfo: UILabel!
    @IBOutlet weak var thirdLineInfo: UILabel!
    @IBOutlet weak var fourthLineInfo: UILabel!
    @IBOutlet weak var fiveLineInfo: UILabel!
    
    let charactersList: [String] = ["Tanjiro Kamado","Inosuke Hashibira","Zenitsu Agatsuma","Nezuko Kamado","Tengen Uzui","Kyojuro Rengoku","Giyu Tomioka","Shinoku Kocho","Muzan Kibutsuji","Akaza","Gyutaro","Daki"]
    let ageCharacterList:[String] = ["16","15","16","14","23","20","21","18",">10.000",">133",">126",">126"]
    let infoCharacterList:[String] = ["Tanjiro Kamado is the protagonist of Demon Slayer: Kimetsu no Yaiba. He is a Demon Slayer in the Demon Slayer Corps, who joined to find a remedy to turn his sister, Nezuko Kamado, back into a human and to hunt down and kill demons.","Inosuke Hashibira is one of the main protagonists of Demon Slayer: Kimetsu no Yaiba and along with Zenitsu Agatsuma, a traveling companion of Tanjiro Kamado and Nezuko Kamado. He is also a Demon Slayer in the Demon Slayer Corps.","Zenitsu Agatsuma is one of the main protagonists of Demon Slayer: Kimetsu no Yaiba and along with Inosuke Hashibira, a travelling companion of Tanjiro Kamado and Nezuko Kamado. He is also a Demon Slayer in the Demon Slayer Corps.","Nezuko Kamado is the deuteragonist of Demon Slayer: Kimetsu no Yaiba. She is a demon and the younger sister of Tanjiro Kamado and one of the two remaining members of the Kamado family. Formerly a human, she was attacked and transformed into a demon by Muzan Kibutsuji.","Tengen Uzui is a major supporting character of Demon Slayer: Kimetsu no Yaiba and a major character in the Entertainment District Arc. He was a former member of the Demon Slayer Corps, standing as the previous Sound Hashira.","Kyojuro Rengoku was a major supporting character of Demon Slayer: Kimetsu no Yaiba and a major character in the Mugen Train Arc. He was a Demon Slayer of the Demon Slayer Corps and the late Flame Hashira.","Giyu Tomioka is a major supporting character of Demon Slayer: Kimetsu no Yaiba. He is a Demon Slayer of the Demon Slayer Corps and the current Water Hashira.","Shinobu Kocho  is a major supporting character of Demon Slayer: Kimetsu no Yaiba. She is a Demon Slayer of the Demon Slayer Corps and the current Insect Hashira.","Muzan Kibutsuji is the main antagonist of Demon Slayer: Kimetsu no Yaiba. He is the Demon King, the first of his kind, as well as the progenitor of all other demons in existence.Muzan is also the leader of the Twelve Kizuki, an organization of the twelve strongest demons in existence that serve directly under him.","Akaza is a major supporting antagonist of Demon Slayer: Kimetsu no Yaiba. He is a demon affiliated with the Twelve Kizuki, holding the position of Upper Rank Three. Over a century ago, Akaza was a human by the name of Hakuji, a prodigious martial artist who trained under Keizo while nursing his daughter, Koyuki,who would later become Akaza's fiancée.","Gyutaro was one of the primary antagonists in the Entertainment District Arc of Demon Slayer: Kimetsu no Yaiba. He was a demon affiliated with the Twelve Kizuki, holding the position of Upper Rank Six, a position he shares with his younger sister, Daki.","Daki was one of the primary antagonists in the Entertainment District Arc of Demon Slayer: Kimetsu no Yaiba. She was a demon affiliated with the Twelve Kizuki, being the secondary holder of the position of Upper Rank Six, a position she shared with the primary holder, her older brother, Gyutaro."]
    let attackCharacterList : [String] = ["150","140","140","250","500","510","400","390","1800","600","800","700"]
    let hpCharacterList: [String] = ["100","100","100","∞","300","300","250","240","∞","∞","∞","∞"]
    let defenseCharacterList: [String] = ["100","100","100","1000","600","600","500","490","10.000","1.500","1.100","1.100"]
    let imageCharacterList:[UIImage?] = [UIImage(named: "tanjiro.png"),UIImage(named: "inosuke.png"),UIImage(named: "zenitsu.png"),UIImage(named: "nezuko.png"),UIImage(named: "tengen.png"),UIImage(named: "rengoku.png"),UIImage(named: "tomioka.png"),UIImage(named: "shinobu.png"),UIImage(named: "muzan.png"),UIImage(named: "akaza.png"),UIImage(named: "gyutaro.png"),UIImage(named: "daki.png")]
    let imageOne = UIImage(named: "sword.png")
    let imageTwo = UIImage(named: "life.png")
    let imageThree = UIImage(named: "shield.png")
    
    public override var preferredStatusBarStyle: UIStatusBarStyle{
        .darkContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nib = UINib(nibName: "CharacterTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "CharacterTableViewCell")
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: "CharacterTableViewCell", for: indexPath) as! CharacterTableViewCell
        
        myTableView.rowHeight = 105
        cell.characterNameLabel.text = charactersList[indexPath.row]
        cell.characterAgeLabel.text = ageCharacterList[indexPath.row]
        cell.characterInfoLabel.text = infoCharacterList[indexPath.row]
        cell.characterAttackLabel.text = attackCharacterList[indexPath.row]
        cell.characterHpLabel.text = hpCharacterList[indexPath.row]
        cell.characterDefenseLabel.text = defenseCharacterList[indexPath.row]
        cell.faceCharacterImage.image = self.imageCharacterList[indexPath.row]
        cell.attackImage.image = self.imageOne
        cell.hpImage.image = self.imageTwo
        cell.defenseImage.image = self.imageThree
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    @IBAction func githubURL(_ sender: UIButton) {
        if let url = URL(string: "https://github.com/ihernandezvelarde") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            print("ERROR LOG: MainViewController button githubURL launch failed: safe link not found")
        }
    }
}
