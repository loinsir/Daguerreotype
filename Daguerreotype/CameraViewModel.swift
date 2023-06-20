//
//  CameraViewModel.swift
//  Daguerreotype
//
//  Created by 김인환 on 2023/06/20.
//

import Combine

class CameraViewModel: ObservableObject {
    
    @Published var isFlashOn: Bool = false
    @Published var isSlientModeOn: Bool = false
    
    func switchFlash() {
        isFlashOn.toggle()
    }
    
    func switchSilent() {
        isSlientModeOn.toggle()
    }
    
    func capturePhoto() {
        
    }
}

