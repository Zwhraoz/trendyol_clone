//
//  HeaderView.swift
//  trendyol_clone
//
//  Created by zehra özer on 28.05.2024.
//

import SwiftUI

struct HeaderView: View {
    var resimler = ["1","2","3","4","5","6","7","8","9","10"]
    var body: some View {
        ScrollView (.horizontal , showsIndicators: false)  {
            HStack {
                ForEach (0..<resimler.count , id:\.self) {i in
                    Image(resimler[i])
                        .resizable()
                        .padding(.horizontal , 5)
                        .frame(width: 390 , height: 110)
                        .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    HeaderView()
}
