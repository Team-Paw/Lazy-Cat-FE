//
//  ContentView.swift
//  LazyCat
//
//  Created by 김민지 on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .trailing) {
                    MainView()
                        .frame(width: geometry.size.width,
                               height: geometry.size.height)
                        .offset(x: self.showMenu ? -geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        HamburgerMenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .trailing))
                    }
                }
            }
            .navigationBarTitle("Side menu", displayMode: .inline)
            .navigationBarItems(trailing: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
            ))
        }
    }
}
 
struct MainView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Main Content")
                .multilineTextAlignment(.center)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
