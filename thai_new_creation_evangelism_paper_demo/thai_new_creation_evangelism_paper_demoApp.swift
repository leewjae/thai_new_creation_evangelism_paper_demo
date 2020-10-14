//
//  thai_new_creation_evangelism_paper_demoApp.swift
//  thai_new_creation_evangelism_paper_demo
//
//  Created by 이원재 on 10/14/20.
//

import SwiftUI

@main
struct thai_new_creation_evangelism_paper_demoApp: App {
    var body: some Scene {
        WindowGroup {
            loading_view().environmentObject(Env_object())
        }
    }
}
