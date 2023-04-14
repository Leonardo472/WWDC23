//
//  RendangPage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct RectangleColorMartabak {
    static let rColor = Color("RectangleColor")
}

struct MartabakPage: View {
    var body: some View {
        ZStack {
            Image("FoodBackground")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Martabak")
                        .font(.system(size: 40, weight: .semibold))
                    Image("MartabakImage")
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
                                            Image("Eggs")
                                            Text("Eggs")
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
                                            Image("Sugar")
                                            Text("Sugar")
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                    Text("Origin Location")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                    Text("( Bangka Belitung )")
                                    Image("MartabakLocation")
                                        .padding(EdgeInsets(top: 5, leading: 50, bottom: 40, trailing: 50))
                                }
                            }
                            else {
                                VStack {
                                    Text("About")
                                        .font(.system(size: 30, weight: .semibold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    Text("Martabak is a popular Indonesian street food made of thin puff pastry and filled with a variety of sweet or savory ingredients. Pastry dough is made of flour, water, and eggs that are mixed together to form a thin pancake-like dough. \n\n Sweet versions of martabak are typically filled with a mixture of chocolate, peanut butter, or cheese, while savory versions are typically filled with ground beef, onions, and eggs. Some variations may also include vegetables such as carrots and cabbage. \n\n To prepare martabak, first roll out a thin layer of puff pastry and cook on a griddle or pan. Then add the filling ingredients to one half of the dough and fold the other half over to wrap the filling. The martava is then cooked until the batter is crisp and golden. \n\n Martabk is commonly found in Indonesian street he markets and stalls and is usually served with chili sauce or tomato he ketchup for dipping. It is popular as a snack or breakfast in Indonesia and is liked by a wide range of age groups.")
                                }
                                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 20))
                                .offset(y: -30)
                            }
                        }
                    }
                    .background(RectangleColorMartabak.rColor)
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

struct MartabakPage_Previews: PreviewProvider {
    static var previews: some View {
        MartabakPage()
    }
}
