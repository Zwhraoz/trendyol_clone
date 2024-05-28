//
//  ContentView.swift
//  trendyol_clone
//
//  Created by zehra özer on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        ZStack {
            ScrollView {
                VStack {
                   
                    SearchBoxView()
                    KategoriView()
                    HeaderView()
                    Hizmetler()
                    OnerilerView()
                    Spacer()
                    MyTabView()
                } .padding(.top ,50)
            }
        }.background(Color.gray.opacity(0.1))
            .ignoresSafeArea(.all)
    }
}


#Preview {
    ContentView()
}
