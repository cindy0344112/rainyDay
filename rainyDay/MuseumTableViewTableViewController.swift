//
//  MuseumTableViewTableViewController.swift
//  rainyDay
//
//  Created by 邱珮瑜 on 2024/5/1.
//

import UIKit

class MuseumTableViewTableViewController: UITableViewController {
    
    //依照城市建立博物館清單
    var museumArray = [
        MuseumCountry(country: "台北市", museums: [
            Museum(name: "國立歷史博物館", intro: "中華民國政府遷臺後成立的第一個公立博物館，部分文物來自原河南博物館。", address: "00051臺北市中正區南海路49號", website: "https://www.nmh.gov.tw/", image: "國立歷史博物館"),
            Museum(name: "郵政博物館台北館", intro: "郵政博物館臺北館現址，原為臺北北門郵局集郵服務中心，除供展示郵品及推廣集郵業務使用，亦提供民間郵會辦理集郵相關活動。 ", address: "100台北市中正區忠孝西路一段114號2樓", website: "https://museum.post.gov.tw/post/Postal_Museum/museum/north/default.jsp", image: "郵政博物館台北館")
        ]),
        MuseumCountry(country: "新北市", museums: [
            Museum(name: "台灣玩具博物館", intro: "台灣玩具博物館自92年創館，累積超過12000件館藏，為台灣玩具文化作系統化保存、歸納，建立玩具演進四大時期，成為台灣最完整在地玩具資料庫", address: "220 新北市板橋區中正路435號", website: "https://www.taiwantoymuseum.com/", image: "台灣玩具博物館"),
            Museum(name: "國家人權博物館", intro: "文化部於2011年成立國家人權博物館籌備處，下轄景美與綠島二處人權文化園區，積極進行白色恐怖相關調查研究、展示、人權教育推廣等工作", address: "231新北市新店區復興路131號", website: "https://www.nhrm.gov.tw/w/nhrm/Index", image: "國家人權博物館"),
            Museum(name: "坪林茶葉博物館", intro: "坪林茶業博物館座落於台灣新北市坪林區北勢溪畔，是一座以台灣茶文化為主題，閩南安溪風格的四合院建築。", address: "新北市坪林區水聳淒坑19-1號", website: "https://www.tea.ntpc.gov.tw/", image: "坪林茶葉博物館")
        ])
    ]
            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //點擊博物館table清單並將點擊項目資料傳遞到Detail頁面
    @IBSegueAction func showDetail(_ coder: NSCoder) -> UIViewController? {
        guard let section = tableView.indexPathForSelectedRow?.section else { return nil }
        guard let row = tableView.indexPathForSelectedRow?.row else { return nil }
        let controller = MuseumDetailViewController(coder: coder)
        controller?.museum = museumArray[section].museums[row]
        return controller
    }
    
    // MARK: - Table view data source
    
    //表格section數量（城市）
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return museumArray.count
    }
    
    //每個城市下的博物館數量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return museumArray[section].museums.count
    }
    
    //每個section的標題（城市）
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return museumArray[section].country
    }
    
    //設定table cell內容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MuseumCell", for: indexPath) as! MuseumTableViewCell
        let museum = museumArray[indexPath.section].museums[indexPath.row]
        cell.museumImage.image = UIImage(named: museum.image)
        cell.museumName.text = museum.name

        return cell
    }

}
