//
//  ViewModel.swift
//  MVVMPractice
//
//  Created by 성다연 on 2020/04/20.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

class ViewModel {
    var text = Dynamic("")
    
    func usetBtnInteraction(){
        text.value = "Hi"
        print("viewmodel call")
    }
}
