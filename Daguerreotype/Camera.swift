//
//  Camera.swift
//  Daguerreotype
//
//  Created by 김인환 on 2023/06/20.
//

import Foundation
import AVFoundation
import OSLog

class Camera {
    var session = AVCaptureSession()
    var videoDeviceInput: AVCaptureDeviceInput?
    let output = AVCapturePhotoOutput()
    
    func setupCamera() {
        if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
            do {
                videoDeviceInput = try AVCaptureDeviceInput(device: device)
            } catch {
                os_log(.error, log: .ui, "missing videoDeviceInput.")
            }
        }
    }
    
    func requestAndCheckPermissions() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { [weak self] authStatus in
                if authStatus {
                    DispatchQueue.main.async {
                        self?.setupCamera()
                    }
                }
            }
        case .restricted:
            os_log(.error, log: .ui, "Camera access restricted.")
        case .authorized:
            setupCamera()
        default:
            os_log(.error, log: .ui, "Camera access denied.")
        }
    }
    
}
