//
//  CardView.swift
//  To-Do-List
//
//  Created by Arjun Bhalodia on 8/10/21.
//

import SwiftUI

struct CardView: View {
    var title: String
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(8)
            VStack(){
                HStack{
                    Image(systemName: "leaf.fill")
                        .resizable()
                        .foregroundColor(Color(.systemGreen))
                        .cornerRadius(round(3.0))
                        .padding()
                        .frame(minWidth: 50.0, maxWidth: 60.0, minHeight: 50.0, maxHeight: 60.0)
                    Spacer()
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("Environment")
                        .font(Font.headline.weight(.bold))
                    Text("3 Tasks")
                        .font(Font.system(size: 18).italic())
                }
                .padding()
            }
        }
        .frame(width: 150, height: 200)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "One")
    }
}
