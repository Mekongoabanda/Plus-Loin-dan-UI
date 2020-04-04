//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by user159565 on 4/4/20.
//  Copyright © 2020 user159565. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    var monPremierUIView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()

       monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else{ return }
        view.addSubview(monPremierUIView!)
        print(monPremierUIView?.frame)
        print(monPremierUIView?.bounds)
        
        let secondeVue = UIView(frame: monPremierUIView!.frame)
        secondeVue.center.y += 50
        secondeVue.backgroundColor = UIColor.red
        view.addSubview(secondeVue)
        
    }
    


}
