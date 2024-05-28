//
//  TabView.swift
//  trendyol_clone
//
//  Created by zehra özer on 28.05.2024.
//

import SwiftUI

struct MyTabView: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "house.fill")
                .foregroundColor(.orange) // Ev simgesi turuncu renkte
            Spacer()
            Image(systemName: "bag")
            Spacer()
            Image(systemName: "heart")
            Spacer()
            Image(systemName: "cart")
            Spacer()
            Image(systemName: "person")
            
            
        }.padding(.horizontal)
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.gray.opacity(0.1))
           
    }
}


#Preview {
    MyTabView()
}
