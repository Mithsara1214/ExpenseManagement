//
//  ContentView.swift
//  ExpenseManagement
//
//  Created by Asela Wadugedara on BE 2566-09-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Home()
                .navigationBarHidden(true)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
