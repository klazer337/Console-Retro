//
//  DetailController.swift
//  Console Retro
//
//  Created by Kevin Trebossen on 23/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var retroIV: UIImageView!
    @IBOutlet weak var dureeLabel: UILabel!
    @IBOutlet weak var descTextField: UITextView!
    
    var console: Console?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard console != nil else { return }
        title = console!.nom
        titleLabel.text = console!.nom
        retroIV.image = console!.image
        dureeLabel.text = console?.cycleDeVie()
        descTextField.text = console?.desc
        view.backgroundColor = console?.couleur
    }

}
