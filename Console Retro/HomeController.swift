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
    var segueID = "Detail"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        consoles = ConsoleCollection().obtenirListe()
        let tap = UITapGestureRecognizer(target: self, action: #selector(toDetail))     // Ajout du TAP RECOGNISER
        retroIV.isUserInteractionEnabled = true
        retroIV.addGestureRecognizer(tap)
        setup()
    }
    
    @objc func toDetail() {
        performSegue(withIdentifier: segueID, sender: nil)              // V1 // Appel du segue
        //performSegue(withIdentifier: segueID, sender: consoles[index])  // V2
    }
    

    func setup() {
        let console = consoles[index]   // on récupère une console selon l'index
        titleLabel.text = "Mes consoles Retro \n" + console.nom
        retroIV.image = console.image
        view.backgroundColor = console.couleur
    }
    
    // -------------------------  prepare for segue  ------------------------- //
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let controller = segue.destination as? DetailController {
                controller.console = consoles[index]            // V1
                //controller.console = sender as? Console       // V2
            }
        }
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
