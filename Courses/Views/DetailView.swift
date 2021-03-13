//
//  DetailView.swift
//  Courses
//
//  Created by Jan Kott on 13.03.21.
//

import SwiftUI

struct DetailView : View {
    
    var course : CourseExtension
    
    var body: some View{
        
        VStack{
            Text(course.name)
                .font(.title2)
                .fontWeight(.bold)
        }
        .navigationTitle(course.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {}, label: {
            
            Image(systemName: "line.horizontal.3.decrease")
                .renderingMode(.template)
        }))
    }
}
