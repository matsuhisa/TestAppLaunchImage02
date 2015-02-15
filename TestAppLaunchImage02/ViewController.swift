//  ViewController.swift
//  TestAppLaunchImage02

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LabelMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelMessage.text = Constants().MESSEAGE
        
        println(Constants().MESSEAGE)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

