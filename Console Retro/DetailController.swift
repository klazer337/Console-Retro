//
//  DetailController.swift
//  Console Retro
//
//  Created by Kevin Trebossen on 23/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    var console: Console?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard console != nil else { return }
        title = console!.nom
    }

}
