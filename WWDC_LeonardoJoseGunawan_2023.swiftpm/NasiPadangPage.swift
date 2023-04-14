//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorNasiPadang {
    static let rColor = Color("RectangleColor")
}

struct NasiPadangPage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Nasi Padang")
                        .font(.system(size: 40, weight: .semibold))
                    Image("NasiPadangImage")
                        .resizable()
                        .frame(width: 380, height: 280)
                }
                .padding(EdgeInsets(top: 80, leading: 0, bottom: -10, trailing: 0))
                VStack {
                    TabView {
                        ForEach(0..<2) { num in
                            if num == 0 {
                                VStack {
                                    Text("Ingredients")
                                        .font(.system(size: 30, weight: .semibold))
                                    HStack {
                                        VStack {
                                            Image("Meat")
                                            Text("Meat")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("CoconutMilk")
                                            Text("Coconut Milk")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("CookedRice")
                                            Text("Cooked Rice")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Tamarind")
                                            Text("Tamarind")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Minangkabau )")
                                    Image("NasiPadangLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Nasi Padang is a traditional Indonesian dish originating from Minangkabau, West Sumatra. This is usually a meal consisting of rice served with a variety of small plates of meat, fish, vegetables and spicy curries. \n\n Dishes served with Nasi Padang vary according to region and personal taste, but common dishes include rendang (spicy beef curry), gulai ayam (yellow curry chicken dish), sambal goreng (vegetables and Spicy stir-fried shrimp). Dishes are usually served in small plates or bowls, and guests can choose which dish to eat. \n\n Nasi Padang is known for its spicy and flavorful dishes made with a combination of herbs and spices such as lemongrass, ginger, turmeric, coriander and chili pepper. Dishes are often slow-cooked over low heat to develop rich and complex flavors. \n\n Nasi Padang is a popular dish throughout Indonesia and is often served in Padang-style restaurants and street food stalls. A filling and satisfying meal that offers a taste of Indonesia's rich and diverse culinary heritage.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -20)
                            }
                        }
                    }
                    .background(RectangleColorNasiPadang.rColor)
                    .tabViewStyle(PageTabViewStyle())
                    .padding(50)
                }
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(red: 201/255, green: 158/255, blue: 124/255), lineWidth: 8)
                .padding(50))
    }
}

struct NasiPadangPage_Previews: PreviewProvider {
    static var previews: some View {
        NasiPadangPage()
    }
}
