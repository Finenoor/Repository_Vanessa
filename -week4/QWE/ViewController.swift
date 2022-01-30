//
//  ViewController.swift
//  QWE
//
//  Created by 陳心柔 on 2022/1/29.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var ID: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       getData()
    }

    let Serial = DispatchQueue.global(qos: .userInitiated)
    struct SearchResponse: Codable {
        let stationID:String
        let stationName:String
        let stationAddress:String
    }

    func getData(){
        Serial.async {
            if let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json"){
                URLSession.shared.dataTask(with: url){data, response, error in if let data = data {
                    let dataDecoder = JSONDecoder()
                    do{
                        let realData = try dataDecoder.decode(SearchResponse.self, from: data)
                        DispatchQueue.main.async {
                            self.ID.text = realData.stationID
                            self.name.text = realData.stationName
                            self.address.text = realData.stationAddress
                        }
                    }
                    catch{
                        print(error)
                    }
                }
                }.resume()
        }
    }
}
}
