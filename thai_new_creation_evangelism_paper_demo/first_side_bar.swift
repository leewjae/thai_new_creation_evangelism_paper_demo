//
//  Sidebar.swift
//  new_creation_evangelism_paper
//
//  Created by 이원재 on 9/24/20.
//

import SwiftUI

struct first_side_bar: View {
    // side_bar_items array is relatetd to section attribute in the page struct
    // section = 1 represents that it is 1과
    // section = 0 represents it is neither.
    @EnvironmentObject var env_object: Env_object
    @State private var is_expanded: [Bool] = [false, false, false, false]

//    init() {
//        UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
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
                            .font(.system(size: 20))
                    }
                }
                
                DisclosureGroup(isExpanded: $is_expanded[0]) {
                    ForEach(one, id: \.id) { page in
                        side_row(page: page)
                    }
                } label: {
                    Text("บทที่ 1: ข่าวประเสริฐ คือ อะไร" + index_spacing)
                        .font(.headline)
                        .contentShape(Rectangle())
                        .onTapGesture {
                        withAnimation {
                            self.is_expanded[0].toggle()
                            }
                        }
                }
                
                DisclosureGroup(isExpanded: $is_expanded[1]) {
                    ForEach(two, id: \.id) { page in
                        side_row(page: page)
                    }
                } label: {
                    Text("บทที่ 2: คริสเตียนเป็นใคร" + index_spacing)
                        .font(.headline)
                        .contentShape(Rectangle())
                        .onTapGesture {
                        withAnimation {
                            self.is_expanded[1].toggle()
                            }
                        }
                }
                
                DisclosureGroup(isExpanded: $is_expanded[2]) {
                    ForEach(three, id: \.id) { page in
                        side_row(page: page)
                    }
                } label: {
                    Text("บทที่ 3: คริสเตียนใช้ชีวิตอย่างไง" + index_spacing)
                        .font(.headline)
                        .contentShape(Rectangle())
                        .onTapGesture {
                        withAnimation {
                            self.is_expanded[2].toggle()
                            }
                        }
                }
                               
                DisclosureGroup(isExpanded: $is_expanded[3]) {
                    ForEach(five, id: \.id) { page in
                        side_row(page: page)
                    }
                } label: {
                    Text(("บทเสริม : คำอธิษฐานของเปาโล") + index_spacing)
                        .font(.headline)
                        .contentShape(Rectangle())
                        .onTapGesture {
                        withAnimation {
                            self.is_expanded[3].toggle()
                            }
                        }
                }

                Group {
                    HStack {
                        Image("afc3")
                            .resizable()
                            .cornerRadius(10.0)
                            .frame(width: 35, height: 35)
                        Link(destination: URL(string: "http://athai.tv/")!) {
                            Text("หน้าเว็บ")
                                .bold()
                            //웹페이지
                        }
                    }
                    
                    HStack {
                        Image("afc3")
                            .resizable()
                            .cornerRadius(10.0)
                            .frame(width: 35, height: 35)
                        Link(destination: URL(string: "https://www.facebook.com/CeOsan/")!) {
                            Text("เฟสบุ๊ค")
                                .bold()
                        }
                    }
                    
                    HStack {
                        Image("afc3")
                            .resizable()
                            .cornerRadius(10.0)
                            .frame(width: 35, height: 35)
                        Link(destination: URL(string: "https://www.instagram.com/afc_osan/?fbclid=IwAR1eSq-XJveJzcrzl8fexR0m6HZ58vQkNloQf4zU4SskqzFGhhCbhrnRWfo")!) {
                            Text("อินสตาแกรม")
                                .bold()
                        }
                    }
                    
                    HStack {
                        Image("afc3")
                            .resizable()
                            .cornerRadius(10.0)
                            .frame(width: 35, height: 35)
                        Link(destination: URL(string: "https://www.youtube.com/c/ChristEmbassyThai?fbclid=IwAR1NVa7Ddb7JveJh0S3X0LZkLGR89VqK9SIFZqXXdJrGjnglHVJ-cO2Yv-k")!) {
                            Text("YouTube")
                                .bold()
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
    }
}

struct first_side_bar_Previews: PreviewProvider {
    static var previews: some View {
        first_side_bar()
            .previewDevice("iPhone 8")
    }
}
