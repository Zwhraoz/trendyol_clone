//
//  Hizmetler.swift
//  trendyol_clone
//
//  Created by zehra özer on 28.05.2024.
//

import SwiftUI

struct HizmetS : Identifiable, Hashable {
    var id = UUID()
    var hizmetAdi: String
    var hizmetresmi: String
}

struct Hizmetler: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hizmetlerimizi Keşfet")
                    .bold()
                    .padding(.horizontal)
                Spacer()
            }
            Hizmet(urunler: [
                HizmetS(hizmetAdi: "Hızlı market", hizmetresmi: "k1"),
                HizmetS(hizmetAdi: "Spora başla", hizmetresmi: "k2"),
                HizmetS(hizmetAdi: "Finansal Çözümler", hizmetresmi: "k3"),
                HizmetS(hizmetAdi: "Yemek", hizmetresmi: "k4"),
                HizmetS(hizmetAdi: "Al sat kazan", hizmetresmi: "k5"),
            ])
        }
    }
}

struct Hizmet: View {
    var urunler: [HizmetS]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(urunler) { hizmet in
                    VStack {
                        Image(hizmet.hizmetresmi)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        
                        Text(hizmet.hizmetAdi)
                            .font(.caption)
                            .foregroundColor(.primary)
                    }
                    .padding(5)
                }
            }
        }
    }
}

#Preview {
    Hizmetler()
}
