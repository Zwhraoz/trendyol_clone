//
//  SearchBoxView.swift
//  trendyol_clone
//
//  Created by zehra özer on 28.05.2024.
//

import SwiftUI

struct SearchBoxView: View {
    @State var arananEsya  = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Marka, ürün veya kategori ara", text: $arananEsya)
                .textFieldStyle(.roundedBorder)
            VStack {
                Image(systemName: "envelope")
                    .overlay(
                        ZStack {
                            Circle()
                                .foregroundColor(.red)
                                .frame(width: 16, height: 16)
                            Text("9")
                                .foregroundColor(.black)
                                .font(.system(size: 12))
                        }
                            .offset(x: 10, y: -10)
                    )
            }
            Image(systemName: "bell")
        }.padding(.horizontal)
            .padding(.vertical , 9 )
    }
}

#Preview {
    SearchBoxView()
}
