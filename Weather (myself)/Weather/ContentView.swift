//
//  ContentView.swift
//  Weather
//
//  Created by Park Hyean Sue on 2022/07/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA").font(.system(size: 32,weight: .medium,design: .default)).foregroundColor(.white).padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill").renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180).foregroundColor(Color.white)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                                
                VStack {
                    HStack {
                        Text("TUE").foregroundColor(.white)
                        Spacer()
                        Text("WED").foregroundColor(.white)
                        Spacer()
                        Text("THU").foregroundColor(.white)
                        Spacer()
                        Text("FRI").foregroundColor(.white)
                        Spacer()
                        Text("SAT").foregroundColor(.white)
                    }.font(.system(size: 30)).padding()
                }
                VStack {
                    HStack {
                        Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                        Image(systemName: "sun.max.fill")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                                .padding()
                        Image(systemName: "wind").renderingMode(.original)
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                        Image(systemName: "sunset.fill").renderingMode(.original)
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                                .padding()
                        Image(systemName: "moon.zzz.fill").renderingMode(.original)
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                    }
                    VStack {
                        HStack {
                            Text("74°")
                            Spacer()
                            Text("70°")
                            Spacer()
                            Text("66°")
                            Spacer()
                            Text("60°")
                            Spacer()
                            Text("55°")
                            
                        }.foregroundColor(.white)
                            .font(.system(size: 25))
                            .padding(.trailing)
                            .padding(.leading)
                    
                    }
                    Spacer()
                    
                    Button {
                        print("Tapped")
                    } label: {
                        Text("Change Day Time")
                            .frame(width: 280, height: 50)
                            .background(Color.white)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .cornerRadius(10)
                    }
                    Spacer()
                    
                }
            }
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
    }
}

struct MainWeatherStatusView: View {

    var body: some View {
        
        VStack(spacing: 8) {
            Image(systemName: "cloud.sun.fill").renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180).foregroundColor(Color.white)
            
            Text("76°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
