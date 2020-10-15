//
//  Sidebar.swift
//  new_creation_evangelism_paper
//
//  Created by 이원재 on 9/24/20.
//

import SwiftUI

struct side_bar: View {
    // side_bar_items array is relatetd to section attribute in the page struct
    // section = 1 represents that it is 1과
    // section = 0 represents it is neither.
    @EnvironmentObject var env_object: Env_object
    
//    init() {
//        UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//
//    }
    
    var body: some View {

        Group {

            List {
                Button(action: {
                    env_object.index = 50 // index number of the page
                    env_object.show_side_bar.toggle()
                    env_object.changed.toggle()
                    env_object.is_first_launch = false
                } ) {
                    HStack {
                        Image("icon")
                            .resizable()
                            .cornerRadius(10.0)
                            .frame(width: 45, height: 45)
                        Text("คนที่ถูกสร้างใหม่")
                            .bold()
                            .font(.system(size: 25))
                    }
                }
                .buttonStyle(PlainButtonStyle())
                
                Section(header : Text("บทที่ 1: ข่าวประเสริฐ คือ อะไร"), content: {
                    ForEach(one, id: \.id) { page in
                        side_row(page: page)
                    }
                })
                
                Section(header : Text("บทที่ 2: คริสเตียนเป็นใคร"), content: {
                    ForEach(two, id: \.id) { page in
                        side_row(page: page)
                    }
                })
                
                Section (header : Text("บทที่ 3: คริสเตียนใช้ชีวิตอย่างไง"), content: {
                    ForEach(three, id: \.id) { page in
                        side_row(page: page)
                    }
                })
                
                Section(header : Text("บทเสริม : คำอธิษฐานของเปาโล"), content: {
                    ForEach(five, id: \.id) { page in
                        side_row(page: page)
                    }
                })
            }
        }
        .edgesIgnoringSafeArea(.all)
//        .listStyle(InsetGroupedListStyle())
        .statusBar(hidden: true)
    }
}

struct side_bar_Previews: PreviewProvider {
    static var previews: some View {
        side_bar()
            .previewDevice("iPhone 8")
    }
}
