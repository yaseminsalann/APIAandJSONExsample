//
//  ViewController.swift
//  APIandJSONExsample
//
//  Created by Yasemin salan on 11.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesClicked(_ sender: Any) {
        
        //1.adım Request & Session
        //2.adım Response & Data yı almak
        //3.adım Parsing & JSON Serialization
        
        let url = URLRequest(url: URL(string: "https://data.fixer.io/api/latest?access_key=7a58d5c8261c77b16deacfff2583be9f")!)
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }
            else{
                //2.adım
                if data != nil{
                    do{
                        //gelen veriyi JSON Serialization yapılıyor
                     let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
                        
                        //ASYNC
                        DispatchQueue.main.async {
                            print(jsonResponse)
                        }
                    }catch{
                        print("error")
                    }
                   
                }
                
            }
        }
        //task ın başlaması için bu işlem yapılmalı
        task.resume()
        
    }
    
}

