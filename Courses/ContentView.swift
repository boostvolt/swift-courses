//
//  ContentView.swift
//  Courses
//
//  Created by Jan Kott on 13.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            CustomTabView()
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
