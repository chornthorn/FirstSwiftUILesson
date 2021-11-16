//
//  CourseList.swift
//  DesignCodeCourse
//
//  Created by One Sala Dev on 16/11/21.
//

import SwiftUI

struct CourseList: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(.insetGrouped)
        #else
        content
            .frame(minWidth: 800,minHeight: 600)
        #endif
    }
    
    var content: some View {
        List(0 ..< 20) { item in
            CourseRow()
        }
        .navigationTitle("Course")
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
