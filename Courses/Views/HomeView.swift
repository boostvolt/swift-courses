//
//  HomeView.swift
//  Courses
//
//  Created by Jan Kott on 13.03.21.
//

import SwiftUI

struct HomeView : View {
    
    @State var txt = ""
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View{  
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 10) {
                    Text("Hello Jan")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Let's upgrade your skills!")
                }
                .foregroundColor(.black)
                Spacer(minLength: 0)
                Button(action: {}) {
                    Image("profile")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                }
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search Courses", text: $txt)
                    }
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    HStack{
                        Text("Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer(minLength: 0)
                        Button(action: {}) {
                            Text("View All")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.top,25)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20){
                        ForEach(courses){course in
                            NavigationLink(destination: DetailView(course: course)) {
                                CourseCardView(course: course)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
                .padding(.bottom,edge!.bottom + 70)
            }
        }
    }
}
