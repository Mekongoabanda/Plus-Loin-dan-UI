//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by user159565 on 2/9/20.
//  Copyright © 2020 user159565. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFrameEtBounds: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did load apelé")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view Did Appear")
        //Lorsque la vue est apparue, on affiche notre vue
        print("Frame : \(vueFrameEtBounds.frame)")
        print("Frame : \(vueFrameEtBounds.bounds)")
        UIView.animate(withDuration: 2, animations: {
            self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 12)
        }) { (success) in
            print("Frame : \(self.vueFrameEtBounds.frame)")
            print("Bounds : \(self.vueFrameEtBounds.bounds)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(" View Will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Wiew Did Diseappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
