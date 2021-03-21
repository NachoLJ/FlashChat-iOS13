//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
//import CLTypingLabel //importar el paquete del cocoapod

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    //Deshabilitar la barra de navegación
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    //Habilitar la barra en al saltar pantalla
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        titleLabel.text = ""
        var charIndex = 0.0 // para aumentar progresivamente el Intervalo del Timer
        let titleText = K.appName
        for letter in titleText {
//            TRAZAS
//            print("-")
//            print(0.1 * charIndex)
//            print(letter)
            //Crear timer para que las letras salgan poco a poco
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
        
    }
    

}
