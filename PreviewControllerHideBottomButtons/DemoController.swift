//
//  DemoController.swift
//  PreviewControllerHideBottomButtons
//
//  Created by Ruvim Micsanschi on 9/2/16.
//  Copyright © 2016 com.example. All rights reserved.
//

import UIKit
import QuickLook

class DemoController: UIViewController {

    private let itemsArray:[String] = ["image1", "image2", "image3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//MARK: - IBActions
extension DemoController {
    
    @IBAction func presentPreviewControllerTapped(sender: UIButton) {
        
        let previewController = QLPreviewController()
        previewController.dataSource = self
        
        let previewNavigationController = PreviewNavigationController(navigationBarClass:nil, toolbarClass: PreviewControllerToolbar.self)
        previewNavigationController.pushViewController(previewController, animated: false)
        presentViewController(previewNavigationController, animated:true, completion: nil)
    }
}



//MARK: - QLPreviewControllerDataSource
extension DemoController : QLPreviewControllerDataSource {
    
    func numberOfPreviewItemsInPreviewController(controller: QLPreviewController) -> Int {
        return itemsArray.count
    }
    
    func previewController(controller: QLPreviewController, previewItemAtIndex index: Int) -> QLPreviewItem {
        
        guard let filePath = NSBundle.mainBundle().pathForResource(itemsArray[index], ofType:"jpg") else {
            return NSURL()
        }
        
        let url = NSURL.fileURLWithPath(filePath)
        return url
    }
}