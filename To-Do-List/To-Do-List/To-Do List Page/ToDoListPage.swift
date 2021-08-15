//
//  ToDoListPage.swift
//  To-Do-List
//
//  Created by Arjun Bhalodia on 8/10/21.
//

import SwiftUI

struct ToDoListPage: View {
    
    var items: [String]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Section{
                    VStack(alignment: .leading) {
                        Text("Quick Checklist")
                            .padding(.leading)
                            .font(Font.system(size:20, design: .rounded))
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(0..<items.count) {
                                    CardView(title: self.items[$0])
                                }
                            }
                            .padding()
                        }
                    }
                }
                .navigationBarTitle(Text("Home"))
                Section{
                    Text("Your Tasks")
                        .padding(.leading)
                        .font(Font.system(size:20, design: .rounded))
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(0..<items.count) {
                                CardView(title: self.items[$0])
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}
