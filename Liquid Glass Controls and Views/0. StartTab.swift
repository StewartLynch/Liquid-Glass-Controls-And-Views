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

struct StartTab: View {
    var body: some View {
        TabView {
            Tab("Buttons", systemImage: "1.circle") {
                ButtonsView()
            }
            Tab("Effects", systemImage: "2.circle") {
                GlassEffectsView()
            }
            Tab("Namespace", systemImage: "3.circle") {
                GlassEffectNameSpaceView()
            }
            Tab("Transition", systemImage: "4.circle") {
                GlassEffectTransitionView()
            }
        }
    }
}

#Preview {
    StartTab()
}
