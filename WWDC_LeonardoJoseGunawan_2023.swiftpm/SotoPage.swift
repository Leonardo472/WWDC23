//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorSoto {
    static let rColor = Color("RectangleColor")
}

struct SotoPage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Soto")
                        .font(.system(size: 40, weight: .semibold))
                    Image("SotoImage")
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
                                            Image("Ginger")
                                            Text("Ginger")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("BoiledEgg")
                                            Text("Boiled Egg")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Lemongrass")
                                            Text("Lemongrass")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Jakarta )")
                                    Image("SotoLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Soto is a traditional Indonesian soup made with chicken or beef, vegetables and spices. Add flavors such as ginger and lemongrass to a clear soup made by simmering meat and bones. Spices such as coriander, cumin, and turmeric are added to create a fragrant and slightly spicy taste. \n\n Meat is boiled or boiled until tender, then minced or sliced ​​thinly. Other common ingredients are vermicelli, hard-boiled eggs, bean sprouts, and potatoes. Soto is often served with condiments such as chilies, fried shallots, and fresh herbs. \n\n Soto is a versatile dish that can be adjusted to suit different tastes and preferences. A vegetarian version can be made with vegetable broth and tofu or tempeh.Regional variations of soto exist throughout Indonesia, with different regions using different spices and ingredients to give their own flavor to his profile.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -65)
                            }
                        }
                    }
                    .background(RectangleColorSoto.rColor)
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

struct SotoPage_Previews: PreviewProvider {
    static var previews: some View {
        SotoPage()
    }
}
