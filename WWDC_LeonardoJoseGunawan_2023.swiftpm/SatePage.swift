//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorSate {
    static let rColor = Color("RectangleColor")
}

struct SatePage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Sate / Satay")
                        .font(.system(size: 40, weight: .semibold))
                    Image("SateImage")
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
                                            Image("SoySauce")
                                            Text("Soy Sauce")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Garlic")
                                            Text("Garlic")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Ginger")
                                            Text("Ginger")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Solo )")
                                    Image("SateLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Satay, also known as satay, is a popular Southeast Asian dish of small pieces of marinated meat skewered and grilled over an open or charcoal fire. The meat used for satay varies, but common options include chicken, beef, pork, or lamb. Satay marinades often contain a blend of herbs and spices such as lemongrass, garlic, ginger, turmeric, coriander and cumin, along with liquids such as soy sauce and coconut milk to add flavor and moisture to the meat. \n\n One of the characteristics of satay is the cooking method in which the meat is skewered and grilled over an open flame or charcoal. This gives the meat a smoky, charred flavor, making it crispy on the outside and tender on the inside. When grilling, the skewers are often smeared with a marinade or a mixture of oils and spices to keep the meat juicy and flavorful. \n\n Satay is usually served with a dipping sauce that enhances the flavor of the meat. In Indonesia, satay is often served with a peanut sauce called sambal kachan, Satay is a popular street food and can be found in many night markets, stalls and restaurants in Southeast Asia. It is also commonly served at special occasions and gatherings such as weddings and festivals.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -5)
                            }
                        }
                    }
                    .background(RectangleColorSate.rColor)
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

struct SatePage_Previews: PreviewProvider {
    static var previews: some View {
        SatePage()
    }
}
