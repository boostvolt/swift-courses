//
//  CourseExtension.swift
//  Courses
//
//  Created by Jan Kott on 13.03.21.
//

import SwiftUI

struct CourseExtension : Identifiable {
    
    var id = UUID().uuidString
    var name : String
    var numCourse : Int
    var asset : String
}

var courses = [
    CourseExtension(name: "Coding", numCourse: 12, asset: "coding"),
    CourseExtension(name: "Trading", numCourse: 4, asset: "trading"),
    CourseExtension(name: "Cooking", numCourse: 9, asset: "cooking"),
    CourseExtension(name: "Marketing", numCourse: 7, asset: "marketing"),
    CourseExtension(name: "UI / UX", numCourse: 6, asset: "ux"),
    CourseExtension(name: "Planning", numCourse: 3, asset: "digital")]
