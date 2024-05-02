//
//  MuseumDetailViewController.swift
//  rainyDay
//
//  Created by 邱珮瑜 on 2024/5/1.
//

import UIKit

class MuseumDetailViewController: UIViewController {
    
    var museum: Museum!
    
    @IBOutlet weak var museumImage: UIImageView!
    @IBOutlet weak var museumName: UILabel!
    @IBOutlet weak var museumIntro: UILabel!
    @IBOutlet weak var museumAddress: UILabel!
    @IBOutlet weak var museumWeb: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        museumImage.image = UIImage(named: museum.image)
        museumName.text = museum.name
        museumIntro.text = museum.intro
        museumAddress.text = museum.address
        museumWeb.setTitle(museum.website, for: .normal)
        
    }
    
    //點擊網址按鈕打開網頁
    @IBAction func openWebsite(_ sender: UIButton) {
        if let buttonText = sender.titleLabel?.text, let url = URL(string: buttonText) {
            UIApplication.shared.open(url)
        }
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
