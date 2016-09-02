//
//  PreviewNavigationController.swift
//  PreviewControllerHideBottomButtons
//
//  Created by Ruvim Micsanschi on 9/2/16.
//  Copyright © 2016 com.example. All rights reserved.
//

import UIKit

class PreviewNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let controller = viewControllers.first {
            let doneButton = UIBarButtonItem(barButtonSystemItem: .Done, target:self, action:#selector(doneButtonTapped))
            controller.navigationItem.leftBarButtonItem = doneButton
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


extension PreviewNavigationController {
    
    func doneButtonTapped() -> Void {
        dismissViewControllerAnimated(true, completion: nil)
    }
}