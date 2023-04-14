//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorIndomie {
    static let rColor = Color("RectangleColor")
}

struct IndomiePage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Indomie")
                        .font(.system(size: 40, weight: .semibold))
                    Image("IndomieImage")
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
                                            Image("Flour")
                                            Text("Flour")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Salt")
                                            Text("Salt")
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
                                            Image("Onion")
                                            Text("Onion")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Jakarta )")
                                    Image("IndomieLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Indomie is an instant noodle brand that originated in Indonesia and has since gained popularity around the world. It's a quick and easy-to-prepare meal that can be prepared in just minutes, making it a convenient option for those who want a quick and easy meal on the go or at home. \n\n Indomie noodles come in a variety of flavors including chicken, beef, vegetable and spicy varieties. The noodles are made of wheat flour and are usually served with spice packets containing a mixture of spices, flavorings and oils. It is added to the finished noodles. Indomie pasta is often enjoyed as a light meal or as a quick and easy meal. They are widely available in grocery stores and popular among students and busy professionals.The brand has a cult following among foodies who experiment with different methods of preparing and serving pasta, such as: cheese, vegetables, or meats to create unique and delicious meals.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -65)
                            }
                        }
                    }
                    .background(RectangleColorIndomie.rColor)
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

struct IndomiePage_Previews: PreviewProvider {
    static var previews: some View {
        IndomiePage()
    }
}
