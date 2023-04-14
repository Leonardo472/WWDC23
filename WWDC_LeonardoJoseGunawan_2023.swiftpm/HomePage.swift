//
//  HomePage.swift
//  WWDC_LeonardoJoseGunawan_2023
//
//  Created by Leonardo Jose Gunawan on 08/04/23.
//

import SwiftUI

struct HomePage: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("HomeBackground")
                    .ignoresSafeArea(.all)
                VStack {
                    HStack {
                        VStack {
                            NavigationLink(destination: RendangPage()){
                                Image("RendangHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            }
                            NavigationLink(destination: MartabakPage()){
                                Image("MartabakHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            }
                            NavigationLink(destination: NasiGorengPage()){
                                Image("NasiGorengHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                            }
                        }
                        .offset(x: -78, y: 54)
                        .rotationEffect(.degrees(-12))
                        VStack {
                            NavigationLink(destination: PempekPage()){
                                Image("PempekHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            }
                            NavigationLink(destination: SatePage()){
                                Image("SateHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            }
                            NavigationLink(destination: SotoPage()){
                                Image("SotoHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                            }
                        }
                        .offset(y: 1)
                        VStack {
                            NavigationLink(destination: NasiPadangPage()){
                                Image("NasiPadangHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            }
                            NavigationLink(destination: BaksoPage()){
                                Image("BaksoHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            }
                            NavigationLink(destination: IndomiePage()){
                                Image("IndomieHome")
                                    .overlay(
                                        Circle().stroke(.white).scaleEffect(animationAmount).opacity(2 - animationAmount).animation(.easeIn(duration: 0.7).repeatForever(autoreverses: false), value: animationAmount)
                                    )
                                    .onAppear{
                                        animationAmount = 2
                                    }
                            }
                        }
                        .offset(x: 78, y: 54)
                        .rotationEffect(.degrees(12))
                    }
                    Text("Tap on the Image")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .opacity(0.5)
                        .padding()
                        .blinking(duration: 0.75)
                        .offset(y: 180)
                }
            }
        }
        .ignoresSafeArea(.all)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
