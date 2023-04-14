//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorPempek {
    static let rColor = Color("RectangleColor")
}

struct PempekPage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Pempek")
                        .font(.system(size: 40, weight: .semibold))
                    Image("PempekImage")
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
                                            Image("Fish")
                                            Text("Fish")
                                                .font(.system(size: 20))
                                        }
                                        Spacer()
                                        VStack {
                                            Image("Water")
                                            Text("Water")
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
                                            Image("TapiocaStarch")
                                            Text("Tapioca Starch")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Palembang )")
                                    Image("PempekLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Pempek is a popular Indonesian dish that originated in Palembang, South Sumatra. A type of satsuma-age made from a mixture of fish paste, tapioca starch and spices, usually served with a spicy, vinegar-based sauce called cuka (a dipping sauce made from vinegar, chilies, garlic and sugar). \n\n The fish used to make pempek is usually a type of mackerel or other white-fleshed fish that is boned and made into a paste with garlic and salt. The fish paste is then mixed with tapioca starch and water to a dough-like consistency and boiled in water until it floats to the surface. \n\n There are many different types of pempek, each with their own unique shape and filling. For example, Pempek Kapal Selam (Submarine Pempek) is filled with boiled eggs, while Pempek Adang is a small spherical fish cake. Other variations include pempek rangel, which is an elongated fish cake, and pempek crit, which is made from fish skin. \n\n Pempek is a popular snack or street food in Indonesia and can be found at many traditional markets and street food stalls. It is also commonly served in Indonesian restaurants in Indonesia and abroad.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -20)
                            }
                        }
                    }
                    .background(RectangleColorPempek.rColor)
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

struct PempekPage_Previews: PreviewProvider {
    static var previews: some View {
        PempekPage()
    }
}
