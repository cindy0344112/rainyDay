//
//  StartViewController.swift
//  rainyDay
//
//  Created by 邱珮瑜 on 2024/5/2.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dropEmitterCell = CAEmitterCell() //CAEmitterLayer 發射的粒子其實是 CAEmitterCell，因此我們需要產生 CAEmitterCell 物件
        dropEmitterCell.contents = UIImage(named: "drop")?.cgImage //設定粒子的圖片為水滴
        dropEmitterCell.birthRate = 8 //每秒要發射幾個水滴
        dropEmitterCell.lifetime = 20 //水滴停留的秒數
        dropEmitterCell.velocity = 100 //水滴移動速度
        dropEmitterCell.scale = 0.05 //水滴大小
        dropEmitterCell.scaleRange = 0.1 //水滴大小的range，讓水滴可以看起來有大有小
        dropEmitterCell.yAcceleration = 30 //水滴往下滴
        
        
        let dropEmitterLayer = CAEmitterLayer() //產生 CAEmitterLayer，將它的 emitterCells 指定為剛剛產生的水滴粒子 dropEmitterCell
        dropEmitterLayer.emitterCells = [dropEmitterCell] //emitterCells 的型別是 [CAEmitterCell]?，因此我們可傳入多個粒子
        dropEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50) //水滴往下滴的起始
        dropEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        dropEmitterLayer.emitterShape = .line
        view.layer.addSublayer(dropEmitterLayer) //利用 addSublayer 將 dropEmitterLayer 的下雨效果加到畫面上
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
