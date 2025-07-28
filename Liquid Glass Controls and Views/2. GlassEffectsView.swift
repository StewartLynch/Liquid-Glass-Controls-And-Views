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

struct GlassEffectsView: View {
    @State private var spacing = 0.0
    var body: some View {
        NavigationStack {
            Slider(value: $spacing, in: 0...80)
                .padding()
            GlassEffectContainer(spacing: spacing) {
                VStack {
                    Text("Hello World")
                        .font(.largeTitle)
                        .padding()
                        .glassEffect(.clear, in: .rect(cornerRadius: 10))
                    Image(systemName: "applelogo")
                        .font(.system(size: 36))
                        .frame(width: 80, height: 80)
                        .glassEffect(.clear)
                    Image(systemName: "applelogo")
                        .font(.system(size: 36))
                        .frame(width: 80, height: 80)
                        .glassEffect(.regular.interactive())
                        .onTapGesture {
                            // Do something
                        }
                    Button {
                        
                    } label: {
                        Image(systemName: "applelogo")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                    }
                    .buttonStyle(.glass)
                    Button {
                        
                    } label: {
                        Image(systemName: "applelogo")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                    }
                    .buttonStyle(.plain)
                    .glassEffect()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    ScrollView([.horizontal, .vertical]){
                        Image(.stream)
                    }
                }
            }
            .navigationTitle("Glass Effect")
        }
    }
}

#Preview {
    GlassEffectsView()
}
