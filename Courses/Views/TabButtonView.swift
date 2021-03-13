//
//  TabButtonView.swift
//  Courses
//
//  Created by Jan Kott on 13.03.21.
//

import SwiftUI

var tabs = ["house.fill","envelope.fill","folder.fill","gearshape.fill"]

struct TabButtonView : View {
    
    var image : String
    @Binding var selectedTab : String
    
    var body: some View{
        Button(action: {selectedTab = image}) { 
            Image(systemName: image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color("Indigo") : Color.black.opacity(0.4))
                .padding()
        }
    }
}
