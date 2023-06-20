//
//  CameraView.swift
//  Daguerreotype
//
//  Created by 김인환 on 2023/06/20.
//

import SwiftUI

struct CameraView: View {
    
    @ObservedObject var viewModel: CameraViewModel
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button(action: {
                        viewModel.switchFlash()
                    }, label: {
                        Image(systemName: viewModel.isFlashOn ? "bolt.fill" : "bolt.slash.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    })
                    Spacer()
                    Button(action: {
                        viewModel.switchSilent()
                    }, label: {
                        Image(systemName: viewModel.isSlientModeOn ? "speaker.slash.fill" : "speaker.wave.3.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    })
                }
                .padding(.horizontal, 20)
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        viewModel.capturePhoto()
                    }, label: {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 80, height: 80)
                    })
                    .padding(.trailing, 20)
                }
            }
        }
    }
}



struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView(viewModel: CameraViewModel())
    }
}
