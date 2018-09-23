//
//  Console.swift
//  Console Retro
//
//  Created by Kevin Trebossen on 23/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit        // pour voir accès à UIImage

class Console {
    
    private var _nom: String
    private var _image: UIImage?
    private var _couleur: UIColor   // couleur du background
    private var _debut: Int         // Début de la production
    private var _fin: Int
    private var _desc: String
    
    
    // -------------------------  GETTER  ------------------------- //
    var nom: String {
        return _nom
    }
    
    var image: UIImage? {
        return _image
    }

    var couleur: UIColor {
        return _couleur
    }
    
    var desc: String {
        return _desc
    }
    
    // -------------------------  INIT  ------------------------- //
    init(nom: String, debut: Int, fin: Int, rgb: [CGFloat], desc: String) {
        _nom = nom
        _image = UIImage(named: nom + ".png")
        _debut = debut
        _fin = fin
        _desc = desc
        _couleur = UIColor.lightGray
        if rgb.count == 3 {
            _couleur = colorFrom(red: rgb[0], green: rgb[1], blue: rgb[2])
        }
        
    }
    
    
    func colorFrom(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)        // Valeur entre 0 et 255
    }
    
    
    func cycleDeVie() -> String {
        return "Début: \(_debut) - Fin :\(_fin)"
    }
    
}
