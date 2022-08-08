//
//  ViewController.swift
//  alert-basic
//
//  Created by Apple on 8.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func basicalert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "alert basic", message: "basit alert kullanımı", preferredStyle: .alert)
        let iptalbutton  = UIAlertAction(title: "iptal", style: .cancel) {
            action in
            
            print("iptal tıklandı")
            
        }
        alertController.addAction(iptalbutton)
        
        let okbutton  = UIAlertAction(title: "ok", style: .destructive) {
            action in
            
            print("ok tıklandı")
            
        }
        alertController.addAction(okbutton)
        
        self.present(alertController,animated: true)
        
    }
    
    
    
    
    
    
    @IBAction func ozelalert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "kaydet basic", message: "kaydet alert kullanımı", preferredStyle: .alert)
        
        alertController.addTextField { textfield in  // closure yapısı !
            textfield.placeholder = "email"
            textfield.keyboardType = .emailAddress
            
        }
        
        alertController.addTextField { textfield in  // closure yapısı !
            textfield.placeholder = "şifre"
            textfield.isSecureTextEntry = true
            
        }
        
        
        
        let kaydetbutton  = UIAlertAction(title: "kaydet", style: .destructive) {
            action in
            
            print("kaydet tıklandı")
            
            let alinanemail = (alertController.textFields![0] as UITextField).text!
            
            let sifre = (alertController.textFields![1] as UITextField).text!
            
            self.labelSonuc.text = "email:\(alinanemail) -şifre: \(sifre)"
            
            
            
        }
        alertController.addAction(kaydetbutton)
        
        self.present(alertController,animated: true)
    }
    
    
    
    
    
    @IBAction func actionsheet(_ sender: Any) { // basic alert ,in aynısı
        
        let alertController = UIAlertController(title: "action", message: "action alert kullanımı", preferredStyle: .actionSheet)
        let iptalbutton  = UIAlertAction(title: "action", style: .cancel) {
            action in
            
            print("action tıklandı")
            
        }
        alertController.addAction(iptalbutton)
        
        let okbutton  = UIAlertAction(title: "ok", style: .cancel) {
            action in
            
            print("ok tıklandı")
            
        }
        alertController.addAction(okbutton)
        
        self.present(alertController,animated: true)
    }
    
    
}

