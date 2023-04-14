//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorNasiGoreng {
    static let rColor = Color("RectangleColor")
}

struct NasiGorengPage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Nasi Goreng / Fried Rice")
                        .font(.system(size: 40, weight: .semibold))
                    Image("NasiGorengImage")
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
                                            Image("CookedRice")
                                            Text("Cooked Rice")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Oil")
                                            Text("Oil")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("SoySauce")
                                            Text("Soy Sauce")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Eggs")
                                            Text("Eggs")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Jakarta )")
                                    Image("NasiGorengLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Nasi Goreng is a popular Indonesian fried rice dish that is enjoyed throughout the country. The exact origin of Nasi Goreng is not known, but it is believed to have originated in the Indonesian capital of Jakarta. \n\n This dish is usually prepared by frying cooked rice in a wok or frying pan with a little oil, along with diced onions, garlic, chili peppers, and other vegetables such as carrots, peas, and peppers. will be It may also contain proteins such as chicken, shrimp or tofu, which are often cooked separately and added to the dish at the end. \n\n A combination of sweet soy sauce (kecap manis), soy sauce and oyster sauce is usually added to the rice along with spices such as salt, pepper and shrimp paste to give the dish a unique flavor. The dish is often served with chopped green onions, sliced ​​cucumbers and a fried egg. \n\n Nasi Goreng is a versatile dish that can be adjusted to suit individual tastes and dietary restrictions. It is commonly enjoyed as breakfast, lunch, or dinner, and is a staple in many parts of Indonesia and other Southeast Asian countries.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -30)
                            }
                        }
                    }
                    .background(RectangleColorNasiGoreng.rColor)
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

struct NasiGorengPage_Previews: PreviewProvider {
    static var previews: some View {
        NasiGorengPage()
    }
}
