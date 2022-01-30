// ViewController.swift
//  APP
//  Created by 陳心柔 on 2022/1/25.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Account: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Check: UITextField!
    @IBOutlet weak var Third: UILabel!
    
    @IBOutlet weak var accessSet: UISegmentedControl!
   
/*1.
    以上六個變數的宣告先給予正確答案realxxx，再將操作者輸入的資料放進去inputxxx內，但這樣就面臨到型態的問題，為了避免型態不同，所以直接用textfield.txt即可取得textfield的值，再放進條件式裡去做判斷
2.兩個sing up fail
3.
 程式無法分辨在log及sign的不同狀況下，哪一個狀況要檢查checkpassword是否有輸入，哪一個不用。
4.alert的訊息Ｅrror搭配錯誤原因，correct搭配succeed
 */
    
    var num : Int = 2
    
    override func viewDidLoad() { //app開啓時需要出現的事物，要在這裡先律定好
        super.viewDidLoad()
        Account.text = ""
        Password.text = ""
        Check.text = ""
        //三格textfield均為空白
        
        accessSet.layer.borderWidth = 2
        accessSet.selectedSegmentTintColor = .black
        accessSet.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        //segment得初始狀態
        Third.textColor = .gray
        Check.isUserInteractionEnabled = false
        Check.backgroundColor = .gray
        //因為app開啟時，segment是在log的狀態，所以myTextfield無法使用
        
    }

    @IBAction func access(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {//left
            Third.textColor = .gray
            Check.isUserInteractionEnabled = false
            Check.backgroundColor = .gray
            accessSet.selectedSegmentTintColor = .black
            accessSet.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
         }
        else {
            Third.textColor = .black
            Check.isUserInteractionEnabled = true
            Check.backgroundColor = .white
            accessSet.selectedSegmentTintColor = .black
            accessSet.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
            
        }
        num = sender.selectedSegmentIndex
    }

    @IBAction func test(_ sender: UIButton) {
        var num1 : Int = 0
        var alertTitle1:String = "Error"
        let messagetext : [String] = [
            "Account should not be empty.",
            "Password should not be empty.",
            "Checkpassword should not be empty.",
            "Log in fail.",
            "Sign fail.",
            "Succeed"]
        if Account.text == "" {
            num1 = 0
        }
        else if Password.text == "" {
            num1 = 1

        }
        else if num==1 && Check.text == "" {
            num1 = 2
        }
        else if num == 0 && (Account.text != "appworks_school@gmail.com" || Password.text != "1234") {
            num1 = 3
        }
        else if num==1 && Password.text != Check.text {
            num1 = 4
        }
        else {
            num1 = 5
            alertTitle1 = "congratulation"
        }
        
        
        
        let controller = UIAlertController(title: alertTitle1, message: messagetext[num1], preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
        
     }
}
