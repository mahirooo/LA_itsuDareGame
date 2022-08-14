//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 長崎茉優 on 2022/08/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前","一週間前","昨日","今日","前世で","来世で"]
    
    let dokoArray: [String] = ["山の上で","アメリカで","学校で","クラスで","自宅で","職場で"]
    
    let daregaArray: [String] = ["僕が","大統領が","先生が","友達が","ペットが","両親が"]
    
    let doshitaArray: [String] = ["叫んだ","演説した","踊った","怒った","泣いた","ご飯を食べた"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokoArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 5{
            index = 0
        }else{
            index = index + 1
        }
        
    }
    
    @IBAction func random(){
        
        let itsuIndex = Int.random(in: 0...5)
        let dokodeIndex = Int.random(in: 0...5)
        let daregaIndex = Int.random(in: 0...5)
        let doshitaIndex = Int.random(in: 0...5)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokoArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }
    
    @IBAction func reset(){
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        index = 0
    }


}

