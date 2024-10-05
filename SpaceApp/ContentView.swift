//
//  ContentView.swift
//  SpaceApp
//
//  Created by athoub khalid on 01/04/1446 AH.
//
import SwiftUI

struct ContentView: View {
    @State private var isMenuVisible = false
    @State private var areIconsVisible = false

    var body: some View {
        ZStack {
            Image("SkyMapImages")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isMenuVisible.toggle()
                        }
                    }) {
                        VStack(spacing: 4) {
                            Rectangle()
                                .frame(width: 30, height: 3)
                                .foregroundColor(.white)
                            Rectangle()
                                .frame(width: 30, height: 3)
                                .foregroundColor(.white)
                            Rectangle()
                                .frame(width: 30, height: 3)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                }
                .padding(.top, 40)
                .padding(.trailing, 20)
                Spacer()
            }

            // Menu Box 1
            if isMenuVisible {
                VStack(spacing: 0) {
                    Button(action: {
                        // Action for Option 1
                    }) {
                        Text("خريطة السماء")
                            .font(.custom("TEWarshTharwatEmara.ttf", size: 20))
                            .foregroundColor(Color.white)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)

                    Divider()
                        .background(Color.white)
                        .padding(.horizontal, 10)

                    Button(action: {
                        // Action for Option 2
                    }) {
                        Text("تاريخ السماء العربي")
                            .font(.custom("TEWarshTharwatEmara.ttf", size: 20))
                            .foregroundColor(Color.white)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)

                    Divider()
                        .background(Color.white)
                        .padding(.horizontal, 10)

                    Button(action: {
                        // Action for Option 3
                    }) {
                        Text("خريطة التلوث الضوئي")
                            .font(.custom("TEWarshTharwatEmara.ttf", size: 20))
                            .foregroundColor(Color.white)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                }
                .frame(width: 200)
                .padding(10)
                .background(Color("darkblue").opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 10)
                .position(x: UIScreen.main.bounds.width - 110, y: 175)
                .transition(.scale)
            }

            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        withAnimation {
                            areIconsVisible.toggle()
                        }
                    }) {
                        Image("Icon1")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .padding()
                    }
                    .padding(.leading, 20)

                    if areIconsVisible {
                        HStack(spacing: 20) {
                            Button(action: {
                                // Action for Icon 2
                            }) {
                                Image("Icon2")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            }
                            Button(action: {
                                // Action for Icon 3
                            }) {
                                Image("Icon3")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            }
                            Button(action: {
                                // Action for Icon 4
                            }) {
                                Image("Icon4")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            }
                            Button(action: {
                                // Action for Icon 5
                            }) {
                                Image("Icon5")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            }
                        }
                    }
                }
                .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading) // Ensure it stays at the bottom left
        }
    }
}

#Preview {
    ContentView()
}
