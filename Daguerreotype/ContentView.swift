//
//  ContentView.swift
//  Daguerreotype
//
//  Created by 김인환 on 2023/05/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoading: Bool = true
    
    var body: some View {
        ZStack {
            splashScreenView
                .foregroundColor(.white)
        }.onAppear {
            for family: String in UIFont.familyNames {
                            print(family)
                            for names : String in UIFont.fontNames(forFamilyName: family){
                                print("=== \(names)")
                            }
                        }
        }
    }
}

extension ContentView {
    var splashScreenView: some View {
        ZStack(alignment: .center) {
            LinearGradient(colors: [Color(.white), Color(.black)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
