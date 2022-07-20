//
//  detailViewController.swift
//  star uygulaması
//
//  Created by Kullanici on 17.07.2022.
//

import UIKit

class detailViewController: UIViewController {
    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var mylabel: UILabel!
    var kullanicidetay = kullanici()
    override func viewDidLoad() {
        super.viewDidLoad()

        mylabel.text = kullanicidetay.firstname + " " + kullanicidetay.lastname
        
        
        // Do any additional setup after loading the view.
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
