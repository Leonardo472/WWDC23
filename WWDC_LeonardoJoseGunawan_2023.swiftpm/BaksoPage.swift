//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorBakso {
    static let rColor = Color("RectangleColor")
}

struct BaksoPage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Bakso / Meatball")
                        .font(.system(size: 40, weight: .semibold))
                    Image("BaksoImage")
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
                                            Image("Flour")
                                            Text("Flour")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Noodle")
                                            Text("Noodle")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Water")
                                            Text("Water")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Surabaya )")
                                    Image("BaksoLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Bakso is a popular meatball soup in Indonesia and is widely sold in small restaurants and street vendors. It is a hearty and hearty dish in which ground beef, typically beef, is mixed with various spices and seasonings to form small meatballs. \n\n A rich and delicious soup made by cooking tsukune meatballs with vegetables and noodles in a flavorful broth. The soup is usually made by simmering meat bones and seasonings such as garlic, ginger and shallots for several hours, giving it a deep and complex flavor. \n\n Often served with rice vermicelli, tofu, and vegetables such as pak choy and cabbage, bakso is usually enjoyed with a variety of condiments such as chili sauce, soy sauce, and lime wedges. It is a popular home-cooked dish in Indonesia and is growing in popularity in other Southeast Asian countries.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -60)
                            }
                        }
                    }
                    .background(RectangleColorBakso.rColor)
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

struct BaksoPage_Previews: PreviewProvider {
    static var previews: some View {
        BaksoPage()
    }
}
