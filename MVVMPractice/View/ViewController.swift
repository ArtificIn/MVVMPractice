//
//  ViewController.swift
//  MVVMPractice
//
//  Created by 성다연 on 2020/04/20.
//  Copyright © 2020 성다연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label : UILabel!
    @IBAction func button(_ sender : UIButton){
        viewModel?.usetBtnInteraction()
        print("click")
    }
    
    var viewModel : ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
}

extension ViewController {
    func bindViewModel() {
        if let viewModel = viewModel {
            viewModel.text.bind({ (hi) in
                DispatchQueue.main.async {
                    self.label.text = hi
                }
            })
        }
    }
}
