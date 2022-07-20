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
    var mullanici = kullanici()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loaddata()
        mytableview.dataSource = self
        mytableview.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kullanicilar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = kullanicilar[indexPath.row].firstname + " " + kullanicilar[indexPath.row].lastname
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let satir = kullanicilar[indexPath.row]
        mullanici = satir
        self.performSegue(withIdentifier: "todetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetail" {
            var destinationvc = segue.destination as! detailViewController
            destinationvc.kullanicidetay = self.mullanici
        }
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


