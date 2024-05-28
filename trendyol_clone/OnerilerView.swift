import SwiftUI

struct Urun: Identifiable, Hashable {
    var id = UUID()
    var urunAdi: String
    var urunFiyati: String
    var urunresmi: String
    var teslimat: String
}

struct OnerilerView: View {
    
    var urunler: [Urun] = [
        Urun(urunAdi: "Apple Airpods Max Pembe", urunFiyati: "25999", urunresmi: "urun1", teslimat: "kuponlu ürün"),
        Urun(urunAdi: "Apple Magic mouse Siyah", urunFiyati: "3699", urunresmi: "urun2", teslimat: "Hızlı teslimat"),
        Urun(urunAdi: "Apple Airpods Max Pembe", urunFiyati: "25999", urunresmi: "urun3", teslimat: "kuponlu ürün"),
        Urun(urunAdi: "İphone 15 Pro Max ", urunFiyati: "78299", urunresmi: "urun4", teslimat: "Kuponlu Ürün"),
        Urun(urunAdi: "Apple Macbook Pro", urunFiyati: "42261", urunresmi: "urun5", teslimat: "Hızlı teslimat")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Sana Özel Ürünler")
                    .font(.system(size: 18))
                    .bold()
                Spacer()
                Text("Tüm ürünler")
                    .font(.system(size: 14))
                    .foregroundColor(.orange)
                    .bold()
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) { 
                                  ForEach(urunler, id: \.self) { urun in
                                      KartTasarim(urun: urun)
                                  }
                              }
                              .padding([.horizontal, .bottom]) // Kartların dış kenarlarına padding ekle
                          }
                      }
                  }
              }


struct KartTasarim: View {
    var urun: Urun
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
            
            VStack {
                Image(urun.urunresmi)
                    .resizable()
                    .frame(width: 130, height: 200)
                    .overlay(
                        Image(systemName: "heart")
                            .bold()
                            .foregroundColor(.gray)
                            .padding()
                            .offset(x: 50, y: -85)
                    )
                
                Text(urun.teslimat)
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .padding(.horizontal, 33)
                    .frame(maxWidth: .infinity)
                    .background(urun.teslimat == "kuponlu ürün" ? Color.green : Color.pink.opacity(0.8))
                
                Text(urun.urunAdi)
                    .font(.system(size: 10))
                    .lineLimit(2)
                    .bold()
                    .foregroundColor(.black)
                
                Text("\(urun.urunFiyati) tl")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.horizontal)
            .cornerRadius(20)
        }
        .frame(width: 150, height: 260) // Kartın boyutu
    }
}

struct OnerilerView_Previews: PreviewProvider {
    static var previews: some View {
        OnerilerView()
    }
}
