//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorRendang {
    static let rColor = Color("RectangleColor")
}

struct RendangPage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Rendang")
                        .font(.system(size: 40, weight: .semibold))
                    Image("RendangImage")
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
                                            Image("Lemongrass")
                                            Text("Lemongrass")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Turmeric")
                                            Text("Turmeric")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Minangkabau )")
                                    Image("RendangLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Rendang is a traditional Indonesian food from the Minangkabau people of West Sumatra. It is a slow-cooked meat dish usually made with beef, although other meats such as chicken, lamb, and goat can be used. \n\n This dish is prepared by simmering the meat over low heat for several hours in a thick, fragrant mixture of spices, coconut milk, and other seasonings until the liquid is absorbed, the meat is tender, and the flavors of the spices are infused. Spices used in rendang vary from recipe to recipe, but typically include lemongrass, galangal, turmeric, ginger, garlic, shallots, and chilies. \n\n One of the key characteristics of rendang is its rich, zesty flavor that comes from the slow cooking process and blend of spices used. Often eaten with rice, this dish is popular not only in Indonesia, but also in other Southeast Asian countries such as Malaysia and Singapore. Rendang is also a popular dish among the Indonesian diaspora and can be found in many Indonesian restaurants around the world.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -60)
                            }
                        }
                    }
                    .background(RectangleColorRendang.rColor)
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

struct RendangPage_Previews: PreviewProvider {
    static var previews: some View {
        RendangPage()
    }
}
