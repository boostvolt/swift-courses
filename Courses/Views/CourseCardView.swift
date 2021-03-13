//
//  CourseCardView.swift
//  Courses
//
//  Created by Jan Kott on 13.03.21.
//

import SwiftUI

struct CourseCardView : View {
    
    var course : CourseExtension
    
    var body: some View{
        VStack{
            VStack{
                Image(course.asset)
                    .resizable()
                    .frame(width: 170.0, height: 130.0)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top,10)
                    .padding(.leading,10)
                
                HStack{
                    VStack(alignment: .leading, spacing: 12) {
                        Text(course.name)
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("\(course.numCourse) Courses")
                    }
                    .foregroundColor(.black)
                    Spacer(minLength: 0)
                }
                .padding()
            }
            .background(Color.white)
            .cornerRadius(15)
            Spacer(minLength: 0)
        }
    }
}
