//
//----------------------------------------------
// Original project: Liquid Glass Controls and Views
// by  Stewart Lynch on 2025-07-27
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct ButtonsView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Pre Liquid Glass") {
                    LabeledContent("None") {

                    }
                    LabeledContent("Plain") {

                    }
                    LabeledContent("Bordered") {

                    }
                    LabeledContent("Boarded Prominent") {
                        
                    }
                }
                Section("Liquid Glass") {
                    LabeledContent("Glass") {
                        
                    }
                    LabeledContent("Glass Prominent") {
                        
                    }
                }
            }
            .navigationTitle("Buttons")
        }
    }
}

#Preview {
    ButtonsView()
}
