//
//  CardView.swift
//  Hikee
//
//  Created by Douglas Matheus da Silva on 16/06/24.
//

import SwiftUI

struct CardView: View {
  var body: some View {
    
    ZStack {
      CustomBackgroundView()
      
      VStack {
        VStack(alignment: .leading) {
          HStack {
            Text("Hiking")
              .fontWeight(.black)
              .font(.system(size: 52))
              .foregroundStyle(
                LinearGradient(
                  colors: [
                    .customGrayLight,
                    .customGrayMedium],
                  startPoint: .top,
                  endPoint: .bottom)
            )
            
            Spacer()
            
            Button {
              print("the button was pressed")
            }label: {
              CustomButtonView()
            }
            
          }
          
          Text("Fun and enjoyable outdoor activity for friends and families.")
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            .italic()
            .foregroundColor(.customGrayMedium)
        }
        .padding(.horizontal,30)
        
        
        ZStack {
          Circle()
            .fill(
              LinearGradient(
                colors:[
                  Color("ColorIndigoMedium"),
                  Color("ColorSalmonLight")
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
              )
            )
            .frame(width: 256, height: 256)
          Image("image-1")
            .resizable()
            .scaledToFit()
        }
        
      }
    }
    .frame(width: 320, height: 570)
  }
}

#Preview {
  CardView()
}
