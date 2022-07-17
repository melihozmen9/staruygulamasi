//
//  ViewController.swift
//  star uygulaması
//
//  Created by Kullanici on 17.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
   
    
    @IBOutlet weak var mytableview: UITableView!
    var kullanicilar = [kullanici]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loaddata()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kullanicilar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    func loaddata () {
        let kullanici1 = kullanici()
        kullanici1.firstname = "Ronaldinho"
        kullanici1.lastname = "Gaúcho"
        kullanici1.profilphoto = UIImage(named: "rondilho")!
        kullanicilar.append(kullanici1)
        
        let kullanici2 = kullanici()
        kullanici2.firstname = "Christiano"
        kullanici2.lastname = "Ronaldo"
        kullanici2.profilphoto = UIImage(named: "Cristiano_Ronaldo_2018")!
        kullanicilar.append(kullanici2)
        
        let kullanici3 = kullanici()
        kullanici3.firstname = "Lionel"
        kullanici3.lastname = "Messi"
        kullanici3.profilphoto = UIImage(named: "Lionel_Messi_20180626")!
        kullanicilar.append(kullanici3)
        
        let kullanici4 = kullanici()
        kullanici4.firstname = "Diego"
        kullanici4.lastname = "Maradona"
        kullanici4.profilphoto = UIImage(named: "diego-maradona-1401100569-36")!
        kullanicilar.append(kullanici4)
        
        
    }

}


