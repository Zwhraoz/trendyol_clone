//
//  KategoriView.swift
//  trendyol_clone
//
//  Created by zehra özer on 28.05.2024.
//

import SwiftUI

struct KategoriView: View {
    
    var kategoriler = ["Kadın", "Erkek", "Elektronik", "Moda", "Anne & Çocuk", "Süpermarket", "Saat & Aksesuar", "Kozmetik", "Ev & Yaşam", "Ayakkabı & Çanta"]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 10) {
                HStack(spacing: 4) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 15, height: 15)
                    
                    Text("Kategoriler")
                        .font(.headline)
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                        .background(Color.white.cornerRadius(10))
                )
                Divider()
                    .frame(height: 29)
                    .background(Color.gray)
                
                ForEach(kategoriler, id: \.self) { kategori in
                   
                    Text(kategori)
                        .foregroundColor(kategori == "Kadın" ? .white : .black)
                      
                        .padding(.vertical, 5)
                        .padding(.horizontal, 7)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                                .background(kategori == "Kadın" ? Color.orange.cornerRadius(12) : Color.white.cornerRadius(10))

                            
                        )
                }
                
            }
            .padding(.horizontal)
            .padding(.vertical , 9 )
           
        }
    }
}

#Preview {
    KategoriView()
}
