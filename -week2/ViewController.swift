//
//  ViewController.swift
//  assignment
//
//  Created by 陳心柔 on 2022/1/16.
//

import UIKit

class ViewController: UIViewController {
    let fullScreenSize = UIScreen.main.bounds.size
    
    
    @IBOutlet weak var word: UILabel!
    
    @IBAction func clickme(_ sender:UIButton) {
        let sentences : [String] = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
        ]
        let color = [UIColor.red, UIColor.blue, UIColor.green, UIColor.black, UIColor.purple, UIColor.yellow, UIColor.orange]
        
        word.text = sentences.randomElement()
        self.view.backgroundColor = color.randomElement()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
    }


}


