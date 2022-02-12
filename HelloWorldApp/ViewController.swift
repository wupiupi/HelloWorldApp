//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Paul on 10.02.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLbl: UILabel!
    @IBOutlet weak var showTextBtn: UIButton! //Для кнопки создана лишь потому, что мы хотим поработать с её внешним видом
    @IBOutlet weak var aboutAppText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad() //Главное -- писать после этой строки :)
        // Do any additional setup after loading the view.
//        helloWorldLbl.textColor = .blue   //Можно поменять цвет
        helloWorldLbl.isHidden = true //Скрываем текст на момент запуска приложения. Доступно для любого аутлета
        showTextBtn.layer.cornerRadius = 5.5 //Скругляем углы кнопки на 10
        aboutAppText.layer.cornerRadius = 5.5
    }
    
    @IBAction func showTextBtnPressed() {
        if helloWorldLbl.isHidden {
            helloWorldLbl.isHidden = false
            showTextBtn.setTitle("Hide text!", for: .normal) //Меняем название кнопки в нормальном состоянии на "спрятать текст"
        } else {
            helloWorldLbl.isHidden = true
            showTextBtn.setTitle("Show text!", for: .normal)
        }
    }
    
}

