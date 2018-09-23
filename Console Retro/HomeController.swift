//
//  HomeController.swift
//  Console Retro
//
//  Created by Kevin Trebossen on 23/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var retroIV: UIImageView!
    
    var consoles: [Console] = []
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        consoles = ConsoleCollection().obtenirListe()
    }
    
    func setup() {
        let console = consoles[index]   // on récupère une console selon l'index
        titleLabel.text = "Mes consoles Retro \n" + console.nom
        retroIV.image = console.image
        view.backgroundColor = console.couleur
    }
    
    // ACTIONS
    @IBAction func previousPressed(_ sender: Any) {
        if index == 0 {
            index = consoles.count - 1
        } else {
            index -= 1
        }
        setup()
    }
    @IBAction func nextPressed(_ sender: Any) {
        if index == consoles.count - 1 {
            index = 0
        } else {
            index += 1
        }
        setup()
    }
    @IBAction func randomPressed(_ sender: Any) {
        index = Int.random(in: 0..<consoles.count)
        setup()
    }

    
}
